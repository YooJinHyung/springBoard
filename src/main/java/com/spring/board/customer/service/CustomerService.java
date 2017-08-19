package com.spring.board.customer.service;
/**
 * Created by user on 2017-06-29.
 */

import java.util.List;

import com.spring.board.customer.model.Customer;

public interface CustomerService {
    List<Customer> getCustomerList(Customer customer);

    Customer getCustomerInfoByIdPassword(Customer customer);
}
