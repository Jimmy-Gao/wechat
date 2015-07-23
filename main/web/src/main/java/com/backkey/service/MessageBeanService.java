package com.backkey.service;

import com.backkey.bean.MessageBean;
import org.springframework.stereotype.Service;

@Service("messageBeanService")
public class MessageBeanService {
//    @Autowired(required = true)
//    private MessageBeanDao messageBeanDao;

    public void addMessage(MessageBean message) {
//        messageBeanDao.create(message);
    }
}
