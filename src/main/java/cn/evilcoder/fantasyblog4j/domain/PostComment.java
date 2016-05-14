package cn.evilcoder.fantasyblog4j.domain;

/**
 * User: evilcoder
 * Date: 2016/5/14
 * Time: 11:45
 */
public class PostComment extends BaseDomain {
  private long pid;
  private String username;
  private String email;
  private String content;

  public long getPid() {
    return pid;
  }

  public void setPid(long pid) {
    this.pid = pid;
  }

  public String getUsername() {
    return username;
  }

  public void setUsername(String username) {
    this.username = username;
  }

  public String getEmail() {
    return email;
  }

  public void setEmail(String email) {
    this.email = email;
  }

  public String getContent() {
    return content;
  }

  public void setContent(String content) {
    this.content = content;
  }
}
