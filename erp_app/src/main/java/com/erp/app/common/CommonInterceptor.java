package com.erp.app.common;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

public class CommonInterceptor extends HandlerInterceptorAdapter {
	
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
		
		boolean result = true;
         
        try {     
        	
            //���ǰ��� ���ϰ��
            if(request.getSession().getAttribute("LoginInfo") == null ){

                response.sendRedirect("/");   
                result =  false;
                 
            }else{ 
                result =  true;
            }
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }   
        return result;
	}

}
