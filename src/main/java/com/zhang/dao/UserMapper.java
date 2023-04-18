package com.zhang.dao;

import com.zhang.entity.Message;
import com.zhang.entity.User;
import org.apache.ibatis.annotations.Param;

import java.util.List;
import java.util.Map;

/*
 *   时间：2021/12/11
 *
 *
 */
public interface UserMapper {

    List<User> selectUser();

    List<Message> selectMessage();

    User loginCheck(@Param("userName") String userName,@Param("pwd") String pwd);

    int deleteUser(@Param("id") int id);

    int updateUser(User user);


    int insertUser(User user);
}
