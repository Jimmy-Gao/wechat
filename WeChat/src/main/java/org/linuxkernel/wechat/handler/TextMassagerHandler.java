package org.linuxkernel.wechat.handler;

import org.linuxkernel.wechat.bean.MessageBean;
import org.linuxkernel.wechat.bean.message.TextMessage;
import org.linuxkernel.wechat.service.MessageBeanService;
import org.linuxkernel.wechat.service.UserService;
import org.linuxkernel.wechat.service.WelcomeService;
import org.linuxkernel.wechat.util.ParseUtil;

public class TextMassagerHandler extends MessageHandler {

	public TextMassagerHandler(MessageBean message) {
		super(message);
	}

	@Override
	public String response(UserService userService,
			MessageBeanService messageService, WelcomeService welcomeService) {
		messageService.addMessage(message);
		String response = "";
		switch (message.getContent().toLowerCase()) {
		case "?":
			response = _menu();
			break;
		case "0":
			response = _gameMenu();
			break;
		case "2048":
			response = _game2048();
			break;
		default:
			response = _menu();
			break;
		}

		return response;
	}

	private String _menu() {
		TextMessage textMessage = new TextMessage(message);
		String content = "您可以回复0获取游戏菜单<br/>" + "回复2获取幽默笑话菜单<br/>"
				+ "回复4获取推荐歌单菜单<br/>" + "回复8获取推荐电影菜单<br/>" + "回复16获取小编玉照<br/>";
		textMessage.setContent(content);
		textMessage.setFuncFlag(0);
		return ParseUtil.messageToXml(textMessage);
	}

	private String _gameMenu() {
		TextMessage textMessage = new TextMessage(message);
		String content = "您可以回复2048进入挑战2048游戏<br/>";
		textMessage.setContent(content);
		textMessage.setFuncFlag(0);
		return ParseUtil.messageToXml(textMessage);
	}

	private String _game2048() {
		TextMessage textMessage = new TextMessage(message);
		String content = "<a href='http://linuxkernel.org.cn/web/2048'>点击进入挑战2048游戏</a>";
		textMessage.setContent(content);
		textMessage.setFuncFlag(0);
		return ParseUtil.messageToXml(textMessage);
	}

}
