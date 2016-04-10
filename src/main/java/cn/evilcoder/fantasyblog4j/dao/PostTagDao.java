package cn.evilcoder.fantasyblog4j.dao;

import cn.evilcoder.fantasyblog4j.domain.KeyValue;
import cn.evilcoder.fantasyblog4j.domain.PostTag;
import org.apache.ibatis.annotations.Param;

import java.util.ArrayList;

/**
 * User: evilcoder
 * Date: 2016/4/9
 * Time: 12:58
 */
public interface PostTagDao {
  public long insert(PostTag postTag);
  public void insertBatch(@Param("tags") ArrayList<PostTag> tags);
  public ArrayList<PostTag> selectUserTags(@Param("uid") long uid);
  public ArrayList<PostTag> selectPostTags(@Param("pid") long pid);
  public ArrayList<KeyValue> selectUserPopularTags(@Param("uid") long uid);

}
