package org.linuxkernel.wechat.listener;

import javax.servlet.http.HttpSession;
import javax.servlet.http.HttpSessionEvent;
import javax.servlet.http.HttpSessionListener;

import org.apache.log4j.Logger;
import org.linuxkernel.wechat.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;

public class SessionListener implements HttpSessionListener {

	private static Logger log = Logger.getLogger(SessionListener.class);

	@Autowired(required = true)
	private UserService userService;

	public void sessionCreated(HttpSessionEvent se) {
		log.debug("Session created");
	}

	public void sessionDestroyed(HttpSessionEvent se) {
		HttpSession session = se.getSession();
		String ip = session.getAttribute("IP").toString();
		long time = session.getCreationTime();
		log.debug(ip + ":" + time + " Session Destroyed");
	}
}