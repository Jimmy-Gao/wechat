package org.linuxkernel.wechat.util;

public class ParseUtil {

   public static String Parse2Request(String requestType) {
      if (null == requestType || "".endsWith(requestType))
         return "/#index";
      else
         return "/#" + requestType;
   }
   
}
