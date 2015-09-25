package com.backkey.interceptor;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Component;
import org.springframework.web.bind.annotation.ResponseStatus;
import org.springframework.web.servlet.HandlerExceptionResolver;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.Map;

@Component
public class ExceptionHandler implements HandlerExceptionResolver {

	private Logger logger = LoggerFactory.getLogger(ExceptionHandler.class);

	@Override
	@ResponseStatus(value = HttpStatus.INTERNAL_SERVER_ERROR, reason = "Y0 Short URL Internal Server Error")
	public ModelAndView resolveException(HttpServletRequest request,
	                                     HttpServletResponse response, Object handler, Exception ex) {
		String url = getUrl(request);
		logger.error("抛出了异常:" + url, ex);
		response.setStatus(HttpStatus.INTERNAL_SERVER_ERROR.value());
		return new ModelAndView("exception");
	}

	private String getUrl(HttpServletRequest request) {
		StringBuffer sb = new StringBuffer();
		sb.append(request.getRequestURL());
		sb.append("?");
		Map<String, String[]> parameterMap = request.getParameterMap();
		if (parameterMap != null && parameterMap.size() > 0) {
			for (String key : parameterMap.keySet()) {
				sb.append("&").append(key).append("=");
				String[] values = parameterMap.get(key);
				if (values != null && values.length > 0) {
					for (int i = 0; i < values.length; i++) {
						if (i != 0) {
							sb.append(",");
						}
						sb.append(values[i]);
					}
				}
			}
		}
		return sb.toString();
	}
}
