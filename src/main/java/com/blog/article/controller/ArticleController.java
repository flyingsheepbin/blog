package com.blog.article.controller;

import com.blog.article.entity.Article;
import com.blog.article.service.ArticleService;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.sql.Date;
import java.text.ParseException;
import java.text.SimpleDateFormat;
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
        m.addAttribute("active","page");
        return "/home/page";
    }
    @RequestMapping(value="/edit/{p}",method=RequestMethod.GET)
    public String edit(@PathVariable int p,Model m){
        m.addAttribute("edit_page",service.findOne(p));
        return "/admin/edit";
    }
    @RequestMapping("/new")
    public String addArticle(){
        return "/admin/write";
    }
    @RequestMapping("/write")
    @ResponseBody
    public int write(String title, String page, String date){
        Article article = new Article(title,page,Date.valueOf(date.replace('/','-')));
        //checkAdmin
        if(service.insert(article)){
            return 200;
        }
        return 0;
    }
    @RequestMapping("/delete/{id}")
    @ResponseBody
    public int delete(@PathVariable int id){
        //先判断id是否存在，不存在就不删除，并且返回一个不存在的代码0

        if(service.delete(id)){
            return 200;
        }
        return 0;
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
                    +"<td><button type='button' class='btn btn-primary btn-sm' onclick='edit("+article.getId()+")'>编辑" +
                    "</button>&nbsp;<button type='button' class='btn btn-primary btn-sm' onclick='deleteIt("+article.getId()
                    +")'>删除</button></td></tr>");
        }
        model.addAttribute("tbody",html.toString());
        int count = service.getArticleCount();
        if(count%10!=0) count+=10;
        model.addAttribute("count",count/10);
        model.addAttribute("now",p+1);
        return "/admin/articleList";
    }

}
