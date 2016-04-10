package cn.evilcoder.fantasyblog4j.controller.forms;

import java.io.Serializable;

/**
 * User: evilcoder
 * Date: 2016/4/10
 * Time: 13:04
 */
public class NewPostForm implements Serializable {
  private String title;
  private String category;
  private String tag;
  private String content;

  public String getTitle() {
    return title;
  }

  public void setTitle(String title) {
    this.title = title;
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

  public String getContent() {
    return content;
  }

  public void setContent(String content) {
    this.content = content;
  }
}
