package cn.evilcoder.fantasyblog4j.domain;

/**
 * User: evilcoder
 * Date: 2016/4/10
 * Time: 13:56
 */
public class PostDetail extends BaseDomain {

  private long pid;
  private String content;

  public long getPid() {
    return pid;
  }

  public void setPid(long pid) {
    this.pid = pid;
  }

  public String getContent() {
    return content;
  }

  public void setContent(String content) {
    this.content = content;
  }
}
