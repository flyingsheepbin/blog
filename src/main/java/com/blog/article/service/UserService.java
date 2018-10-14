package com.blog.article.service;

import com.blog.article.dao.UserDao;
import com.blog.article.entity.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UserService {
    @Autowired
    private UserDao dao;
    public boolean login(User user){
        return dao.login(user);
    }
}
