package com.backkey.controller;

import com.backkey.bean.MessageBean;
import com.backkey.handler.HandlerFactory;
import com.backkey.service.MessageBeanService;
import com.backkey.service.UserService;
import com.backkey.service.WelcomeService;
import com.backkey.util.SignatureUtil;
import com.backkey.util.WeChatUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import java.io.IOException;
import java.io.InputStream;

@Controller
@Scope("prototype")
public class WeChatController extends BaseController {

    @Autowired(required = true)
    private UserService userSerivce;

    @Autowired(required = true)
    private MessageBeanService messageBeanService;

    @Autowired(required = true)
    private WelcomeService welcomeService;

    @RequestMapping(value = "/wechat", method = RequestMethod.GET)
    public void validate() {
        String signature = this.getParameter("signature");
        String timestamp = this.getParameter("timestamp");
        String nonce = this.getParameter("nonce");
        String echostr = this.getParameter("echostr");
        if (null != signature && null != timestamp && null != nonce
                && null != echostr) {
            if (SignatureUtil.checkSignature(signature, timestamp, nonce)) {
                this.outputText(echostr);
                return;
            }
        }
        return;
    }

    @RequestMapping(value = "/wechat", method = RequestMethod.POST)
    public void weChat() {
        try (InputStream inputStream = this.getInputStream()) {
            MessageBean message = WeChatUtil.parseStream2XMLBean(inputStream);
            this.outputText(HandlerFactory.createHandler(message).response(
                    userSerivce, messageBeanService, welcomeService));
            return;
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}
