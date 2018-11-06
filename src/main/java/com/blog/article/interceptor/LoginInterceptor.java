package com.blog.article.interceptor;

import com.blog.article.controller.HomeController;
import com.blog.article.entity.User;
import com.blog.article.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.lang.Nullable;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;
import sun.awt.geom.AreaOp;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * 登陆拦截器
 * @author flyingsheep
 * 2018/10/29 18:48
 */
public class LoginInterceptor implements HandlerInterceptor {
    @Autowired
    private UserService service;
    private static int i=0;
    private static int j=0;
    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response,Object obj)throws Exception{
        User user = HomeController.checkUser(request);
        if(service.login(user)){
            System.out.println("拦截次数:"+i++);
            return true;
        }else{
            response.sendRedirect(request.getContextPath()+"/");
            System.out.printf("拦截成功次数:"+j++);
            return false;
        }
    }
    @Override
    public void postHandle(HttpServletRequest request, HttpServletResponse response, Object object,ModelAndView mav){
    }
    @Override
    public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object handler, @Nullable Exception ex) throws Exception{
    }
}
