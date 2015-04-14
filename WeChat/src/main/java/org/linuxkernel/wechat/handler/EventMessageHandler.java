package org.linuxkernel.wechat.handler;

import org.linuxkernel.wechat.bean.MessageBean;
import org.linuxkernel.wechat.bean.message.TextMessage;
import org.linuxkernel.wechat.util.ParseUtil;

public class EventMessageHandler extends MessageHandler {
	public EventMessageHandler(MessageBean message) {
		super(message);
	}

	public String response() {
		String content = "";
		switch (message.getEvent().toLowerCase()) {
		case "subscribe":
			content = "welcome to my house!";
		case "unsubscribe":
			content = "oop";
		default:
			content = "welcome to my house!";
		}
		System.out.println(message.toString());
		TextMessage textMessage = new TextMessage(message);
		textMessage.setContent(content);
		textMessage.setFuncFlag(0);
		String response = ParseUtil.messageToXml(textMessage);
		System.out.println(response);
		return response;
	}
}
