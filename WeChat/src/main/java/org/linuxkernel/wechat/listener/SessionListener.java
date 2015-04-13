package org.linuxkernel.wechat.listener;

import javax.servlet.http.HttpSessionEvent;
import javax.servlet.http.HttpSessionListener;

import org.apache.log4j.Logger;

public class SessionListener implements HttpSessionListener {

	private static Logger log = Logger.getLogger(SessionListener.class);
	public void sessionCreated(HttpSessionEvent se) {
		log.debug("Session created");
	}

	public void sessionDestroyed(HttpSessionEvent se) {
		log.debug("Session destroyed");
	}

}