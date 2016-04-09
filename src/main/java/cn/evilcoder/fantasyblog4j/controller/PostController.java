package cn.evilcoder.fantasyblog4j.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * User: evilcoder
 * Date: 2016/4/9
 * Time: 15:00
 */
@Controller
@RequestMapping(value = "post")
public class PostController {

  @RequestMapping(value = "detail/{pid}",method = RequestMethod.GET)
  public String postDetail(@PathVariable("pid") long pid){
    return "post/postDetail";
  }

  @RequestMapping(value = "list/{page}",method = RequestMethod.GET)
  public String postList(@PathVariable("page") int page){
    return "";
  }
}
