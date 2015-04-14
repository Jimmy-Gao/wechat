package org.linuxkernel.wechat.bean.message;

import java.util.Date;

import org.linuxkernel.wechat.bean.MessageBean;

public class Message {
	protected String ToUserName;
	protected String FromUserName;
	protected long CreateTime;
	protected String MsgType;
	protected int FuncFlag;

	public Message(MessageBean message) {
		this.FromUserName = message.getToUserName();
		this.ToUserName = message.getFromUserName();
		this.CreateTime = new Date().getTime();
	}

	public long getCreateTime() {
		return CreateTime;
	}

	public void setCreateTime(long createTime) {
		CreateTime = createTime;
	}

	public String getMsgType() {
		return MsgType;
	}

	public void setMsgType(String msgType) {
		MsgType = msgType;
	}

	public int getFuncFlag() {
		return FuncFlag;
	}

	public void setFuncFlag(int funcFlag) {
		FuncFlag = funcFlag;
	}
}
