package org.linuxkernel.wechat.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class SystemController {
	private static final Logger logger = LoggerFactory.getLogger(SystemController.class);

	public synchronized static void updateCached() {
		logger.debug("Start to update cached report");
		System.out.println("update");
	}
}
