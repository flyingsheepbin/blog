package com.blog.article.dao;

import com.blog.article.entity.User;

public interface UserDao {
    boolean login(User user);
    boolean register(User user);
    boolean check(String username);
}
