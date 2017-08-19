package com.spring.board.customer.service.impl;

import com.spring.board.customer.dao.CustomerDao;
import com.spring.board.customer.model.Customer;
import com.spring.board.customer.service.CustomerService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

/**
 * Created by user on 2017-06-29.
 */
@Service("customerService")
public class CustomerServiceImpl implements CustomerService {

    @Resource(name = "customerDao")
    private CustomerDao customerDao;

    @Override
    public List<Customer> getCustomerList(Customer customer) {
        return customerDao.getCustomerList(customer);
    }

    @Override
    public Customer getCustomerInfoByIdPassword(Customer customer) {
        return customerDao.getCustomerInfoByIdPassword(customer);
    }

}
