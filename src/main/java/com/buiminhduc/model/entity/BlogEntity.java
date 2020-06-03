package com.buiminhduc.model.entity;

import com.buiminhduc.common.annotation.Column;
import com.buiminhduc.common.annotation.Entity;
import com.buiminhduc.common.annotation.Id;

import java.time.LocalDate;
@Entity(name = "BLOG")
public class BlogEntity {
    @Id(value = "Id_Blog")
    private Integer id;
    @Column(value = "Title")
    private String title;
    @Column(value = "Image")
    private String image;
    @Column(value = "Content")
    private String content;
    @Column(value = "CreatedDate")
    private LocalDate createdDate;
    @Column(value = "CreatedBy")
    private Integer createdBy;
    @Column(value = "Id_Category")
    private Integer idCategory;

    public BlogEntity() {
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public LocalDate getCreatedDate() {
        return createdDate;
    }

    public void setCreatedDate(LocalDate createdDate) {
        this.createdDate = createdDate;
    }

    public Integer getCreatedBy() {
        return createdBy;
    }

    public void setCreatedBy(Integer createdBy) {
        this.createdBy = createdBy;
    }

    public Integer getIdCategory() {
        return idCategory;
    }

    public void setIdCategory(Integer idCategory) {
        this.idCategory = idCategory;
    }

    @Override
    public String toString() {
        return "BlogEntity{" +
                "id=" + id +
                ", title='" + title + '\'' +
                ", image='" + image + '\'' +
                ", content='" + content + '\'' +
                ", createdDate=" + createdDate +
                ", createdBy=" + createdBy +
                ", idCategory=" + idCategory +
                '}';
    }
}
