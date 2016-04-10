package cn.evilcoder.fantasyblog4j.domain;

import java.io.Serializable;

/**
 * User: evilcoder
 * Date: 2016/4/10
 * Time: 20:29
 */
public class KeyValue implements Serializable {
  private Object k;
  private Object v;

  public Object getK() {
    return k;
  }

  public void setK(Object k) {
    this.k = k;
  }

  public Object getV() {
    return v;
  }

  public void setV(Object v) {
    this.v = v;
  }
}
