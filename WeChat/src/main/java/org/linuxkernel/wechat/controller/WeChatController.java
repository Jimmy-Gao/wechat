package org.linuxkernel.wechat.controller;

import java.io.IOException;
import java.io.InputStream;

import javax.servlet.http.HttpSession;

import org.linuxkernel.wechat.util.SignatureUtil;
import org.linuxkernel.wechat.util.WeChatUtil;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@Scope("prototype")
public class WeChatController extends BaseController {
   @RequestMapping(value = "/wechat", method = RequestMethod.GET)
   public void validate(Model model, HttpSession session) {
      String signature = this.getParameter("signature");
      String timestamp = this.getParameter("timestamp");
      String nonce = this.getParameter("nonce");
      String echostr = this.getParameter("echostr");
      if (null != signature && null != timestamp && null != nonce && null != echostr) {
         if (SignatureUtil.checkSignature(signature, timestamp, nonce)) {
            this.outputText(echostr);
            return;
         }
      } else {
         return;
      }
   }
   @RequestMapping(value = "/wechat", method = RequestMethod.POST)
   public void weChat(Model model, HttpSession session) {
      try (InputStream inputStream = this.getInputStream()) {
         System.out.println(WeChatUtil.parseStream2XMLBean(inputStream).toString());
      } catch (IOException e) {
         e.printStackTrace();
      }
   }
}
