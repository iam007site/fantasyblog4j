package cn.evilcoder.fantasyblog4j.controller;

import cn.evilcoder.fantasyblog4j.domain.User;
import cn.evilcoder.fantasyblog4j.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.Date;

/**
 * User: evilcoder
 * Date: 2016/4/7
 * Time: 20:38
 */

@Controller
@RequestMapping(value = "u")
public class UserController {

  @Autowired
  private UserService userService;

  @ResponseBody
  @RequestMapping(value = "init",method = RequestMethod.GET)
  public Object initAdmin(){
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

  @ResponseBody
  @RequestMapping(value = "login",method = RequestMethod.GET)
  public Object login(){
    String username = "test";
    String password = "test1234567";

    User user = userService.selectByUsername(username);

    if(userService.checkPassword(user,password)){
      return user;
    }else{
      return null;
    }
  }

}
