package org.linuxkernel.wechat.controller;

import org.linuxkernel.wechat.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@Scope("prototype")
public class WebController extends BaseController {

	@Autowired(required = true)
	private UserService userSerivce;

	@RequestMapping(value = "/web", method = RequestMethod.GET)
	public String validate() {
		return "wechat";
	}
}
