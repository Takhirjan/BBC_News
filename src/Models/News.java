package Models;

import java.sql.Blob;
import java.sql.Timestamp;

public class News {
  private Long id;
  private String title;
  private String content;
  private Timestamp postdate;


  public News() {
    this.id = id;
    this.title = title;
    this.content = content;
    this.postdate = postdate;
  }

  public Long getId() {
    return id;
  }

  public void setId(Long id) {
    this.id = id;
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

  public Timestamp getPostdate() {
    return postdate;
  }

  public void setPostdate(Timestamp postdate) {
    this.postdate = postdate;
  }
}
