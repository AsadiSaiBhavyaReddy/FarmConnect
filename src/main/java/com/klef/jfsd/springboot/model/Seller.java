package com.klef.jfsd.springboot.model;

import jakarta.persistence.*;

@Entity
@Table(name = "seller_table")
public class Seller 
{
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "seller_id")
    private int id;

    @Column(name = "seller_name", nullable = false, length = 50)
    private String name;

    @Column(name = "seller_gender", nullable = false, length = 10)
    private String gender;

    @Column(name = "seller_contactno", nullable = false, length = 10, unique = true)
    private String contactno;

    @Column(name = "seller_dateofbirth", nullable = false)
    private String dateofbirth;

    @Column(name = "seller_email", nullable = false, unique = true, length = 100)
    private String email;

    @Column(name = "seller_password", nullable = false, length = 100)
    private String password;

    @Column(name = "seller_business_name", nullable = false, length = 100)
    private String businessName;

    @Column(name = "seller_product_types", nullable = false, length = 255)
    private String productTypes;

    @Column(name = "seller_address", nullable = false, length = 255)
    private String address;

    @Column(name = "seller_registration_date", nullable = false)
    private String registrationDate;

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

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public String getContactno() {
        return contactno;
    }

    public void setContactno(String contactno) {
        this.contactno = contactno;
    }

    public String getDateofbirth() {
        return dateofbirth;
    }

    public void setDateofbirth(String dateofbirth) {
        this.dateofbirth = dateofbirth;
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

    public String getBusinessName() {
        return businessName;
    }

    public void setBusinessName(String businessName) {
        this.businessName = businessName;
    }

    public String getProductTypes() {
        return productTypes;
    }

    public void setProductTypes(String productTypes) {
        this.productTypes = productTypes;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getRegistrationDate() {
        return registrationDate;
    }

    public void setRegistrationDate(String registrationDate) {
        this.registrationDate = registrationDate;
    }
}
