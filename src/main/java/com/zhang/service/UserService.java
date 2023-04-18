package com.zhang.service;

import com.zhang.entity.Message;
import com.zhang.entity.User;

import java.util.List;

/*
 *   时间：2021/12/11
 *
 *
 */
public interface UserService {

    List<User> selectUser();

    List<Message> selectMessage();

    User loginCheck(String userName ,String pwd);
 }
