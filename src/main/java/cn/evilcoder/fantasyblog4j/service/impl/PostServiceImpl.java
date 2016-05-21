package cn.evilcoder.fantasyblog4j.service.impl;

import cn.evilcoder.fantasyblog4j.commons.Common;
import cn.evilcoder.fantasyblog4j.dao.PostCommentDao;
import cn.evilcoder.fantasyblog4j.dao.PostDao;
import cn.evilcoder.fantasyblog4j.dao.PostTagDao;
import cn.evilcoder.fantasyblog4j.domain.*;
import cn.evilcoder.fantasyblog4j.domain.Model.PostDetailModel;
import cn.evilcoder.fantasyblog4j.domain.Model.PostItemModel;
import cn.evilcoder.fantasyblog4j.domain.Model.QueryModel;
import cn.evilcoder.fantasyblog4j.service.PostService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

/**
 * User: evilcoder
 * Date: 2016/4/10
 * Time: 13:59
 */
@Service
public class PostServiceImpl implements PostService {

    @Autowired
    private PostDao postDao;
    @Autowired
    private PostTagDao postTagDao;
    @Autowired
    private PostCommentDao postCommentDao;

    @Override
    @Transactional
    public boolean insertPost(Post post, String tagStr, String content) {
        postDao.insertPost(post);
        long pid = post.getId();
        if (pid > 0) {
            PostDetail detail = new PostDetail();
            detail.setCtime(post.getCtime());
            detail.setMtime(post.getMtime());
            detail.setPid(pid);
            detail.setContent(content);
            postDao.insertPostDetail(detail);

            ArrayList<PostTag> tags = new ArrayList<PostTag>();
            for (String name : tagStr.split(",")) {
                PostTag tag = new PostTag();
                tag.setPid(pid);
                tag.setUid(post.getUid());
                tag.setName(name);
                tag.setCtime(post.getCtime());
                tag.setMtime(post.getMtime());
                tags.add(tag);
            }

            postTagDao.insertBatch(tags);
        }
        return pid > 0;
    }

    @Override
    public PostDetailModel selectDetailWithState(long pid, int state) {
        PostDetailModel detailModel = postDao.selectPostDetailWithState(pid, state);
        setTagIntoPostDetailModel(detailModel);
        return detailModel;
    }
    @Override
    public PostDetailModel selectDetailWithoutState(long pid) {
        PostDetailModel detailModel = postDao.selectPostDetailWithoutState(pid);
        setTagIntoPostDetailModel(detailModel);
        return detailModel;
    }

    private void setTagIntoPostDetailModel(PostDetailModel detailModel) {
        if (detailModel != null) {
            ArrayList<String> tags = new ArrayList<String>();
            for (String name : detailModel.getTagsStr().split(Common.TAG_SPLITOR)) {
                tags.add(name);
            }
            detailModel.setTags(tags);
        }
    }

    @Override
    public ArrayList<KeyValue> getUserTags(long uid) {
        return postTagDao.selectUserPopularTags(uid);
    }

    @Override
    public ArrayList<KeyValue> getUserCats(long uid) {
        return postDao.getUserCats(uid);
    }

    @Override
    public ArrayList<KeyValue> getAllTags() {
        return postTagDao.getAllTags() ;
    }

    @Override
    public ArrayList<KeyValue> getAllCats() {
        return postDao.getAllCats();
    }

    @Override
    public int addPostViewTime(long pid) {
        return postDao.addPostViewTime(pid);
    }

    @Override
    public ArrayList<PostItemModel> search(QueryModel queryModel) {
        ArrayList<PostItemModel> result = postDao.search(queryModel);
        for (PostItemModel itemModel : result) {
            ArrayList<String> tags = new ArrayList<String>();
            for (String name : itemModel.getTagsStr().split(Common.TAG_SPLITOR)) {
                tags.add(name);
            }
            itemModel.setTags(tags);
        }
        return result;
    }

    @Override
    public ArrayList<Post> getPopPosts() {
        return postDao.getPopPosts();
    }

    @Override
    public ArrayList<Post> getNewPosts() {
        return postDao.getNewPosts();
    }

    @Override
    public int batchUpdatePostTags() {

        ArrayList<PostTag> postTags = postTagDao.getAll();
        ArrayList<Post> posts = new ArrayList<>();

        HashMap<Long,List<PostTag>> map = new HashMap<>();
        for(PostTag postTag:postTags){

            List<PostTag> old =map.containsKey(postTag.getPid())? map.get(postTag.getPid()):new ArrayList<PostTag>();
            old.add(postTag);
            map.put(postTag.getPid(),old);
        }

        for(Long pid:map.keySet()){
            Post post = new Post();
            post.setTags("");
            post.setId(pid);
            List<PostTag> list = map.get(pid);
            StringBuffer sb = new StringBuffer("");
            for(int i=0;i<list.size();i++){
                if(i!=list.size()-1){
                    sb.append(list.get(i).getName()).append(Common.TAG_SPLITOR);
                }else{
                    sb.append(list.get(i).getName());
                }
            }
            post.setTags(sb.toString());
            posts.add(post);
        }

        return postDao.batchUpdatePostTag(posts);
    }


    @Override
    public long addPostComment(PostComment comment) {
        return postCommentDao.insert(comment);
    }

    @Override
    public ArrayList<PostComment> getPostComment(long pid) {
        return postCommentDao.getPostComment(pid);
    }

    @Override
    public ArrayList<Post> getUserPostForManager(long uid, int offset, int pageSize) {

        return postDao.getUserPostForManager(uid,offset,pageSize);
    }
}
