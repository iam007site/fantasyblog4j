package cn.evilcoder.fantasyblog4j.service;

import cn.evilcoder.fantasyblog4j.domain.Post;

/**
 * User: evilcoder
 * Date: 2016/4/10
 * Time: 13:58
 */
public interface PostService {

  public boolean insertPost(Post post,String tagStr,String content);
}
