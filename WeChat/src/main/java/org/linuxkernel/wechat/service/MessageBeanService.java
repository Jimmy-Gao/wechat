package org.linuxkernel.wechat.service;

import org.linuxkernel.wechat.dao.MessageBeanDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service("messageBeanService")
public class MessageBeanService {
	@Autowired(required = true)
	private MessageBeanDao messageBeanDao;
}
