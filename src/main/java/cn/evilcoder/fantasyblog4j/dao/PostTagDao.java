package cn.evilcoder.fantasyblog4j.dao;

import cn.evilcoder.fantasyblog4j.domain.PostTag;
import org.apache.ibatis.annotations.Param;

import java.util.ArrayList;

/**
 * User: evilcoder
 * Date: 2016/4/9
 * Time: 12:58
 */
public interface PostTagDao {
  public long insert(@Param("postTag")PostTag postTag);
  public ArrayList<PostTag> selectAll(@Param("uid") long uid);
}
