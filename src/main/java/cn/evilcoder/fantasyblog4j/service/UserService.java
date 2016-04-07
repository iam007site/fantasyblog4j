package cn.evilcoder.fantasyblog4j.service;

import cn.evilcoder.fantasyblog4j.domain.User;

/**
 * User: evilcoder
 * Date: 2016/4/6
 * Time: 23:33
 */
public interface UserService {

  public static final String HASH_ALGORITHM = "SHA-1";
  public static final int HASH_INTERATIONS = 1024;
  public static final int SALT_SIZE = 200;

  public long insert(User user);
  public User select(long id);
}
