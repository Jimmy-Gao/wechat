package com.backkey.bean.message;


import com.backkey.bean.MessageBean;
import com.backkey.bean.Music;

public class MusicMessage extends Message {
    public MusicMessage(MessageBean message) {
        super(message);
    }

    private Music Music;

    public Music getMusic() {
        return Music;
    }

    public void setMusic(Music music) {
        Music = music;
    }
}
