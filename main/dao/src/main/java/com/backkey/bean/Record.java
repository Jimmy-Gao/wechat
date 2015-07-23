package com.backkey.bean;

import java.io.Serializable;


public class Record implements Serializable {

    private static final long serialVersionUID = -5077857329967340636L;

    private int id;
    private String ip;
    private String duration;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getIp() {
        return ip;
    }

    public void setIp(String ip) {
        this.ip = ip;
    }

    public String getDuration() {
        return duration;
    }

    public void setDuration(String duration) {
        this.duration = duration;
    }

}
