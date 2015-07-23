package com.backkey.bean;

/**
 * Created by Jimmy on 7/23/15.
 */
public class User {
    private int id;
    private String name;
    private String state;
    private String date;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getState() {
        return state;
    }

    public void setState(String state) {
        this.state = state;
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }

    public User() {

    }

    public User(String name, String state, String date) {
        super();
        this.name = name;
        this.state = state;
        this.date = date;
    }
}
