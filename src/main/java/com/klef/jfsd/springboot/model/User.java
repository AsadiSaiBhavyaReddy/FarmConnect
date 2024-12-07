package com.klef.jfsd.springboot.model;

import jakarta.persistence.*;

@Entity
@Table(name = "user_table")
public class User {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;

    @Column(name ="user_name",nullable = false, length = 100)
    private String name;

    @Column(name ="user_gender",nullable = false, length = 10)
    private String gender;

    @Column(name ="user_contactno",nullable = false, length = 10, unique = true)
    private String contact;

    @Column(name ="user_dob",nullable = false,length = 100)
    private String dob;

    @Column(name ="user_email",nullable = false, unique = true, length = 100)
    private String email;

    @Column(name ="user_password",nullable = false, length = 100)
    private String password;

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

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public String getContact() {
        return contact;
    }

    public void setContact(String contact) {
        this.contact = contact;
    }

    public String getDob() {
        return dob;
    }

    public void setDob(String dob) {
        this.dob = dob;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }
}
