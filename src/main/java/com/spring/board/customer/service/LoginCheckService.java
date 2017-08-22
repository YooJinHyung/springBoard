package com.spring.board.customer.service;

import com.spring.board.customer.model.Customer;
import org.apache.logging.log4j.Logger;
import org.springframework.security.access.method.P;
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@Service
public class LoginCheckService extends HandlerInterceptorAdapter{
    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) {
        boolean result = false;
        if(request.getRequestURI().indexOf("/login") != -1) {
            return true;
        }

        try {
            HttpSession session = request.getSession(false);
            if (session != null) {
                Customer customer = (Customer)session.getAttribute("userInfo");

                if(customer != null && customer.getId() != null){
                    return true;
                } else {
                    response.sendRedirect("/login");
                    return false;
                }
            } else {
                response.sendRedirect("/login");
                return false;
            }
        } catch(Exception e){
            e.printStackTrace();
            return false;
        }
    }
}
