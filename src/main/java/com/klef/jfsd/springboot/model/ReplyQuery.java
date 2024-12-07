package com.klef.jfsd.springboot.model;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name = "reply_query_table")
public class ReplyQuery {

  @Id
  @GeneratedValue(strategy = GenerationType.IDENTITY)
  @Column(name = "reply_id")
  private int id;
  
  @Column(name = "query_id", nullable = false)
  private int queryId;  // This will store the reference to the related query.
  
  @Column(name = "reply_description", nullable = false, length = 1000)
  private String reply;  // The expert's reply to the query.
  
  @Column(name = "expert_name", nullable = false, length = 100)
  private String expertName;  // Name of the expert replying.
  
  @Column(name = "timestamp", nullable = false)
  private String timestamp;  // To record when the reply was made.
  
  @Column(name = "reply_url", length = 200)
  private String replyUrl;  // URL for more resources or external links related to the reply.

  // Getters and Setters

  public int getId() {
    return id;
  }

  public void setId(int id) {
    this.id = id;
  }

  public int getQueryId() {
    return queryId;
  }

  public void setQueryId(int queryId) {
    this.queryId = queryId;
  }

  public String getReply() {
    return reply;
  }

  public void setReply(String reply) {
    this.reply = reply;
  }

  public String getExpertName() {
    return expertName;
  }

  public void setExpertName(String expertName) {
    this.expertName = expertName;
  }

  public String getTimestamp() {
    return timestamp;
  }

  public void setTimestamp(String timestamp) {
    this.timestamp = timestamp;
  }

  public String getReplyUrl() {
    return replyUrl;
  }

  public void setReplyUrl(String replyUrl) {
    this.replyUrl = replyUrl;
  }
}
