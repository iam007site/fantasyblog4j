package cn.evilcoder.fantasyblog4j.domain;

/**
 * User: evilcoder
 * Date: 2016/4/9
 * Time: 12:57
 */
public class PostTag extends BaseDomain{
  private long uid;
  private long pid;
  private String name;
  private int num;

  public long getUid() {
    return uid;
  }

  public void setUid(long uid) {
    this.uid = uid;
  }

  public long getPid() {
    return pid;
  }

  public void setPid(long pid) {
    this.pid = pid;
  }

  public String getName() {
    return name;
  }

  public void setName(String name) {
    this.name = name;
  }

  public int getNum() {
    return num;
  }

  public void setNum(int num) {
    this.num = num;
  }
}
