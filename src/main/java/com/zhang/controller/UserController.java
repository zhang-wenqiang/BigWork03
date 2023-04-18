package com.zhang.controller;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.zhang.entity.Message;
import com.zhang.entity.User;
import com.zhang.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

/*
 *   时间：2021/12/12
 *
 *
 */
@Controller
@RequestMapping("/user")
public class UserController {

    @Autowired
    @Qualifier("userService")
    private UserService userService;

    @RequestMapping("/message")
    public String message(Model model){

        List<Message> messages = userService.selectMessage();
        model.addAttribute("msgs",messages);
        return "message";

    }

    @RequestMapping("/loginCheck")
    public void loginCheck(String userName , String pwd, HttpServletResponse response) throws IOException {
        User user = userService.loginCheck(userName, pwd);
        System.out.println(userName+" zhang "+pwd);
        ObjectMapper mapper = new ObjectMapper();
        response.getWriter().println(mapper.writeValueAsString(user));
    }

}
