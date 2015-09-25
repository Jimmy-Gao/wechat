package com.backkey.handler;


import com.backkey.bean.MessageBean;
import com.backkey.service.MessageBeanService;
import com.backkey.service.UserService;
import com.backkey.service.WelcomeService;

public class MessageHandler implements Handler {

    protected MessageBean message;

    public MessageHandler(MessageBean message) {
        this.message = message;
    }

    public void processor() {

    }

    public String response(UserService userService, MessageBeanService messageService, WelcomeService welcomeService) {
        return null;
    }
}
