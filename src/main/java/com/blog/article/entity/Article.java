package com.blog.article.entity;

import java.sql.Date;

/**
 * @author flyingsheep
 */
public class Article {
    private int id;
    private String title;
    private String descriable;
    private String page;
    private Date article_post_time;
    private int article_view_count;
    private int article_comment_count;
    public Article(int id,String title,String page){
        this.id= id;
        this.title = title;
        this.page = page;
    }
    public Article(String title,String page,Date date){
        this.title=title;
        this.page=page;
        this.article_post_time = date;
    }
    public Article(){}
    public int getArticle_comment_count() {
        return article_comment_count;
    }

    public void setArticle_comment_count(int article_comment_count) {
        this.article_comment_count = article_comment_count;
    }

    public int getArticle_view_count() {
        return article_view_count;
    }

    public void setArticle_view_count(int article_view_count) {
        this.article_view_count = article_view_count;
    }

    public Date getArticle_post_time() {
        return article_post_time;
    }

    public void setArticle_post_time(Date article_post_time) {
        this.article_post_time = article_post_time;
    }

    public String getDescriable() {
        return descriable;
    }

    public void setDescriable(String descriable) {
        this.descriable = descriable;
    }

    public String toString(){
        return id+":"+descriable;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getPage() {
        return page;
    }

    public void setPage(String page) {
        this.page = page;
    }

}
