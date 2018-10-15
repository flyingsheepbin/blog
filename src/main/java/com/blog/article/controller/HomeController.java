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

import java.util.Iterator;
import java.util.List;

@Controller
@RequestMapping("/")
public class HomeController {
    @Autowired
    private ArticleService service;
    @RequestMapping("/")
    public String root(){
        return "/home/index";
    }
    @RequestMapping("/{page}")
    @ResponseBody
    public List<Article> page(@PathVariable int page){
        List<Article> list = service.getPage(page);
        Iterator<Article> it = list.iterator();
        while(it.hasNext()){
            System.out.println(it.next().getPage()==null);
        }
        System.out.println(list);
        return list;
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
