package com.blog.article.entity;

/**
 * @author flyingsheep
 */
public class Comment {
    private int id;
    private String username;
    private String email;
    private int comment_content;
    private int article_id;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public int getComment_content() {
        return comment_content;
    }

    public void setComment_content(int comment_content) {
        this.comment_content = comment_content;
    }

    public int getArticle_id() {
        return article_id;
    }

    public void setArticle_id(int article_id) {
        this.article_id = article_id;
    }
}
