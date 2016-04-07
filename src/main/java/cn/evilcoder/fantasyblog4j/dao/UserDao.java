package cn.evilcoder.fantasyblog4j.dao;

import cn.evilcoder.fantasyblog4j.domain.User;
import org.apache.ibatis.annotations.Param;

/**
 * User: evilcoder
 * Date: 2016/4/7
 * Time: 20:41
 */
public interface UserDao {

  public long insert(User user);
  public User select(@Param("id") long id);
}
