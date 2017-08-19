package com.spring.board.customer.controller;
/**
 * Created by user on 2017-06-29.
 */

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import java.security.KeyPairGenerator;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.spring.board.customer.service.CustomerService;

@Controller
public class CustomerController {
    final private int KEY_SIZE = 2048;
    @Autowired
    CustomerService customerService;

    @RequestMapping(value="/login!!", method= RequestMethod.GET)
    public String login(Model model){
        try{
            KeyPairGenerator generator = KeyPairGenerator.getInstance("RSA");
            generator.initialize(KEY_SIZE);
        }
        catch (Exception e){

        }
        return "login";
    }
}
