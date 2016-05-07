package cn.evilcoder.fantasyblog4j.service;

import cn.evilcoder.fantasyblog4j.domain.*;
import cn.evilcoder.fantasyblog4j.domain.Model.PostDetailModel;
import cn.evilcoder.fantasyblog4j.domain.Model.PostItemModel;
import cn.evilcoder.fantasyblog4j.domain.Model.QueryModel;

import java.util.ArrayList;

/**
 * User: evilcoder
 * Date: 2016/4/10
 * Time: 13:58
 */
public interface PostService {

    public boolean insertPost(Post post, String tagStr, String content);

    public PostDetailModel selectDetail(long pid);

    public ArrayList<KeyValue> getUserTags(long uid);
    public ArrayList<KeyValue> getUserCats(long uid);
    public ArrayList<KeyValue> getAllTags();
    public ArrayList<KeyValue> getAllCats();

    public int addPostViewTime(long pid);

    public ArrayList<PostItemModel> search(QueryModel queryModel);

    public ArrayList<Post> getPopPosts();
    public ArrayList<Post> getNewPosts();
}
