package com.backkey.bean;

/**
 * Created by Jimmy on 7/23/15.
 */

import java.time.LocalDateTime;

public class User {
    private int id;
    private String username;
    private String password;
    private String phoneNumber;
    private String email;
    private String domain;
    private int userType;
    private int packageType;
    private LocalDateTime packageExpireTime;
    private LocalDateTime registerTime;
    private String token;

    public User() {
    }

    @Override
    public String toString() {
        return "User{" +
                "id=" + id +
                ", username='" + username + '\'' +
                ", password='" + password + '\'' +
                ", phoneNumber='" + phoneNumber + '\'' +
                ", email='" + email + '\'' +
                ", domain='" + domain + '\'' +
                ", userType=" + userType +
                ", packageType=" + packageType +
                ", packageExpireTime=" + packageExpireTime +
                ", registerTime=" + registerTime +
                ", token='" + token + '\'' +
                '}';
    }

    public String getDomain() {
        return domain;
    }

    public void setDomain(String domain) {
        this.domain = domain;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getPhoneNumber() {
        return phoneNumber;
    }

    public void setPhoneNumber(String phoneNumber) {
        this.phoneNumber = phoneNumber;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public int getUserType() {
        return userType;
    }

    public void setUserType(int userType) {
        this.userType = userType;
    }

    public int getPackageType() {
        return packageType;
    }

    public void setPackageType(int packageType) {
        this.packageType = packageType;
    }

    public LocalDateTime getPackageExpireTime() {
        return packageExpireTime;
    }

    public void setPackageExpireTime(LocalDateTime packageExpireTime) {
        this.packageExpireTime = packageExpireTime;
    }

    public LocalDateTime getRegisterTime() {
        return registerTime;
    }

    public void setRegisterTime(LocalDateTime registerTime) {
        this.registerTime = registerTime;
    }

    public String getToken() {
        return token;
    }

    public void setToken(String token) {
        this.token = token;
    }
}
