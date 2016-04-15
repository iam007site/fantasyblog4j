package cn.evilcoder.fantasyblog4j.service.impl;

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
    public PostDetailModel selectDetail(long pid) {
        PostDetailModel detailModel = postDao.selectPostDetail(pid);
        if (detailModel != null) {
            ArrayList<PostTag> postTags = postTagDao.selectPostTags(pid);
            ArrayList<String> tags = new ArrayList<String>();
            for (PostTag postTag : postTags) {
                tags.add(postTag.getName());
            }
            detailModel.setTags(tags);
        }
        return detailModel;
    }

    @Override
    public ArrayList<KeyValue> getUserTags(long uid) {
        return postTagDao.selectUserPopularTags(uid);
    }

    @Override
    public int addPostViewTime(long pid) {
        return postDao.addPostViewTime(pid);
    }

    @Override
    public ArrayList<PostItemModel> search(QueryModel queryModel) {
        return postDao.search(queryModel);
    }

    @Override
    public ArrayList<Post> getPopPosts() {
        return postDao.getPopPosts();
    }

    @Override
    public ArrayList<Post> getNewPosts() {
        return postDao.getNewPosts();
    }
}
