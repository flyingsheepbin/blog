package com.blog.article.controller;

import com.blog.article.entity.Article;
import com.blog.article.service.ArticleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;


@Controller
@RequestMapping("/article")
public class ArticleController {
    @Autowired
    private ArticleService service;
    @RequestMapping(value="/{p}",method=RequestMethod.GET)
    public String page(@PathVariable int p,Model m){
        Article article = service.findOne(p);
        m.addAttribute("obj",article);
        return "/home/page";
    }
    @RequestMapping(value="/edit/{p}",method=RequestMethod.GET)
    public String edit(@PathVariable int p,Model m){
        m.addAttribute("edit_page",service.findOne(p));
        return "/admin/edit";
    }
//    @RequestMapping("/newArticle")
//    @ResponseBody
//    public List<Article> newArticle(){
//        return service.newArticle();
//    }
//    @RequestMapping("/mostView")
//    @ResponseBody
//    public List<Article> mostView(){return service.mostView(); }
//    @RequestMapping("/mostComment")
//    @ResponseBody
//    public List<Article> mostComment(){return service.mostComment();}
    @RequestMapping("/view/{p}")
    public String view(@PathVariable int p,Model model){
        if(p<0) p=0;
        StringBuilder html=new StringBuilder();
        List<Article> data = service.list(p*10);
        for(int i=0;i<data.size();i++){
            Article article = data.get(i);
            html.append("<tr><td>"
                    +article.getId()+"</td><td>"
                    +article.getTitle()+"</td><td>"
                    +article.getArticle_post_time()+"</td><td>"
                    +article.getArticle_view_count()
                    +"<td><button type='button' class='btn btn-primary btn-sm' onclick='edit("+article.getId()+")'>编辑</td></tr>");
        }
        model.addAttribute("tbody",html.toString());
        int count = service.getArticleCount();
        if(count%10!=0) count+=10;
        model.addAttribute("count",count/10);
        model.addAttribute("now",p+1);
        return "/admin/articleList";
    }

}
