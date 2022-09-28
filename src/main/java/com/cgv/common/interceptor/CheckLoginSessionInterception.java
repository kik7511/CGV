package com.cgv.common.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

public class CheckLoginSessionInterception extends HandlerInterceptorAdapter {
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		if (request.getSession().getAttribute("sessId") != null) {
			// by pass
		} else if(request.getSession().getAttribute("sessMId") != null){
			
		}else {
			response.sendRedirect("/first");
            return false;
		}
		System.out.println("접속했습니다");
		return super.preHandle(request, response, handler);
	}
}
