package com.klef.jfsd.springboot.model;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name = "query_table")
public class Query {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "query_id")
    private int id;

    @Column(name = "farmer_name", nullable = false, length = 100)
    private String name;

    @Column(name = "contact_no", nullable = false, length = 15)
    private String contactNo;

    @Column(name = "query_details", nullable = false, length = 500)
    private String query;

    // Default constructor
    public Query() {}

    // Parameterized constructor
    public Query(int id, String name, String contactNo, String query) {
        this.id = id;
        this.name = name;
        this.contactNo = contactNo;
        this.query = query;
    }

    // Getters and setters
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

    public String getContactNo() {
        return contactNo;
    }

    public void setContactNo(String contactNo) {
        this.contactNo = contactNo;
    }

    public String getQuery() {
        return query;
    }

    public void setQuery(String query) {
        this.query = query;
    }

    @Override
    public String toString() {
        return "Query [id=" + id + ", name=" + name + ", contactNo=" + contactNo + ", query=" + query + "]";
    }
}
