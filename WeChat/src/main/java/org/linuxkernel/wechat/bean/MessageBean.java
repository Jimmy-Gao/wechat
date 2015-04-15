package org.linuxkernel.wechat.bean;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "req_message")
public class MessageBean implements Serializable {

	private static final long serialVersionUID = -4969366100355727257L;
	@Id
	@Column(name = "id")
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int id;
	@Column(name = "ToUserName")
	private String ToUserName = "";
	@Column(name = "FromUserName")
	private String FromUserName = "";
	@Column(name = "CreateTime")
	private String CreateTime = "";
	@Column(name = "MsgType")
	private String MsgType = "";
	@Column(name = "MsgId")
	private String MsgId = "";
	@Column(name = "Event")
	private String Event = "";
	@Column(name = "EventKey")
	private String EventKey = "";
	@Column(name = "Ticket")
	private String Ticket = "";
	@Column(name = "Latitude")
	private String Latitude = "";
	@Column(name = "Longitude")
	private String Longitude = "";
	@Column(name = "Precision")
	private String Precision = "";
	@Column(name = "PicUrl")
	private String PicUrl = "";
	@Column(name = "MediaId")
	private String MediaId = "";
	@Column(name = "Title")
	private String Title = "";
	@Column(name = "Description")
	private String Description = "";
	@Column(name = "Url")
	private String Url = "";
	@Column(name = "Location_X")
	private String Location_X = "";
	@Column(name = "Location_Y")
	private String Location_Y = "";
	@Column(name = "Scale")
	private String Scale = "";
	@Column(name = "Label")
	private String Label = "";
	@Column(name = "Content")
	private String Content = "";
	@Column(name = "Format")
	private String Format = "";
	@Column(name = "Recognition")
	private String Recognition = "";

	public String getToUserName() {
		return ToUserName;
	}

	public void setToUserName(String toUserName) {
		ToUserName = toUserName;
	}

	public String getFromUserName() {
		return FromUserName;
	}

	public void setFromUserName(String fromUserName) {
		FromUserName = fromUserName;
	}

	public String getCreateTime() {
		return CreateTime;
	}

	public void setCreateTime(String createTime) {
		CreateTime = createTime;
	}

	public String getMsgType() {
		return MsgType;
	}

	public void setMsgType(String msgType) {
		MsgType = msgType;
	}

	public String getMsgId() {
		return MsgId;
	}

	public void setMsgId(String msgId) {
		MsgId = msgId;
	}

	public String getEvent() {
		return Event;
	}

	public void setEvent(String event) {
		Event = event;
	}

	public String getEventKey() {
		return EventKey;
	}

	public void setEventKey(String eventKey) {
		EventKey = eventKey;
	}

	public String getTicket() {
		return Ticket;
	}

	public void setTicket(String ticket) {
		Ticket = ticket;
	}

	public String getLatitude() {
		return Latitude;
	}

	public void setLatitude(String latitude) {
		Latitude = latitude;
	}

	public String getLongitude() {
		return Longitude;
	}

	public void setLongitude(String longitude) {
		Longitude = longitude;
	}

	public String getPrecision() {
		return Precision;
	}

	public void setPrecision(String precision) {
		Precision = precision;
	}

	public String getPicUrl() {
		return PicUrl;
	}

	public void setPicUrl(String picUrl) {
		PicUrl = picUrl;
	}

	public String getMediaId() {
		return MediaId;
	}

	public void setMediaId(String mediaId) {
		MediaId = mediaId;
	}

	public String getTitle() {
		return Title;
	}

	public void setTitle(String title) {
		Title = title;
	}

	public String getDescription() {
		return Description;
	}

	public void setDescription(String description) {
		Description = description;
	}

	public String getUrl() {
		return Url;
	}

	public void setUrl(String url) {
		Url = url;
	}

	public String getLocation_X() {
		return Location_X;
	}

	public void setLocation_X(String location_X) {
		Location_X = location_X;
	}

	public String getLocation_Y() {
		return Location_Y;
	}

	public void setLocation_Y(String location_Y) {
		Location_Y = location_Y;
	}

	public String getScale() {
		return Scale;
	}

	public void setScale(String scale) {
		Scale = scale;
	}

	public String getLabel() {
		return Label;
	}

	public void setLabel(String label) {
		Label = label;
	}

	public String getContent() {
		return Content;
	}

	public void setContent(String content) {
		Content = content;
	}

	public String getFormat() {
		return Format;
	}

	public void setFormat(String format) {
		Format = format;
	}

	public String getRecognition() {
		return Recognition;
	}

	public void setRecognition(String recognition) {
		Recognition = recognition;
	}

	@Override
	public String toString() {
		return "XMLBean [ToUserName=" + ToUserName + ", FromUserName=" + FromUserName + ", CreateTime=" + CreateTime + ", MsgType=" + MsgType + ", MsgId=" + MsgId + ", Event=" + Event + ", EventKey="
				+ EventKey + ", Ticket=" + Ticket + ", Latitude=" + Latitude + ", Longitude=" + Longitude + ", Precision=" + Precision + ", PicUrl=" + PicUrl + ", MediaId=" + MediaId + ", Title="
				+ Title + ", Description=" + Description + ", Url=" + Url + ", Location_X=" + Location_X + ", Location_Y=" + Location_Y + ", Scale=" + Scale + ", Label=" + Label + ", Content="
				+ Content + ", Format=" + Format + ", Recognition=" + Recognition + "]";
	}

}
