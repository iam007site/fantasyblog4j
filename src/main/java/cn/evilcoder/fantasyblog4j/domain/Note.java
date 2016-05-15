package cn.evilcoder.fantasyblog4j.domain;

import cn.evilcoder.fantasyblog4j.commons.Common;

/**
 * User: evilcoder
 * Date: 2016/5/15
 * Time: 11:07
 */
public class Note extends BaseDomain {
  /**
   * 随手记
   */
  private long uid;
  private String username;
  private String content;
  private int state = Common.NoteState.PUBLIC;

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

  public String getContent() {
    return content;
  }

  public void setContent(String content) {
    this.content = content;
  }

  public int getState() {
    return state;
  }

  public void setState(int state) {
    this.state = state;
  }
}
