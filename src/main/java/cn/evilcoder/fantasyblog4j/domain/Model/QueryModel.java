package cn.evilcoder.fantasyblog4j.domain.Model;

import java.io.Serializable;

/**
 * User: Huangshanqi
 * Date: 2016/4/11
 * Time: 11:46
 */
public class QueryModel implements Serializable {
    private long uid;
    private int page=1;
    private int pageSize = 15;
    private int offset = 0;
    private String category;
    private String tag;
    private String keyword;

    public long getUid() {
        return uid;
    }

    public void setUid(long uid) {
        this.uid = uid;
    }

    public int getPage() {
        return page;
    }

    public void setPage(int page) {
        this.page = page;
        this.offset = (this.page-1)*pageSize;
    }

    public String getCategory() {
        return category;
    }

    public void setCategory(String category) {
        this.category = category;
    }

    public String getTag() {
        return tag;
    }

    public void setTag(String tag) {
        this.tag = tag;
    }

    public String getKeyword() {
        return keyword;
    }

    public void setKeyword(String keyword) {
        this.keyword = keyword;
    }

    public int getPageSize() {
        return pageSize;
    }

    public void setPageSize(int pageSize) {
        this.pageSize = pageSize;
        this.offset = (this.page-1)*this.pageSize;
    }

    public int getOffset() {
        return offset;
    }

    public void setOffset(int offset) {
        this.offset = offset;
    }
}
