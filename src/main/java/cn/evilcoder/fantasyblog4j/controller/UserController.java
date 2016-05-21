package cn.evilcoder.fantasyblog4j.controller;

import cn.evilcoder.fantasyblog4j.commons.Common;
import cn.evilcoder.fantasyblog4j.commons.LoginSession;
import cn.evilcoder.fantasyblog4j.controller.forms.NewPostForm;
import cn.evilcoder.fantasyblog4j.domain.KeyValue;
import cn.evilcoder.fantasyblog4j.domain.Model.PostDetailModel;
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
import java.util.ArrayList;
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
    public String home(HttpServletRequest request){
        request.setAttribute(LoginSession.USERNAME_KEY,request.getSession().getAttribute(LoginSession.USERNAME_KEY));
        request.setAttribute(LoginSession.UID_KEY,request.getSession().getAttribute(LoginSession.UID_KEY));
        return "u/home";
    }

    @RequestMapping(value = "post",method = RequestMethod.GET)
    public String addPostPage(HttpServletRequest request){

        logger.info("==================================="+request.getSession().getAttribute(LoginSession.UID_KEY).toString());
        ArrayList<KeyValue> popTags = postService.getUserTags((long)request.getSession().getAttribute(LoginSession.UID_KEY));
        request.setAttribute("popTags", popTags);
        ArrayList<KeyValue> popCats = postService.getUserCats((long)request.getSession().getAttribute(LoginSession.UID_KEY));
        request.setAttribute("popCats", popCats);

        return "post/addPost";
    }

    @RequestMapping(value = "post",method = RequestMethod.POST,params = {"title","category","tags","content","state"})
    public String addPostSubmit(HttpServletRequest request, @ModelAttribute NewPostForm form){
        long uid = (long)request.getSession().getAttribute(LoginSession.UID_KEY);
        Post post = new Post();
        post.setState(form.getState());
        post.setTitle(form.getTitle());
        post.setCategory(form.getCategory());
        post.setUid(uid);
        post.setVisitTime(0);
        post.setCtime(new Date());
        post.setMtime(post.getCtime());
        post.setTags(form.getTags().replaceAll(",", Common.TAG_SPLITOR));
        postService.insertPost(post,form.getTags(),form.getContent());
        if(post.getId()>0){
            return "redirect:/post/detail/"+post.getId();
        }else{
            return "redirect:/u/post";
        }
    }

    @RequestMapping(value = "post/manager/{page}",method = RequestMethod.GET)
    public String postManager(HttpServletRequest request,
            @PathVariable("page") int page) {
        page = page > 1 ? page : 1;
        int pageSize = 10;
        long uid = (long)request.getSession().getAttribute(LoginSession.UID_KEY);
        ArrayList<Post> posts = postService.getUserPostForManager(uid,(page-1)*pageSize,pageSize);
        request.setAttribute("list",posts);
        request.setAttribute("page",page);
        request.setAttribute("pageSize",pageSize);
        return "post/postManager";
    }

    @RequestMapping(value = "post/preview",method = RequestMethod.GET,params = {"pid"})
    public String postPreview(HttpServletRequest request,
                              @RequestParam("pid") long pid) {
        long uid = (long)request.getSession().getAttribute(LoginSession.UID_KEY);
        PostDetailModel model = postService.selectDetailWithoutState(pid);
        if (null != model && model.getUid() == uid) {
            request.setAttribute("post", model);
        } else {
            if (null != model){
                logger.error("uid = {} try to preview the post id = {} which is not belong to him!",uid,model.getPid());
            }
            request.setAttribute("post", null);
        }
        return "post/postDetail";
    }

    @RequestMapping(value = "post/edit",method = RequestMethod.GET,params = {"pid"})
    public String postEditPage(HttpServletRequest request,
                              @RequestParam("pid") long pid) {
        long uid = (long)request.getSession().getAttribute(LoginSession.UID_KEY);
        PostDetailModel model = postService.selectDetailWithoutState(pid);
        if (null != model && model.getUid() == uid) {
            request.setAttribute("post", model);
        } else {
            if (null != model){
                logger.error("uid = {} try to preview the post id = {} which is not belong to him!",uid,model.getPid());
            }
            request.setAttribute("post", null);
        }
        return "post/postEdit";
    }

}
