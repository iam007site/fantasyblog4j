package cn.evilcoder.fantasyblog4j.controller;

import cn.evilcoder.fantasyblog4j.domain.KeyValue;
import cn.evilcoder.fantasyblog4j.domain.Model.PostDetailModel;
import cn.evilcoder.fantasyblog4j.domain.Model.PostItemModel;
import cn.evilcoder.fantasyblog4j.domain.Model.QueryModel;
import cn.evilcoder.fantasyblog4j.domain.Post;
import cn.evilcoder.fantasyblog4j.service.PostService;
import com.fasterxml.jackson.databind.util.BeanUtil;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.BeanUtils;
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

        ArrayList<Post> popPosts = postService.getPopPosts();
        ArrayList<Post> newPosts = postService.getNewPosts();
        request.setAttribute("popPosts",popPosts);
        request.setAttribute("newPosts",newPosts);
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
        queryModel.setKeyword(StringUtils.isEmpty(keyword)?null:keyword);
        queryModel.setPage(page);
        ArrayList<PostItemModel> list = postService.search(queryModel);
        request.setAttribute("posts",list);
        queryModel.setCategory(category);
        queryModel.setTag(tag);
        queryModel.setKeyword(keyword);
        request.setAttribute("query",queryModel);
        return "post/listPost";
    }

    @RequestMapping(value = "cats/3d",method = RequestMethod.GET)
    public String categoriesPage(HttpServletRequest request){
        ArrayList<KeyValue> popCats = postService.getAllCats();
        request.setAttribute("popCats", popCats);
        logger.info("==============="+popCats.size());
        return "post/postCats";
    }

    @RequestMapping(value = "tags/3d",method = RequestMethod.GET)
    public String tagsPage(HttpServletRequest request){
        ArrayList<KeyValue> popTags = postService.getAllTags();
        request.setAttribute("popTags", popTags);
        return "post/postTags";
    }

    @ResponseBody
    @RequestMapping(value = "pop/list",method = RequestMethod.GET)
    public Object getPopPosts(){
         return postService.getPopPosts();
    }

    @ResponseBody
    @RequestMapping(value = "new/list",method = RequestMethod.GET)
    public Object getNewPosts(){
        return postService.getNewPosts();
    }

    @ResponseBody
    @RequestMapping(value = "cats/list",method = RequestMethod.GET)
    public Object getPostCats(){
        return postService.getAllCats();
    }

    @ResponseBody
    @RequestMapping(value = "tags/list",method = RequestMethod.GET)
    public Object getPostTags(){
        return postService.getAllTags();
    }
}
