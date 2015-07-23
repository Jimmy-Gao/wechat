package com.backkey.bean;

import java.io.Serializable;

public class Welcome implements Serializable {
    private static final long serialVersionUID = -5243504039140644422L;
    private int id;
    private String message;
    private String creat_time;
    private String type;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }

    public String getCreat_time() {
        return creat_time;
    }

    public void setCreat_time(String creat_time) {
        this.creat_time = creat_time;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

}
