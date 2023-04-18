package com.zhang.controller;

import com.zhang.entity.User;
import com.zhang.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

/*
 *   时间：2021/12/11
 *
 *
 */
@Controller
@RequestMapping("/main")
public class MainController {


    @RequestMapping("/mainCheck")
    public String selectUser(){

        return "check";
    }

    @RequestMapping("toAdmin")
    public String admin(){
        return "admin";
    }

    @RequestMapping("/toLogin")
    public String test(){


        return "login";
    }

    @RequestMapping("/test2")
    @ResponseBody
    public String test2(){


        return "你好";
    }
}
