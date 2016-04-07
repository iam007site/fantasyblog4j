package cn.evilcoder.fantasyblog4j.controller;


import cn.evilcoder.fantasyblog4j.domain.Test;
import cn.evilcoder.fantasyblog4j.service.TestService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 * User: Huangshanqi
 * Date: 2016/4/7
 * Time: 9:54
 */
@Controller
@RequestMapping(value = "test")
public class TestController {

    @Autowired
    private TestService testService;

    @ResponseBody
    @RequestMapping(value = "/{num}",method = RequestMethod.GET)
    public Object test(@PathVariable int num){
        System.out.println(num);
        Test test = new Test(0L,"hsq","1312");
        testService.insertTest(test);
        return test.getId();
    }
}
