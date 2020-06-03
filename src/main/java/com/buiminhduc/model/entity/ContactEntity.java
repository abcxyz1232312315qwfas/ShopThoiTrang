package com.buiminhduc.model.entity;

import com.buiminhduc.common.annotation.Column;
import com.buiminhduc.common.annotation.Entity;
import com.buiminhduc.common.annotation.Id;

@Entity(name = "contact")
public class ContactEntity {
    @Id(value = "id_contact")
    private Integer id;
    @Column(value = "yourName")
    private String yourName;
    @Column(value = "email")
    private String email;
    @Column(value = "subject")
    private String subject;
    @Column(value = "company")
    private String company;
    @Column(value = "messsage")
    private String messsage;

    public ContactEntity(String yourName, String email, String subject, String company, String messsage) {
        this.yourName = yourName;
        this.email = email;
        this.subject = subject;
        this.company = company;
        this.messsage = messsage;
    }

    public ContactEntity(Integer id, String yourName, String email, String subject, String company, String messsage) {
        this.id = id;
        this.yourName = yourName;
        this.email = email;
        this.subject = subject;
        this.company = company;
        this.messsage = messsage;
    }

    public ContactEntity() {
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getYourName() {
        return yourName;
    }

    public void setYourName(String yourName) {
        this.yourName = yourName;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getSubject() {
        return subject;
    }

    public void setSubject(String subject) {
        this.subject = subject;
    }

    public String getCompany() {
        return company;
    }

    public void setCompany(String company) {
        this.company = company;
    }

    public String getMesssage() {
        return messsage;
    }

    public void setMesssage(String messsage) {
        this.messsage = messsage;
    }

    @Override
    public String toString() {
        return "ContactEntity{" +
                "id='" + id + '\'' +
                ", yourName='" + yourName + '\'' +
                ", email=" + email +
                ", subject=" + subject +
                ", company=" + company +
                ", messsage=" + messsage +
                '}';
    }
}
