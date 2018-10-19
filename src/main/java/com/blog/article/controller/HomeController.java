package com.blog.article.controller;

import com.blog.article.entity.Article;
import com.blog.article.service.ArticleService;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

@Controller
@RequestMapping("/")
public class HomeController {
    @Autowired
    private ArticleService service;
    @RequestMapping("/")
    public String root(Model model){
        model.addAttribute("list",service.getPage(0));
        model.addAttribute("newArticle",service.newArticle());
        model.addAttribute("mostArticle",service.mostView());
        model.addAttribute("mostComment",service.mostComment());
        model.addAttribute("pageNum",0);
        return "/home/index";
    }
    @RequestMapping("/{page}")
    public String page(@PathVariable int page,Model model){
        int max = (int)Math.ceil(service.getArticleCount()/4.0);
        if(page<=0)return "redirect:/";
        else if(page>=max)
            return "redirect:/"+(page-1);
        model.addAttribute("list",service.getPage(page));
        model.addAttribute("newArticle",service.newArticle());
        model.addAttribute("mostArticle",service.mostView());
        model.addAttribute("mostComment",service.mostComment());
        model.addAttribute("pageNum",page);
        return "/home/index";
    }
    @RequestMapping("help")
    public String help(Model model){
        model.addAttribute("active","help");
        return "/home/page";
    }
    @RequestMapping("contact")
    public String contact(Model model){
        model.addAttribute("active","contact");
        return "/home/page";
    }
    @RequestMapping("link")
    public String link(Model model){
        model.addAttribute("active","link");
        return "/home/page";
    }
    @RequestMapping("about")
    public String about(Model model){
        model.addAttribute("active","about");
        return "/home/page";
    }
}
