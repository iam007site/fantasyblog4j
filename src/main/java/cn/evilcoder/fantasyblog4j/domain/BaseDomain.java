package cn.evilcoder.fantasyblog4j.domain;

import java.io.Serializable;
import java.util.Date;

/**
 * User: evilcoder
 * Date: 2016/4/7
 * Time: 20:47
 */
public class BaseDomain implements Serializable {
  private long id;
  private Date ctime;
  private Date mtime;

  public BaseDomain() {
  }

  public BaseDomain(long id, Date ctime, Date mtime) {
    this.id = id;
    this.ctime = ctime;
    this.mtime = mtime;
  }

  public long getId() {
    return id;
  }

  public void setId(long id) {
    this.id = id;
  }

  public Date getCtime() {
    return ctime;
  }

  public void setCtime(Date ctime) {
    this.ctime = ctime;
  }

  public Date getMtime() {
    return mtime;
  }

  public void setMtime(Date mtime) {
    this.mtime = mtime;
  }
}
