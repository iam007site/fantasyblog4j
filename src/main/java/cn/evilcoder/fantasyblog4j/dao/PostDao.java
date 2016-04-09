package cn.evilcoder.fantasyblog4j.dao;

import cn.evilcoder.fantasyblog4j.domain.Post;
import org.apache.ibatis.annotations.Param;

/**
 * User: evilcoder
 * Date: 2016/4/9
 * Time: 13:08
 */
public interface PostDao {
  public long insert(@Param("post")Post post);
  public Post selectDetail(@Param("pid") long pid);

}
