package com.xzh.service.impl;

import com.xzh.dao.IUserDao;
import com.xzh.model.User;
import com.xzh.service.IUserService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

@Service("userService")
public class UserServiceImpl implements IUserService {

    @Resource
    private IUserDao userDao;



    @Override
    public User findUsername(String username, String password) {
        return this.userDao.findUsername(username,password);
    }
}