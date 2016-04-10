package cn.evilcoder.fantasyblog4j.dao;

import cn.evilcoder.fantasyblog4j.domain.Post;
import cn.evilcoder.fantasyblog4j.domain.PostDetail;

/**
 * User: evilcoder
 * Date: 2016/4/9
 * Time: 13:08
 */
public interface PostDao {
  public long insertPost(Post post);
  public long insertPostDetail(PostDetail PostDetail);
//  public Post selectDetail(@Param("pid") long pid);

}
