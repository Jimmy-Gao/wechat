package com.backkey.dao.impl;


import com.backkey.bean.User;
import com.backkey.dao.UserDAO;
import com.backkey.mapper.UserMapper;
import org.springframework.stereotype.Repository;

import javax.annotation.Resource;

@Repository("userDAO")
public class UserDAOImpl extends UserDAO {
    @Resource
    UserMapper userMapper;

    @Resource

    @Override
    public void register(User user) {
        userMapper.register(user);
    }

    @Override
    public User getByID(int id) {
        return userMapper.getByID(id);
    }

    @Override
    public User getByUserName(String userName) {
        return userMapper.getByUserName(userName);
    }

    @Override
    public User getByPhoneNumber(String phoneNumber) {
        return userMapper.getByPhoneNumber(phoneNumber);
    }

    @Override
    public User getByEmail(String email) {
        return userMapper.getByEmail(email);
    }


}
