package com.backkey.util;

import com.backkey.bean.AccessToken;
import com.backkey.bean.MessageBean;
import com.backkey.bean.button.Menu;
import net.sf.json.JSONException;
import net.sf.json.JSONObject;
import org.dom4j.Document;
import org.dom4j.DocumentHelper;
import org.dom4j.Element;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import javax.net.ssl.HttpsURLConnection;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLSocketFactory;
import javax.net.ssl.TrustManager;
import java.io.*;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.net.ConnectException;
import java.net.URL;
import java.util.Iterator;

public class WeChatUtil {
    private static Logger log = LoggerFactory.getLogger(WeChatUtil.class);

    public static JSONObject httpRequest(String requestUrl,
                                         String requestMethod, String outputStr) {
        JSONObject jsonObject = null;
        StringBuffer buffer = new StringBuffer();
        try {
            TrustManager[] tm = {new WeChatX509TrustManager()};
            SSLContext sslContext = SSLContext.getInstance("SSL", "SunJSSE");
            sslContext.init(null, tm, new java.security.SecureRandom());
            SSLSocketFactory ssf = sslContext.getSocketFactory();

            URL url = new URL(requestUrl);
            HttpsURLConnection httpUrlConn = (HttpsURLConnection) url
                    .openConnection();
            httpUrlConn.setSSLSocketFactory(ssf);
            httpUrlConn.setDoOutput(true);
            httpUrlConn.setDoInput(true);
            httpUrlConn.setUseCaches(false);
            httpUrlConn.setRequestMethod(requestMethod);

            if ("GET".equalsIgnoreCase(requestMethod))
                httpUrlConn.connect();

            if (null != outputStr) {
                OutputStream outputStream = httpUrlConn.getOutputStream();
                outputStream.write(outputStr.getBytes("UTF-8"));
                outputStream.close();
            }

            InputStream inputStream = httpUrlConn.getInputStream();
            InputStreamReader inputStreamReader = new InputStreamReader(
                    inputStream, "utf-8");
            BufferedReader bufferedReader = new BufferedReader(
                    inputStreamReader);

            String str = null;
            while ((str = bufferedReader.readLine()) != null) {
                buffer.append(str);
            }
            bufferedReader.close();
            inputStreamReader.close();
            inputStream.close();
            inputStream = null;
            httpUrlConn.disconnect();
            jsonObject = JSONObject.fromObject(buffer.toString());
        } catch (ConnectException ce) {
            log.error("Server connection timed out.");
        } catch (Exception e) {
            log.error("https request error:{}", e);
        }
        return jsonObject;
    }

    private static String _access_token_url = "https://api.weixin.qq.com/cgi-bin/token?grant_type=client_credential&appid=APPID&secret=APPSECRET";

    public static AccessToken getAccessToken(String appid, String appsecret) {
        AccessToken accessToken = null;

        String requestUrl = _access_token_url.replace("APPID", appid).replace(
                "APPSECRET", appsecret);
        JSONObject jsonObject = httpRequest(requestUrl, "GET", null);
        if (null != jsonObject) {
            try {
                accessToken = new AccessToken();
                accessToken.setToken(jsonObject.getString("access_token"));
                accessToken.setExpiresIn(jsonObject.getInt("expires_in"));
            } catch (JSONException e) {
                accessToken = null;
                log.error("create menu failed!" + e.getMessage());
            }
        }
        return accessToken;
    }

    private static String _menu_create_url = "https://api.weixin.qq.com/cgi-bin/menu/create?access_token=ACCESS_TOKEN";

    public static int createMenu(Menu menu, String accessToken) {
        int result = 0;
        String url = _menu_create_url.replace("ACCESS_TOKEN", accessToken);
        System.out.println(url);
        String jsonMenu = JSONObject.fromObject(menu).toString();
        System.out.println(jsonMenu);
        JSONObject jsonObject = httpRequest(url, "POST", jsonMenu);

        if (null != jsonObject) {
            if (0 != jsonObject.getInt("errcode")) {
                result = jsonObject.getInt("errcode");
                log.error(" failed to create menu! errcode:{} errmsg:{}",
                        jsonObject.getInt("errcode"),
                        jsonObject.getString("errmsg"));
            }
        }

        return result;
    }

    public static MessageBean parseStream2XMLBean(InputStream inputStream) {
        MessageBean messageBean = null;
        StringBuffer xmlStr = new StringBuffer();
        try (InputStreamReader inputStreamReader = new InputStreamReader(
                inputStream)) {
            BufferedReader buffer = new BufferedReader(inputStreamReader);
            String str = "";
            while ((str = buffer.readLine()) != null) {
                xmlStr.append(str);
            }
            String xml = xmlStr.toString();
            messageBean = _parseStr2XML(xml);
        } catch (IOException e) {
            e.printStackTrace();
        }
        return messageBean;
    }

    private static MessageBean _parseStr2XML(String xml) {
        MessageBean messageBean = null;
        try {
            if (xml.length() <= 0 || xml == null)
                return null;
            Document document = DocumentHelper.parseText(xml);
            Element root = document.getRootElement();
            Iterator<?> iter = root.elementIterator();
            messageBean = new MessageBean();
            Class<?> clazz = Class
                    .forName("com.backkey.bean.MessageBean");
            messageBean = (MessageBean) clazz.newInstance();
            while (iter.hasNext()) {
                Element ele = (Element) iter.next();
                Field field = clazz.getDeclaredField(ele.getName());
                Method method = clazz.getDeclaredMethod("set" + ele.getName(),
                        field.getType());
                method.invoke(messageBean, ele.getText());
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return messageBean;
    }
}
