package cn.evilcoder.fantasyblog4j.controller;

import cn.evilcoder.fantasyblog4j.commons.LoginSession;
import cn.evilcoder.fantasyblog4j.domain.Model.PostItemModel;
import cn.evilcoder.fantasyblog4j.domain.Model.QueryModel;
import cn.evilcoder.fantasyblog4j.domain.User;
import cn.evilcoder.fantasyblog4j.service.PostService;
import cn.evilcoder.fantasyblog4j.service.UserService;
import cn.evilcoder.fantasyblog4j.utils.TokenUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.util.ArrayList;

/**
 * User: Huangshanqi
 * Date: 2016/4/8
 * Time: 11:05
 */
@Controller
public class UserCommonController {

    @Autowired
    private UserService userService;
    @Autowired
    private PostService postService;

    @RequestMapping(value = "/",method = RequestMethod.GET)
    public String homePage(HttpServletRequest request){
        QueryModel queryModel = new QueryModel();
        queryModel.setUid(0L);
        queryModel.setCategory(null);
        queryModel.setTag(null);
        queryModel.setKeyword(null);
        queryModel.setPage(1);
        ArrayList<PostItemModel> list = postService.search(queryModel);
        request.setAttribute("posts",list);
        queryModel.setCategory("0");
        queryModel.setTag("0");
        queryModel.setKeyword("");
        request.setAttribute("query",queryModel);
        return "post/listPost";
    }

    @RequestMapping(value = "login",method = RequestMethod.GET)
    public String loginPage(){
        return "u/loginPage";
    }

    @RequestMapping(value = "login",method = RequestMethod.POST,params = {"username","password"})
    public String loginSubmit(HttpServletRequest request,@RequestParam("username") String username,@RequestParam("password") String password){
        User user = userService.selectByUsername(username);
        if(user==null || !userService.checkPassword(user,password)){
            return "u/loginPage";
        }
        HttpSession session = request.getSession();
        session.setAttribute(LoginSession.EXPIRED_TIME_KEY,System.currentTimeMillis()+ TokenUtils.TOKEN_EXPIRED_TIME_MS);
        session.setAttribute(LoginSession.UID_KEY,user.getId());
        session.setAttribute(LoginSession.TOKEN_KEY,TokenUtils.genToken(user.getUsername(),user.getId()));
        session.setAttribute(LoginSession.USERNAME_KEY,user.getUsername());
        request.setAttribute("username",user.getUsername());
//        return "redirect:/post/search/"+user.getId()+"/0/0/1?kw=";
        return "redirect:/u/post";
    }

    @RequestMapping(value = "logout",method = RequestMethod.GET)
    public String logout(HttpServletRequest request, HttpServletResponse response){
        request.getSession().invalidate();
        return "u/loginPage";
    }
}
