package com.blog.article.entity;

import java.sql.Date;

public class Article {
    private int id;
    private String title;
    private String descriable;
    private String page;
    private Date article_post_time;

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
