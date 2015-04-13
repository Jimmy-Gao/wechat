package org.linuxkernel.wechat.config;

import java.io.IOException;
import java.io.InputStream;
import java.util.Properties;

public class Config {

   static Properties props = new Properties();

   static {
      InputStream in = Config.class.getResourceAsStream("/config.properties");
      try {
         props.load(in);
      } catch (IOException e) {
         e.printStackTrace();
      }
   }

   public static final String PROJECT_NAME = props.getProperty("projectName");
   public static final String COPY_RIGHT = props.getProperty("copyRight");
   public static final String APPLICATION = props.getProperty("application");
   public static final String TOKEN = props.getProperty("token");
}
