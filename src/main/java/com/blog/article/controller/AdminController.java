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
    public String login(String username, String password, Model model){
        User user = new User(username,password);
        if(service.login(user)) {
            model.addAttribute("user",username);
            return "/home/adminIndex";
        }
        return "/home/index";
    }
}
