package cn.evilcoder.fantasyblog4j.test;

import cn.evilcoder.fantasyblog4j.service.PostService;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.AbstractJUnit4SpringContextTests;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
/**
 * User: Huangshanqi
 * Date: 2016/4/11
 * Time: 14:51
 */
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {"classpath:/spring/root-context.xml","classpath:/spring/appServlet/springmvc-conf.xml",
        "classpath:cn/evilcoder/fantasyblog4j/mapper/PostDao.xml"})
public class PostServiceTest extends AbstractJUnit4SpringContextTests {

    @Autowired
    private PostService postService;

    @Test
    public void testPost(){
        int num = postService.addPostViewTime(100001);
        System.out.println(num);
    }


}
