package org.linuxkernel.wechat.handler;

import org.linuxkernel.wechat.bean.MessageBean;

public class MessageHandler implements Handler {

	protected MessageBean message;

	public MessageHandler(MessageBean message) {
		this.message = message;
	}

	public void processor() {

	}

	public String response() {
		return null;
	}
}
