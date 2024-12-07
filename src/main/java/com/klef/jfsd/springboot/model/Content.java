package com.klef.jfsd.springboot.model;

import java.sql.Blob;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name = "content_table")
public class Content 
{
  @Id
  @GeneratedValue(strategy = GenerationType.IDENTITY)
  @Column(name = "content_id", nullable = false) // ID is mandatory
  private int id;
  
  @Column(name = "content_name", nullable = false, length = 100) // Name is mandatory
  private String name;

  @Column(name = "content_image", nullable = true) // Image is optional
  private Blob image;

  @Column(name = "content_description", nullable = true, length = 500) // Description is optional
  private String description;

  @Column(name = "content_url", length = 200, nullable = true) // URL is optional
  private String url;

  @Column(name = "content_pdf_upload", nullable = true) // PDF upload is optional
  private Blob pdfUpload;

  // Default constructor
  public Content() {
  }

  // Parameterized constructor
  public Content(int id, String name, Blob image, String description, String url, Blob pdfUpload) {
    this.id = id;
    this.name = name;
    this.image = image;
    this.description = description;
    this.url = url;
    this.pdfUpload = pdfUpload;
  }

  // Getters and Setters
  public int getId() {
    return id;
  }

  public void setId(int id) {
    this.id = id;
  }

  public String getName() {
    return name;
  }

  public void setName(String name) {
    this.name = name;
  }

  public Blob getImage() {
    return image;
  }

  public void setImage(Blob image) {
    this.image = image;
  }

  public String getDescription() {
    return description;
  }

  public void setDescription(String description) {
    this.description = description;
  }

  public String getUrl() {
    return url;
  }

  public void setUrl(String url) {
    this.url = url;
  }

  public Blob getPdfUpload() {
    return pdfUpload;
  }

  public void setPdfUpload(Blob pdfUpload) {
    this.pdfUpload = pdfUpload;
  }
}
