package cn.evilcoder.fantasyblog4j.controller;

import cn.evilcoder.fantasyblog4j.commons.LoginSession;
import cn.evilcoder.fantasyblog4j.controller.forms.NewPostForm;
import cn.evilcoder.fantasyblog4j.domain.Post;
import cn.evilcoder.fantasyblog4j.domain.User;
import cn.evilcoder.fantasyblog4j.service.PostService;
import cn.evilcoder.fantasyblog4j.service.UserService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import java.util.Date;

/**
 * User: evilcoder
 * Date: 2016/4/7
 * Time: 20:38
 */

@Controller
@RequestMapping(value = "u")
public class UserController {

    private final Logger logger = LoggerFactory.getLogger(UserController.class);

    @Autowired
    private UserService userService;

    @Autowired
    private PostService postService;

    @ResponseBody
    @RequestMapping(value = "init", method = RequestMethod.GET)
    public Object initAdmin() {
        System.out.println("coming.....................");
        User user = new User();
        user.setUsername("test");
        user.setPassword("test1234567");
        user.setEmail("test@test");
        user.setAvatar("");
        user.setEnable(1);
        user.setNickname("test");
        Date now = new Date();
        user.setCtime(now);
        user.setMtime(now);
        user.setLastLoginTime(now);

        userService.insert(user);

        return user.getId();
    }

    @RequestMapping(value = "home",method = RequestMethod.GET)
    public String home(){
        return "post/addPost";
    }
    @RequestMapping(value = "post",method = RequestMethod.GET)
    public String addPostPage(){
        return "post/addPost";
    }
    @ResponseBody
    @RequestMapping(value = "post",method = RequestMethod.POST,params = {"title","category","tags","content"})
    public Object addPostSubmit(HttpServletRequest request, @ModelAttribute NewPostForm form){
        long uid = (long)request.getSession().getAttribute(LoginSession.UID_KEY);
        Post post = new Post();
        post.setTitle(form.getTitle());
        post.setCategory(form.getCategory());
        post.setUid(uid);
        post.setVisitTime(0);
        post.setCtime(new Date());
        post.setMtime(post.getCtime());
        postService.insertPost(post,form.getTags(),form.getContent());
        return post.getId();
    }

}
