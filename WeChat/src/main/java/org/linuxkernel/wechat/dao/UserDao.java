package org.linuxkernel.wechat.dao;

import org.linuxkernel.wechat.bean.User;
import org.springframework.stereotype.Repository;

@Repository("userDao")
public class UserDao extends GenericDao<User> {
  
}