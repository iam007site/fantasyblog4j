package cn.evilcoder.fantasyblog4j.service.impl;

import cn.evilcoder.fantasyblog4j.dao.UserDao;
import cn.evilcoder.fantasyblog4j.domain.User;
import cn.evilcoder.fantasyblog4j.service.UserService;
import cn.evilcoder.fantasyblog4j.utils.encrypt.Digests;
import cn.evilcoder.fantasyblog4j.utils.encrypt.Encodes;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * User: evilcoder
 * Date: 2016/4/7
 * Time: 20:41
 */
@Service
public class UserServiceImpl implements UserService {
  @Autowired
  private UserDao userDao;

  @Override
  public long insert(User user) {

    byte[] salt = Digests.generateSalt(SALT_SIZE);
    user.setSalt(Encodes.encodeHex(salt));
    byte[] hashPassword = Digests.sha1(user.getPassword().getBytes(),salt,HASH_INTERATIONS);
    user.setPassword(Encodes.encodeHex(hashPassword));

    return userDao.insert(user);
  }

  @Override
  public User select(long id) {
    return userDao.select(id);
  }
}
