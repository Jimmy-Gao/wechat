package org.linuxkernel.wechat.handler;

import org.linuxkernel.wechat.bean.MessageBean;

public class HandlerFactory {

	public static MessageHandler createHandler(MessageBean message) {
		switch (message.getMsgType().toUpperCase()) {
		case "TEXT":
			return new TextMassagerHandler(message);
		case "VIDEO":
			return new VideoMassagerHandler(message);
		case "IMAGE":
			return new ImageMessageHandler(message);
		case "LINK":
			return new LinkMessageHandler(message);
		case "LOCATION":
			return new LocationMessageHandler(message);
		case "EVENT":
			return new EventMessageHandler(message);
		default:
			return new TextMassagerHandler(message);
		}
	}
}
