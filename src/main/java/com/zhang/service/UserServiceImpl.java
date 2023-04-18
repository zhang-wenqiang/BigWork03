package com.zhang.service;

import com.zhang.dao.UserMapper;
import com.zhang.entity.Message;
import com.zhang.entity.User;

import java.util.List;

/*
 *   时间：2021/12/11
 *
 *
 */
public class UserServiceImpl implements UserService{

    private UserMapper userMapper;

    public void setUserMapper(UserMapper userMapper) {
        this.userMapper = userMapper;
    }

    @Override
    public List<User> selectUser() {
        return userMapper.selectUser();
    }

    @Override
    public List<Message> selectMessage() {
        return userMapper.selectMessage();
    }

    @Override
    public User loginCheck(String userName, String pwd) {
        return userMapper.loginCheck(userName,pwd);
    }
}
