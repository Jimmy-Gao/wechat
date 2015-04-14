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
		switch (message.getEvent().toUpperCase()) {
		case "SUBSCRIBE":
			content = "welcome to my house!";
		case "UNSUBSCRIBE":
			content = "oop";
		default:
			content = "welcome to my house!";
		}
		TextMessage textMessage = new TextMessage(message);
		textMessage.setContent(content);
		textMessage.setFuncFlag(0);
		return ParseUtil.messageToXml(textMessage);
	}
}
