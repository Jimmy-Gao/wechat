package org.linuxkernel.wechat.filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;

public class Encodingfilter implements Filter {
	private String encoding = "utf-8";

	public void destroy() {

	}

	public void doFilter(ServletRequest request, ServletResponse response,
			FilterChain chain) throws IOException, ServletException {
		request.setCharacterEncoding(encoding);
		response.setCharacterEncoding(encoding);
		chain.doFilter(request, response);
	}

	public void init(FilterConfig config) throws ServletException {
		String encoding = config.getInitParameter("encoding");
		if (encoding != null) {
			this.encoding = encoding;
		}
	}

}
