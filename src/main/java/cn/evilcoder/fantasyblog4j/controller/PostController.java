package cn.evilcoder.fantasyblog4j.controller;

import cn.evilcoder.fantasyblog4j.domain.KeyValue;
import cn.evilcoder.fantasyblog4j.domain.PostDetailModel;
import cn.evilcoder.fantasyblog4j.service.PostService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpServletRequest;
import java.util.ArrayList;

/**
 * User: evilcoder
 * Date: 2016/4/9
 * Time: 15:00
 */
@Controller
@RequestMapping(value = "post")
public class PostController {

  @Autowired
  private PostService postService;

  @RequestMapping(value = "detail/{pid}",method = RequestMethod.GET)
  public String postDetail(HttpServletRequest request, @PathVariable("pid") long pid){
    PostDetailModel model = postService.selectDetail(pid);
    request.setAttribute("post",model);
    if(model!=null && model.getUid()>0){
      ArrayList<KeyValue> popTags = postService.getUserTags(model.getUid());
      request.setAttribute("popTags",popTags);
    }
    return "post/postDetail";
  }

  @RequestMapping(value = "list/{page}",method = RequestMethod.GET)
  public String postList(@PathVariable("page") int page){
    return "";
  }
}
