package org.linuxkernel.wechat.service;

import org.linuxkernel.wechat.bean.MessageBean;
import org.linuxkernel.wechat.dao.MessageBeanDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service("messageBeanService")
public class MessageBeanService {
	@Autowired(required = true)
	private MessageBeanDao messageBeanDao;

	@Transactional
	public void addMessage(MessageBean message) {
		messageBeanDao.create(message);
	}
}
