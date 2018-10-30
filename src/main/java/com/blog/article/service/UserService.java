package com.blog.article.service;

import com.blog.article.dao.UserDao;
import com.blog.article.entity.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * @author flyingsheep
 */
@Service
public class UserService {
    @Autowired
    private UserDao dao;
    public boolean login(User user){
        return dao.login(user);
    }
    public boolean register(User user){return dao.register(user);}
    public boolean check(String username){return dao.check(username);}
}
