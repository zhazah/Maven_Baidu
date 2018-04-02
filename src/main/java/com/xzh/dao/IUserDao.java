package com.xzh.dao;

import com.xzh.model.User;

public interface IUserDao {


    public User findUsername(String username,String password);
}