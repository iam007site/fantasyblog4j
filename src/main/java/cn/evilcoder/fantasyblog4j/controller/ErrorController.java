package cn.evilcoder.fantasyblog4j.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * User: Huangshanqi
 * Date: 2016/4/7
 * Time: 15:28
 */
@Controller
@RequestMapping(value = "error")
public class ErrorController {

    @RequestMapping(value = "404")
    public String error404(){
        return "404";
    }

    @RequestMapping(value = "401")
    public String error401(){
        return "401";
    }

    @RequestMapping(value = "500")
    public String error500(){
        return "500";
    }
}
