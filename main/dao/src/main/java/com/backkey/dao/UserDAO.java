package com.backkey.dao;


import com.backkey.bean.User;

/**
 * 数据保存在mysql。
 * 用户信息。
 */
public abstract class UserDAO {
    abstract public void register(User user);

    abstract public User getByID(int id);

    abstract public User getByUserName(String userName);

    abstract public User getByPhoneNumber(String phoneNumber);

    abstract public User getByEmail(String email);


}

