package org.linuxkernel.wechat.dao;

import org.linuxkernel.wechat.bean.MessageBean;
import org.springframework.stereotype.Repository;

@Repository("messageBeanDao")
public class MessageBeanDao extends GenericDao<MessageBean> {
}
