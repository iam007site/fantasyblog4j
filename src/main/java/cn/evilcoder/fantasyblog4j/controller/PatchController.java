package cn.evilcoder.fantasyblog4j.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Created by huangshanqi on 2016/5/13.
 */
@Controller
public class PatchController {
    /**
     * z主要是应对博客迁移的路径跳转
     */

    /**
     * 旧博客的标签以及分类搜索
     * @param kw
     * @return
     */
    @RequestMapping(value = {"/tags/{kw}","/category/{kw}"},method = RequestMethod.GET)
    public Object tagSearch(@PathVariable("kw") String kw){
        return "redirect:/post/search/0/0/0/1?kw="+kw;
    }

    /**
     * 旧博客的博客搜索
     * @return
     */
    @RequestMapping(value = "/post/leetcode-java/{postName}",method = RequestMethod.GET)
    public Object postDetailSearch(@PathVariable("postName") String postName){
        return "redirect:/post/search/0/0/0/1?kw="+(postName.split("-").length>1 ? postName.split("-")[0] : postName);
    }

    @RequestMapping(value = "/post/{category}/{postName}",method = RequestMethod.GET)
    public Object postDetailSearch2(@PathVariable("postName") String postName){
        return "redirect:/post/search/0/0/0/1?kw=";
    }


}
