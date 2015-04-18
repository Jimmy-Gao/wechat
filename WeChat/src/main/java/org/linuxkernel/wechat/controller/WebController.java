package org.linuxkernel.wechat.controller;

import javax.servlet.http.HttpSession;

import org.linuxkernel.wechat.service.MessageBeanService;
import org.linuxkernel.wechat.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@Scope("prototype")
public class WebController extends BaseController {

	@Autowired(required = true)
	private UserService userSerivce;
	@Autowired(required = true)
	private MessageBeanService messageBeanService;

	@RequestMapping(value = "/web", method = RequestMethod.GET)
	public String welcome(Model model, HttpSession session) {
		if (null == session.getAttribute("IP")
				|| "".equals(session.getAttribute("IP"))) {
			session.setAttribute("IP", getremoteIP());
		}
		return "wechat";
	}

	@RequestMapping(value = "/web/2048", method = RequestMethod.GET)
	public String game_2048() {
		return "game/2048/index";
	}

	@RequestMapping(value = "/web/about_me", method = RequestMethod.GET)
	public String about_me() {
		return "about_me";
	}

	@RequestMapping(value = "/web/contact_me", method = RequestMethod.GET)
	public String contact_me() {
		return "contact_me";
	}
}
