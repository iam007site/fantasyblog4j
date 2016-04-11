package cn.evilcoder.fantasyblog4j.controller;

import cn.evilcoder.fantasyblog4j.domain.KeyValue;
import cn.evilcoder.fantasyblog4j.domain.PostDetailModel;
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

    @ResponseBody
    @RequestMapping(value = "search/{page}", method = RequestMethod.GET,params = {"kw","cat","tag"})
    public Object postList(@PathVariable("page") int page,
                           @RequestParam(value = "kw",required = false)String keyword,
                           @RequestParam(value = "cat",required = false)String category,
                           @RequestParam(value = "tag",required = false)String tag) {

        page = page>0?page:1;
        QueryModel queryModel = new QueryModel();
        queryModel.setPage(page);
        if(!StringUtils.isEmpty(keyword)){
            queryModel.setKeyword(keyword);
        }
        if(!StringUtils.isEmpty(category)){
            queryModel.setCategory(category);
        }
        if(!StringUtils.isEmpty(tag)){
            queryModel.setTag(tag);
        }

//        return "post/listPost";
        return queryModel;
    }
}
