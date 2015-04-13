package org.linuxkernel.wechat.util;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.net.ConnectException;
import java.net.URL;
import java.util.Iterator;

import javax.net.ssl.HttpsURLConnection;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLSocketFactory;
import javax.net.ssl.TrustManager;

import org.dom4j.Document;
import org.dom4j.DocumentHelper;
import org.dom4j.Element;
import org.linuxkernel.wechat.bean.XMLBean;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.google.gson.JsonObject;

public class WeChatUtil {
   private static Logger log = LoggerFactory.getLogger(WeChatUtil.class);

   /**
    * 
    * 发起https请求并获取结果
    * 
    * @param requestUrl
    *           请求地址
    * 
    * @param requestMethod
    *           请求方式（GET、POST）
    * 
    * @param outputStr
    *           提交的数据
    * 
    * @return JSONObject(通过JSONObject.get(key)的方式获取json对象的属性值)
    */

   public static JsonObject httpRequest(String requestUrl, String requestMethod, String outputStr) {

      JsonObject jsonObject = new JsonObject();

      StringBuffer buffer = new StringBuffer();

      try {

         // 创建SSLContext对象，并使用我们指定的信任管理器初始化

         TrustManager[] tm = { new WeChatX509TrustManager() };

         SSLContext sslContext = SSLContext.getInstance("SSL", "SunJSSE");

         sslContext.init(null, tm, new java.security.SecureRandom());

         // 从上述SSLContext对象中得到SSLSocketFactory对象

         SSLSocketFactory ssf = sslContext.getSocketFactory();

         URL url = new URL(requestUrl);

         HttpsURLConnection httpUrlConn = (HttpsURLConnection) url.openConnection();

         httpUrlConn.setSSLSocketFactory(ssf);

         httpUrlConn.setDoOutput(true);

         httpUrlConn.setDoInput(true);

         httpUrlConn.setUseCaches(false);

         // 设置请求方式（GET/POST）

         httpUrlConn.setRequestMethod(requestMethod);

         if ("GET".equalsIgnoreCase(requestMethod))

            httpUrlConn.connect();

         // 当有数据需要提交时

         if (null != outputStr) {

            OutputStream outputStream = httpUrlConn.getOutputStream();

            // 注意编码格式，防止中文乱码

            outputStream.write(outputStr.getBytes("UTF-8"));

            outputStream.close();

         }

         // 将返回的输入流转换成字符串

         InputStream inputStream = httpUrlConn.getInputStream();

         InputStreamReader inputStreamReader = new InputStreamReader(inputStream, "utf-8");

         BufferedReader bufferedReader = new BufferedReader(inputStreamReader);

         String str = null;

         while ((str = bufferedReader.readLine()) != null) {

            buffer.append(str);

         }

         bufferedReader.close();

         inputStreamReader.close();

         inputStream.close();

         inputStream = null;

         httpUrlConn.disconnect();

         jsonObject.getAsJsonObject(buffer.toString());
      } catch (ConnectException ce) {
         log.error("Weixin server connection timed out.");
      } catch (Exception e) {
         log.error("https request error:{}", e);
      }
      return jsonObject;
   }

   public static XMLBean parseStream2XMLBean(InputStream inputStream) {
      XMLBean xmlBean = null;
      StringBuffer xmlStr = new StringBuffer();
      try (InputStreamReader inputStreamReader = new InputStreamReader(inputStream)) {
         BufferedReader buffer = new BufferedReader(inputStreamReader);
         String str = "";
         while ((str = buffer.readLine()) != null) {
            xmlStr.append(str);
         }
         String xml = xmlStr.toString();
         xmlBean = parseStr2XML(xml);
      } catch (IOException e) {
         e.printStackTrace();
      }
      return xmlBean;
   }

   private static XMLBean parseStr2XML(String xml) {
      XMLBean xmlBean = null;
      try {
         if (xml.length() <= 0 || xml == null)
            return null;
         Document document = DocumentHelper.parseText(xml);
         Element root = document.getRootElement();
         Iterator<?> iter = root.elementIterator();
         xmlBean = new XMLBean();
         Class<?> clazz = Class.forName("org.linuxkernel.wechat.bean.XMLBean");
         xmlBean = (XMLBean) clazz.newInstance();
         while (iter.hasNext()) {
            Element ele = (Element) iter.next();
            Field field = clazz.getDeclaredField(ele.getName());
            Method method = clazz.getDeclaredMethod("set" + ele.getName(), field.getType());
            method.invoke(xmlBean, ele.getText());
         }
      } catch (Exception e) {
         e.printStackTrace();
      }
      return xmlBean;

   }
}
