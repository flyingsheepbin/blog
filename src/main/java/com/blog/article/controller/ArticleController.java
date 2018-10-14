package com.blog.article.controller;

import com.blog.article.entity.Article;
import com.blog.article.service.ArticleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;


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
    @ResponseBody
    public String[] newArticle(){
        return service.newArticle();
    }
}
