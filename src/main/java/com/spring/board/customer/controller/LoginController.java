package com.spring.board.customer.controller;

import com.spring.board.customer.model.Customer;
import com.spring.board.customer.service.CustomerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
//RSA 이용 라이브러리

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

/**
 * Created by user on 2017-07-13.
 */
@Controller
public class LoginController {
    private final int KEY_SIZE = 2080;
    @Autowired
    private CustomerService customerService;

    @RequestMapping("/")
    public String main() {
        return "login";
    }

    @RequestMapping("/page1")
    public String page1() {
        return "page1";
    }

    @RequestMapping("/page2")
    public String page2() {
        return "page2";
    }

    @RequestMapping("/login")
    public String login() {
        return "login";
    }

    @RequestMapping("/logout")
    public String logout(HttpSession session) {
        session.setAttribute("userLoginInfo", null);
        return "redirect:/login";
    }

    @RequestMapping(value = "loginProcess", method = RequestMethod.POST)
    public String loginProcess(@ModelAttribute Customer customer, HttpSession session, HttpServletRequest request) {
        Customer Info = customerService.getCustomerInfoByIdPassword(customer);
        if (Info != null){
            request.getSession().setAttribute("loginInfo",Info);
            request.getSession().setMaxInactiveInterval(600);
            return "/board/boardList";
        }
        String mav = "redirect:/login";
        return mav;
    }

    @RequestMapping(value = "/member/joinIn")
    public String joinIn(Customer customer) {
        return "redirect:/login";
    }
}
