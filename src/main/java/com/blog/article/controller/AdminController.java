package com.blog.article.controller;

import com.blog.article.entity.User;
import com.blog.article.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
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
    public String login(@ModelAttribute("user")User user, Model model){
        if(service.login(user)) {
            model.addAttribute("user",user.getUsername());
            return "/home/adminIndex";
        }
        return "/home/index";
    }
    @RequestMapping(value="/register")
    public String register(@ModelAttribute User user,Model model){
        if(user.getUsername()!=null&&user.getPassword()!=null&user.getEmail()!=null) {
            if(service.check(user.getUsername())){
                model.addAttribute("register",false);
                System.out.println("用户已存在");
                return "/home/register";
            }
            model.addAttribute("register", service.register(user));
            return "/home/index";
        }
        return "/home/register";
    }
}
