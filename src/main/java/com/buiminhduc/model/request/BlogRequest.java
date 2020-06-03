package com.buiminhduc.model.request;

import com.buiminhduc.common.annotation.Column;
import com.buiminhduc.common.annotation.Id;

import java.time.LocalDate;

public class BlogRequest {
    private String title;
    private String image;
    private String content;
    private LocalDate createdDate;
    private Integer createdBy;
    private Integer idCategory;

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
                ", title='" + title + '\'' +
                ", image='" + image + '\'' +
                ", content='" + content + '\'' +
                ", createdDate=" + createdDate +
                ", createdBy=" + createdBy +
                ", idCategory=" + idCategory +
                '}';
    }
}
