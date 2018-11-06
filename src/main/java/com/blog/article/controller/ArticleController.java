package com.blog.article.controller;

import com.blog.article.entity.Article;
import com.blog.article.service.ArticleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import java.sql.Date;
import java.util.List;


/**
 * @author flyingsheep
 */
@Controller
@RequestMapping("/article")
public class ArticleController {
    private ArticleService service;
    private static String TBODY;
    private static String NOW;
    private static String COUNT;
    private static int PAGE_LINE;

    static {
        TBODY = "tbody";
        NOW = "now";
        COUNT = "count";
        PAGE_LINE = 10;
    }

    @Autowired
    public ArticleController(ArticleService service){
        this.service = service;
    }
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
    @RequestMapping("/new/")
    public String addArticle(){
        return "/admin/write";
    }
    @RequestMapping("/write/")
    @ResponseBody
    public int write(String title, String page, String date){
        Article article = new Article(title,page,Date.valueOf(date.replace('/','-')));
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
    @RequestMapping("/update/")
    @ResponseBody
    public int update(Model model, String title, String page, int id){
        Article article = new Article(id,title,page);
        if(service.update(article)){
            System.out.println("success");
            return 200;
        }else {
            model.addAttribute("code", 0);
        }
        return 0;
    }
    @RequestMapping("/view/{p}")
    public String view(@PathVariable int p,Model model){
        if(p<0){ p=0;}
        StringBuilder html=new StringBuilder();
        List<Article> data = service.list(p*10);
        for (Article article : data) {
            html.append("<tr><td>").append(article.getId()).append("</td><td>").append(article.getTitle()).append("</td><td>").append(article.getArticle_post_time()).append("</td><td>").append(article.getArticle_view_count()).append("<td><button type='button' class='btn btn-primary btn-sm' onclick='edit(").append(article.getId()).append(")'>编辑").append("</button>&nbsp;<button type='button' class='btn btn-primary btn-sm' onclick='deleteIt(").append(article.getId()).append(")'>删除</button></td></tr>");
        }
        model.addAttribute(TBODY,html.toString());
        int count = service.getArticleCount();
        if(count%PAGE_LINE!=0){ count+=PAGE_LINE;}
        model.addAttribute(COUNT,count/PAGE_LINE);
        model.addAttribute(NOW,p+1);
        return "/admin/articleList";
    }

}
