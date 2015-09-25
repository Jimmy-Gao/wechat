package com.backkey.interceptor;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Component;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.Map;

@Component
public class RequestTimeLogInterceptor extends HandlerInterceptorAdapter {
	private Logger logger = LoggerFactory.getLogger(RequestTimeLogInterceptor.class);
	private static final String SCRETKEY = "9476cf76d0a82143d0030385e04ab301";
	private static final String SKIP_SING_PATTERN = "(.*shareurl.*|.*itings.*|.*listennum.*)";//不验证签名的正则

	@Override
	public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object handler, Exception ex)
			throws Exception {
		Long beforTime = (Long) request.getAttribute("requestTime");
		String url = getUrl(request);
		logger.info(url + " -时长" + (System.currentTimeMillis() - beforTime) + "ms");
	}

	private String getUrl(HttpServletRequest request) {
		StringBuffer sb = new StringBuffer();
		sb.append(request.getRequestURL());
		Map<String, String[]> params = request.getParameterMap();
		if (params == null || params.size() <= 0) {
			return sb.toString();
		}
		sb.append("?");
		params.entrySet().stream().filter(param -> param.getValue() != null).forEach(param -> {
			for (String value : param.getValue()) {
				sb.append(param.getKey()).append("=").append(value).append("&");
			}
		});
		return sb.substring(0, sb.length() - 1);
	}

	@Override
	public void postHandle(HttpServletRequest request, HttpServletResponse response,
	                       Object handler, ModelAndView modelAndView) throws Exception {
		super.postHandle(request, response, handler, modelAndView);
	}

	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
		request.setAttribute("requestTime", System.currentTimeMillis());
		return super.preHandle(request, response, handler);
	}
}
