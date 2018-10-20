package com.blog.article.aop;

import com.blog.article.service.UserService;
import org.aspectj.lang.annotation.Aspect;
import org.springframework.beans.factory.annotation.Autowired;

@Aspect
public class UserMode {
    @Autowired
    private UserService service;
}
