package org.linuxkernel.wechat.controller;

import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpSession;

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
	@RequestMapping(value = "/web", method = RequestMethod.GET)
	public String welcome(Model model, HttpSession session) {
		if (null == session.getAttribute("IP") || "".equals(session.getAttribute("IP"))) {
			session.setAttribute("IP", getremoteIP());
		}
		System.out.println(session.getAttribute("IP"));

		Map<String, Cookie> cookies = getAllCookie();
		Set<Entry<String, Cookie>> set = cookies.entrySet();
		for (Entry<String, Cookie> entry : set) {
			System.out.println(entry.getKey() + "=" + entry.getValue().getDomain());
		}
		return "wechat";
	}
}
