package com.blog.article.controller;

import com.blog.article.entity.Article;
import com.blog.article.service.ArticleService;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("/article")
public class ArticleController {
    @Autowired
    private ArticleService service;
    @RequestMapping(value="/{p}",method=RequestMethod.GET)
    public String page(@PathVariable int p,Model m){
        Article article = service.findOne(p);
        if(article!=null){
            System.out.println(article);
        }
        m.addAttribute("obj",article);
        return "/home/page";
    }
    @RequestMapping("/newArticle")
    public void newArticle(Model m){
        m.addAttribute("newArticle",service.newArticle());
    }
}
