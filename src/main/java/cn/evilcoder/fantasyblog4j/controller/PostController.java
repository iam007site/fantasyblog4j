package cn.evilcoder.fantasyblog4j.controller;

import cn.evilcoder.fantasyblog4j.domain.KeyValue;
import cn.evilcoder.fantasyblog4j.domain.PostDetailModel;
import cn.evilcoder.fantasyblog4j.domain.PostItemModel;
import cn.evilcoder.fantasyblog4j.domain.QueryModel;
import cn.evilcoder.fantasyblog4j.service.PostService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.*;

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

    private final Logger logger = LoggerFactory.getLogger(PostController.class);
    @Autowired
    private PostService postService;

    @RequestMapping(value = "detail/{pid}", method = RequestMethod.GET)
    public String postDetail(HttpServletRequest request, @PathVariable("pid") long pid) {
        PostDetailModel model = postService.selectDetail(pid);
        request.setAttribute("post", model);
        if (model != null && model.getUid() > 0) {
            postService.addPostViewTime(model.getPid());
            ArrayList<KeyValue> popTags = postService.getUserTags(model.getUid());
            request.setAttribute("popTags", popTags);
        }
        return "post/postDetail";
    }

    @RequestMapping(value = "search/{uid}/{cat}/{tag}/{page}", method = RequestMethod.GET,params = {"kw"})
    public String postList(HttpServletRequest request,
                           @PathVariable("uid") long uid,
                           @PathVariable(value = "cat")String category,
                           @PathVariable(value = "tag")String tag,
                           @PathVariable(value = "page")int page,
                           @RequestParam(value = "kw",required = false)String keyword) {

        page = page>0?page:1;
        QueryModel queryModel = new QueryModel();
        queryModel.setUid(uid);
        queryModel.setCategory(category.equals("0")?null:category);
        queryModel.setTag(tag.equals("0")?null:tag);
        queryModel.setKeyword(!StringUtils.isEmpty(keyword)?null:keyword);
        queryModel.setPage(page);
        ArrayList<PostItemModel> list = postService.search(queryModel);
        request.setAttribute("posts",list);
        queryModel.setCategory(category);
        queryModel.setTag(tag);
        queryModel.setKeyword(keyword);
        request.setAttribute("query",queryModel);
        return "post/listPost";
    }
}
