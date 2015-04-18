package org.linuxkernel.wechat.handler;

import org.linuxkernel.wechat.bean.MessageBean;
import org.linuxkernel.wechat.service.MessageBeanService;
import org.linuxkernel.wechat.service.UserService;
import org.linuxkernel.wechat.service.WelcomeService;

public class MessageHandler implements Handler {

	protected MessageBean message;

	public MessageHandler(MessageBean message) {
		this.message = message;
	}

	public void processor() {

	}

	public String response(UserService userService,
			MessageBeanService messageService, WelcomeService welcomeService) {
		return null;
	}
}
