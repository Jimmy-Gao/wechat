package com.backkey.util;

import com.backkey.service.WeChatService;
import org.apache.log4j.Logger;

import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.Collections;
import java.util.concurrent.ConcurrentHashMap;

public class SessionUtil {

   private static Logger log = Logger.getLogger(SessionUtil.class);
   private static ConcurrentHashMap<String, WeChatSession> sessions = new ConcurrentHashMap<String, WeChatSession>();

   private static int maximumSessions = 30;

   public static void setMaximumSessions(int max) {
      SessionUtil.maximumSessions = max;
   }

   private static void restrictMaxCapacity() {

      int toBeRemoved = sessions.size() - maximumSessions;
      if (toBeRemoved <= 0)
         return;

      ArrayList<WeChatSession> sessionlist = new ArrayList<WeChatSession>(sessions.values());
      Collections.sort(sessionlist);

      for (int i = 0; i < toBeRemoved; i++) {
         HttpSession hsession = sessionlist.get(i).getSession();
         log.debug("Start to release session:" + hsession.getCreationTime());
         releaseSession(hsession);
      }
   }

   private synchronized static WeChatSession getOrNewDispactherSession(HttpSession session) {
      if (session == null) {
         return null;
      }
      WeChatSession ts = sessions.get(session.getId());
      if (ts == null) {
         ts = new WeChatSession(session);
         sessions.put(session.getId(), ts);
         restrictMaxCapacity();
      }
      return ts;
   }

   private static <T> T getSessionObj(HttpSession session, Class<T> clazz) {
      WeChatSession ts = getOrNewDispactherSession(session);
      return ts == null ? null : ts.get(clazz);
   }

   public static void setSessionObj(HttpSession session, Object o) {
      WeChatSession ts = getOrNewDispactherSession(session);
      if (ts != null)
         ts.set(o);
   }

   public static void releaseSession(HttpSession session) {
      if (session == null) {
         return;
      }

      WeChatSession ts = sessions.remove(session.getId());
      if (ts != null) {
         ts.release();
      }
   }

   public static WeChatService getWeChatService(HttpSession session) {
      return getSessionObj(session, WeChatService.class);
   }

   public static void setUser(HttpSession session, String username) {
      WeChatSession ts = getOrNewDispactherSession(session);
      if (ts != null) {
         ts.setUser(username);
      }
   }

   public static String getUser(HttpSession session) {
      WeChatSession ts = getOrNewDispactherSession(session);
      return (ts == null) ? null : ts.getUser();
   }

}
