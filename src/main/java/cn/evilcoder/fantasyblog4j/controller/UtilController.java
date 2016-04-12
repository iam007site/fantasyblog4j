package cn.evilcoder.fantasyblog4j.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * User: Huangshanqi
 * Date: 2016/4/12
 * Time: 12:21
 */
@Controller
@RequestMapping(value = "util")
public class UtilController {

    @RequestMapping(value = "contactus",method = RequestMethod.GET)
    public String contactUsPage(){
        return "util/contactUs";
    }

    @RequestMapping(value = "about",method = RequestMethod.GET)
    public String aboutPage(){
        return "util/about";
    }
}
