package org.linuxkernel.wechat.bean.message;

import org.linuxkernel.wechat.bean.MessageBean;

public class TextMessage extends Message {
	public TextMessage(MessageBean message) {
		super(message);
		this.MsgType = "text";
	}

	private String Content;

	public String getContent() {
		return Content;
	}

	public void setContent(String content) {
		Content = content;
	}

	@Override
	public String toString() {
		return "TextMessage [Content=" + Content + ", ToUserName=" + ToUserName
				+ ", FromUserName=" + FromUserName + ", CreateTime="
				+ CreateTime + ", MsgType=" + MsgType + ", FuncFlag="
				+ FuncFlag + "]";
	}

}
