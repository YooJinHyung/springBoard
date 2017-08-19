package com.spring.board.customer.dao;

import com.spring.board.customer.model.Customer;

import java.util.List;

/**
 * Created by user on 2017-06-29.
 */
public interface CustomerDao {
    List<Customer> getCustomerList(Customer customer);
    Customer getCustomerInfoByIdPassword(Customer customer);
}
