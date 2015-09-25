package com.backkey.controller;

import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

@Controller
abstract class BaseController {
	@Autowired
	private HttpServletRequest request;
	@Autowired
	private HttpServletResponse response;

	public void outputText(String text) {
		response.setContentType("text/xml;charset=utf-8");
		response.setCharacterEncoding("UTF-8");
		try {
			PrintWriter out = response.getWriter();
			out.write(text);
			out.flush();
			out.close();
		} catch (IOException e) {
			throw new RuntimeException(e.getMessage());
		}
	}

	public void outputFile(String fileName, String content) {
		response.setContentType("text/plain;charset=utf-8");
		response.setHeader("Content-disposition", "attachment;filename=" + fileName);
		try {
			response.getWriter().print(content);
		} catch (IOException e) {
			throw new RuntimeException(e.getMessage());
		}
	}

	public void setAttribute(String key, Object value) {
		request.setAttribute(key, value);
	}

	public String getAttribute(String key) {
		return request.getAttribute(key) == null ? null : request.getAttribute(key).toString();
	}

	public String getParameter(String key) {
		return request.getParameter(key) == null ? null : request.getParameter(key).toString();
	}

	public String[] getParameters(String key) {
		return request.getParameterValues(key) == null ? null : request.getParameterValues(key);
	}

	public InputStream getInputStream() throws IOException {
		return this.request.getInputStream();
	}

	public String getremoteIP() {
		String ipAddress = request.getHeader("X-FORWARDED-FOR");
		if (ipAddress == null) {
			ipAddress = request.getRemoteAddr();
		}
		return ipAddress;
	}

	public void addCookie(String name, String value, int maxAge) {
		Cookie cookie = new Cookie(name, value);
		cookie.setPath("/");
		if (maxAge > 0)
			cookie.setMaxAge(maxAge);
		response.addCookie(cookie);
	}

	public String getCookieByName(String name) {
		Map<String, Cookie> cookieMap = getAllCookie();
		if (cookieMap.containsKey(name)) {
			Cookie cookie = cookieMap.get(name);
			return cookie.getValue();
		} else {
			return null;
		}
	}

	public Map<String, Cookie> getAllCookie() {
		Map<String, Cookie> cookieMap = new HashMap<String, Cookie>();
		Cookie[] cookies = request.getCookies();
		if (null != cookies) {
			for (Cookie cookie : cookies) {
				cookieMap.put(cookie.getName(), cookie);
			}
		}
		return cookieMap;
	}
}
