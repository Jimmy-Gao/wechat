package com.backkey.mapper;

import com.backkey.bean.User;

public interface UserMapper {
    void register(User user);

    User getByID(int id);

    User getByUserName(String userName);

    User getByPhoneNumber(String phoneNumber);

    User getByEmail(String email);

    void updateDomain(int id, String domain);

    String getDomainByID(int id);

    int getDomainID(String domain);
}
