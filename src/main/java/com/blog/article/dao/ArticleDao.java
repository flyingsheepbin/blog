package com.blog.article.dao;

import com.blog.article.entity.Article;

import java.util.List;


public interface ArticleDao {
    List<Article> getPage(int p);
    Article findOne(int id);
    List<Article> newArticle();
}
