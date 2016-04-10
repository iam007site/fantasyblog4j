package cn.evilcoder.fantasyblog4j.domain;

import java.util.ArrayList;
import java.util.Date;

/**
 * User: evilcoder
 * Date: 2016/4/10
 * Time: 17:41
 */
public class PostDetailModel {
  private long uid;
  private String username;
  private long pid;
  private String title;
  private String content;
  private String category;
  private int visitTime;
  private Date ctime;
  private ArrayList<String> tags;


  public long getUid() {
    return uid;
  }

  public void setUid(long uid) {
    this.uid = uid;
  }

  public String getUsername() {
    return username;
  }

  public void setUsername(String username) {
    this.username = username;
  }

  public long getPid() {
    return pid;
  }

  public void setPid(long pid) {
    this.pid = pid;
  }

  public String getTitle() {
    return title;
  }

  public void setTitle(String title) {
    this.title = title;
  }

  public String getContent() {
    return content;
  }

  public void setContent(String content) {
    this.content = content;
  }

  public String getCategory() {
    return category;
  }

  public void setCategory(String category) {
    this.category = category;
  }

  public int getVisitTime() {
    return visitTime;
  }

  public void setVisitTime(int visitTime) {
    this.visitTime = visitTime;
  }

  public Date getCtime() {
    return ctime;
  }

  public void setCtime(Date ctime) {
    this.ctime = ctime;
  }

  public ArrayList<String> getTags() {
    return tags;
  }

  public void setTags(ArrayList<String> tags) {
    this.tags = tags;
  }
}