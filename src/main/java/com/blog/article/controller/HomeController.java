package com.blog.article.controller;

import com.blog.article.entity.User;
import com.blog.article.service.ArticleService;
import com.blog.article.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;

/**
 * @author flyingsheep
 */
@Controller
@RequestMapping("/")
public class HomeController {
    private final ArticleService service;
    private final UserService userService;
    public static final String REDIRECT = "redirect:/";
    @Autowired
    public HomeController(ArticleService service, UserService userService) {
        this.service = service;
        this.userService = userService;
    }

    @RequestMapping("/")
    public String root(Model model, HttpServletRequest request){
        model.addAttribute("list",service.getPage(0));
        model.addAttribute("newArticle",service.newArticle());
        model.addAttribute("mostArticle",service.mostView());
        model.addAttribute("mostComment",service.mostComment());
        model.addAttribute("pageNum",0);
        User user = checkUser(request);
        if(user!=null&&userService.login(user)){
            model.addAttribute("user",user);
        }
        return "/home/index";
    }
    @RequestMapping("/{page}")
    public String page(@PathVariable int page,Model model,HttpServletRequest request){
        int max = (int)Math.ceil(service.getArticleCount()/4.0);
        if(page<=0){return REDIRECT;}
        else if(page>=max) {
            return REDIRECT + (page - 1);
        }
        model.addAttribute("list",service.getPage(page));
        model.addAttribute("newArticle",service.newArticle());
        model.addAttribute("mostArticle",service.mostView());
        model.addAttribute("mostComment",service.mostComment());
        model.addAttribute("pageNum",page);
        User user = checkUser(request);
        if(user!=null&&userService.login(user)){
            model.addAttribute("user",user);
        }
        return "/home/index";
    }
    @RequestMapping("help")
    public String help(Model model){
        model.addAttribute("active","help");
        return "/home/page";
    }
    @RequestMapping("contact")
    public String contact(Model model){
        model.addAttribute("active","contact");
        return "/home/page";
    }
    @RequestMapping("link")
    public String link(Model model){
        model.addAttribute("active","link");
        return "/home/page";
    }
    @RequestMapping("about")
    public String about(Model model){
        model.addAttribute("active","about");
        return "/home/page";
    }
    public static User checkUser(HttpServletRequest request){
        Cookie[] cookies = request.getCookies();
        String username,password;
        username = password = null;
        if(cookies!=null){
            for(Cookie c:cookies){
                if("username".equals(c.getName())){
                    username = c.getValue();
                }
                else if("password".equals(c.getName())){
                    password = c.getValue();
                }
            }
        }
        if(password!=null&&username!=null) {
            return new User(username, password);
        }
        return null;
    }
}
