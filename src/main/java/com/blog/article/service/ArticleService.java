package com.blog.article.service;

import com.blog.article.dao.ArticleDao;
import com.blog.article.entity.Article;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @author flyingsheep
 */
@Service
public class ArticleService {
    @Autowired
    private ArticleDao dao;
    public List<Article> getPage(int page){
        return dao.getPage(page*4);
    }
    public Article findOne(int id){
        return dao.findOne(id);
    }
    public List<Article> newArticle(){return dao.newArticle();}
    public List<Article> mostView(){return dao.mostView();}
    public List<Article> mostComment(){return dao.mostComment();}
    public List<Article> list(int p){return dao.list(p);}
    public int getArticleCount(){return dao.getArticleCount();}
    public boolean update(Article article){return dao.update(article);}
    public boolean insert(Article article){
        String page = article.getPage();
        if(page.length()>100) {
            article.setDescriable(article.getPage().substring(0, 100));
        }else{
            article.setDescriable(page);
        }
        return dao.insert(article);
    }
    public boolean delete(int id){return dao.delete(id);}
}
