package com.spring.board.customer.dao.impl;

import com.spring.board.customer.dao.CustomerDao;
import com.spring.board.customer.model.Customer;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * Created by user on 2017-06-29.
 */
@Repository("customerDao")
public class CustomerDaoImpl implements CustomerDao {
    @Autowired
    private SqlSession sqlSession;

    public void setSqlSession(SqlSession sqlSession) {
        this.sqlSession = sqlSession;
    }

    @Override
    public List<Customer> getCustomerList(Customer customer) {
        return sqlSession.selectList("com.spring.board.customer.dao.CustomerDao.getCustomerList", customer);
    }

    @Override
    public Customer getCustomerInfoByIdPassword(Customer customer) {
        System.out.println(customer.getId());
        return sqlSession.selectOne("getCustomerInfoByIdPassword", customer);
    }
}
