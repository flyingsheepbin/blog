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

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@Controller
@RequestMapping("/admin")
public class AdminController {

    @Autowired
    private UserService service;
    @RequestMapping(value="/login",method= RequestMethod.POST)
    public String login(@ModelAttribute("user")User user, Model model, HttpServletResponse response){
        if(service.login(user)) {
            Cookie cookie1 = new Cookie("username",user.getUsername());
            Cookie cookie2 = new Cookie("password",user.getPassword());
            cookie1.setMaxAge(86400);
            cookie2.setMaxAge(86400);
            cookie1.setPath("/");
            cookie2.setPath("/");
            response.addCookie(cookie1);
            response.addCookie(cookie2);
            return "redirect:/admin/manager";
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
    @RequestMapping("/manager")
    public String manager(HttpServletRequest request){
        User user = HomeController.checkUser(request);
        if(user!=null){
            if(service.login(user)){
                return "/admin/index";
            }
        }
        return "redirect:/";
    }
}
