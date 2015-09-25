package com.backkey.controller;

import com.backkey.bean.MessageBean;
import com.backkey.handler.HandlerFactory;
import com.backkey.service.MessageBeanService;
import com.backkey.service.UserService;
import com.backkey.service.WelcomeService;
import com.backkey.util.SignatureUtil;
import com.backkey.util.WeChatUtil;
import com.google.common.base.Strings;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import java.io.IOException;
import java.io.InputStream;
import java.time.LocalDateTime;

@Controller
@Scope("prototype")
public class MainController extends BaseController {
    private Logger logger = LoggerFactory.getLogger(MainController.class);

    @Autowired(required = true)
    private UserService userSerivce;

    @Autowired(required = true)
    private MessageBeanService messageBeanService;

    @Autowired(required = true)
    private WelcomeService welcomeService;

    @RequestMapping(value = CHAT, method = RequestMethod.GET)
    @ResponseBody
    public void validate() {
        String signature = getParameter("signature");
        String timestamp = getParameter("timestamp");
        String nonce = getParameter("nonce");
        String echostr = getParameter("echostr");
        if (!(Strings.isNullOrEmpty(signature) && Strings.isNullOrEmpty(timestamp) && Strings.isNullOrEmpty(nonce) && Strings.isNullOrEmpty(echostr))) {
            if (SignatureUtil.checkSignature(signature, timestamp, nonce)) {
                outputText(echostr);
            }
        }
    }

    @RequestMapping(value = CHAT, method = RequestMethod.POST)
    @ResponseBody
    public void processMessage() {
        try (InputStream inputStream = getInputStream()) {
            MessageBean message = WeChatUtil.parseStream2XMLBean(inputStream);
            outputText(HandlerFactory.createHandler(message).response(
                    userSerivce, messageBeanService, welcomeService));
        } catch (IOException e) {
            logger.warn(LocalDateTime.now() + ":" + e.getMessage());
        }
    }

    private final static String CHAT = "/wechat";
}
