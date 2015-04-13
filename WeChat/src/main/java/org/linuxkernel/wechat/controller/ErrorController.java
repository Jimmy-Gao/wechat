package org.linuxkernel.wechat.controller;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@Scope("prototype")
public class ErrorController extends BaseController {
   @RequestMapping(value = { "error_404" })
   public String error_404() {
      return "error_404";
   }
}
