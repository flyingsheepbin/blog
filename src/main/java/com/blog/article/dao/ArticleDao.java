package com.blog.article.dao;

import com.blog.article.entity.Article;

import java.util.List;


/**
 * @author flyingsheep
 */
public interface ArticleDao {
    /**
     * to get all article of one page
     * @param p page_num
     * @return List<Article> the page of articles
     */
    List<Article> getPage(int p);
    /**
     * get article by id
     * @param id article id
     * @return article
     */
    Article findOne(int id);

    /**
     * create a article
     * @return List<article> a list of article
     */
    List<Article> newArticle();

    /**
     * get five article order by viewCount
     * @return list of article
     */
    List<Article> mostView();

    /**
     * get five article order by CommentCount
     * @return list of article
     */
    List<Article> mostComment();

    /**
     * get article list
     * @param p page count
     * @return list of article
     */
    List<Article> list(int p);

    /**
     * to get article count
     * @return article count
     */
    int getArticleCount();

    /**
     * update article
     * @param article update article
     * @return boolean,make sure article updated
     */
    boolean update(Article article);

    /**
     * insert a article
     * @param article article will be inserted
     * @return boolean,make sure article inserted
     */
    boolean insert(Article article);

    /**
     * delete article by id
     * @param id article id
     * @return boolean,make sure article deleted
     */
    boolean delete(int id);
}
