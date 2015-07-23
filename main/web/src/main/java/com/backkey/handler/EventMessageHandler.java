package com.backkey.handler;

import com.backkey.bean.MessageBean;
import com.backkey.bean.User;
import com.backkey.bean.message.TextMessage;
import com.backkey.service.MessageBeanService;
import com.backkey.service.UserService;
import com.backkey.service.WelcomeService;
import com.backkey.util.ParseUtil;

public class EventMessageHandler extends MessageHandler {
    public EventMessageHandler(MessageBean message) {
        super(message);
    }

    @Override
    public String response(UserService userService,
                           MessageBeanService messageService, WelcomeService welcomeService) {
        messageService.addMessage(message);
        User user = ParseUtil.parseMessageBean2User(message);
        String response = "";
        switch (message.getEvent().toLowerCase()) {
            case "subscribe":
                response = _subscibe(userService, welcomeService, user, message);
                break;
            case "unsubscribe":
                response = _unsubscibe(userService, welcomeService, user, message);
                break;
        }
        return response;

    }

    private String _subscibe(UserService userService,
                             WelcomeService welcomeService, User user, MessageBean message) {

        userService.subscribe(user);
        TextMessage textMessage = new TextMessage(message);
        String content = "welcome to follow me! You can send ? to me to get menus...";
        textMessage.setContent(content);
        textMessage.setFuncFlag(0);
        String response = ParseUtil.messageToXml(textMessage);
        return response;

    }

    private String _unsubscibe(UserService userService,
                               WelcomeService welcomeService, User user, MessageBean message) {
        userService.unsubscribe(user);
        TextMessage textMessage = new TextMessage(message);
        String content = "oop... why do you leave me?";
        textMessage.setContent(content);
        textMessage.setFuncFlag(0);
        String response = ParseUtil.messageToXml(textMessage);
        return response;

    }
}
