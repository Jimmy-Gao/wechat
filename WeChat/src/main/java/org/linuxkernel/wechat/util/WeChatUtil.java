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
import org.linuxkernel.wechat.bean.MassagerBean;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.google.gson.JsonObject;

public class WeChatUtil {
	private static Logger log = LoggerFactory.getLogger(WeChatUtil.class);

	public static JsonObject httpRequest(String requestUrl, String requestMethod, String outputStr) {
		JsonObject jsonObject = new JsonObject();
		StringBuffer buffer = new StringBuffer();
		try {

			TrustManager[] tm = { new WeChatX509TrustManager() };
			SSLContext sslContext = SSLContext.getInstance("SSL", "SunJSSE");
			sslContext.init(null, tm, new java.security.SecureRandom());
			SSLSocketFactory ssf = sslContext.getSocketFactory();
			URL url = new URL(requestUrl);
			HttpsURLConnection httpUrlConn = (HttpsURLConnection) url.openConnection();
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
			log.error("Server connection timed out.");
		} catch (Exception e) {
			log.error("https request error:{}", e);
		}
		return jsonObject;
	}

	public static MassagerBean parseStream2XMLBean(InputStream inputStream) {
		MassagerBean xmlBean = null;
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

	private static MassagerBean parseStr2XML(String xml) {
		MassagerBean xmlBean = null;
		try {
			if (xml.length() <= 0 || xml == null)
				return null;
			Document document = DocumentHelper.parseText(xml);
			Element root = document.getRootElement();
			Iterator<?> iter = root.elementIterator();
			xmlBean = new MassagerBean();
			Class<?> clazz = Class.forName("org.linuxkernel.wechat.bean.MassagerBean");
			xmlBean = (MassagerBean) clazz.newInstance();
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
