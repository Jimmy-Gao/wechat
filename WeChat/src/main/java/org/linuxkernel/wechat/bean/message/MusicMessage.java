package org.linuxkernel.wechat.bean.message;

import org.linuxkernel.wechat.bean.MessageBean;
import org.linuxkernel.wechat.bean.Music;

public class MusicMessage extends Message {
    public MusicMessage(MessageBean message) {
		super(message);
		// TODO Auto-generated constructor stub
	}

	private Music Music;  
  
    public Music getMusic() {  
        return Music;  
    }  
  
    public void setMusic(Music music) {  
        Music = music;  
    }  
}
