package cn.evilcoder.fantasyblog4j.service.impl;

import cn.evilcoder.fantasyblog4j.dao.TestDao;
import cn.evilcoder.fantasyblog4j.domain.Test;
import cn.evilcoder.fantasyblog4j.service.TestService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * User: Huangshanqi
 * Date: 2016/4/7
 * Time: 11:27
 */
@Service
public class TestServiceImpl implements TestService {

    @Autowired
    TestDao testDao;

    @Override
    public long insertTest(Test test) {
        return testDao.insertTest(test);
    }
}
