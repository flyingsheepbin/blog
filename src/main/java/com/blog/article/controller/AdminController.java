package com.blog.article.controller;

import com.blog.article.entity.User;
import com.blog.article.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping("/admin")
public class AdminController {

    @Autowired
    private UserService service;
    @RequestMapping(value="/login",method= RequestMethod.POST)
    @ResponseBody
    public void login(@ModelAttribute("user") User user){
        System.out.println("name:"+user.getUserName());
        System.out.println("password:"+user.getPassword());
    }
}
