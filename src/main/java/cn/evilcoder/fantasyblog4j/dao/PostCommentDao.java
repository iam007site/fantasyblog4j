package cn.evilcoder.fantasyblog4j.dao;

import cn.evilcoder.fantasyblog4j.domain.PostComment;
import org.apache.ibatis.annotations.Param;

import java.util.ArrayList;

/**
 * User: evilcoder
 * Date: 2016/5/14
 * Time: 11:49
 */
public interface PostCommentDao {
  public long insert(PostComment comment);
  public ArrayList<PostComment> getPostComment(@Param("pid") long pid);
}
