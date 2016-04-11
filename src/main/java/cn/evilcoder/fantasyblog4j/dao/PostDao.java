package cn.evilcoder.fantasyblog4j.dao;

import cn.evilcoder.fantasyblog4j.domain.*;
import org.apache.ibatis.annotations.Param;

import java.util.ArrayList;

/**
 * User: evilcoder
 * Date: 2016/4/9
 * Time: 13:08
 */
public interface PostDao {
  public long insertPost(Post post);
  public long insertPostDetail(PostDetail PostDetail);
  public PostDetailModel selectPostDetail(@Param("pid") long pid);
  public int addPostViewTime(@Param("pid") long pid);
  public ArrayList<PostItemModel> search(QueryModel queryModel);
}
