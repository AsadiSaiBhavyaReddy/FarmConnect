package com.klef.jfsd.springboot.model;



import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name = "expert_table")
public class Expert 
{
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "expert_id")
   private int id;
	@Column(name = "expert_name",nullable = false,length = 50)
   private String name;
	@Column(name = "expert_gender",nullable = false,length = 10)
   private String gender;
	@Column(name = "expert_dob",nullable = false,length = 20)
   private String dateofbirth;
	@Column(name = "expert_expertise",nullable = false,length = 100)
   private String expertise;
	@Column(name = "expert_email",nullable = false,unique = true,length = 100)
   private String email;
	@Column(name = "expert_password",nullable = false,length = 100)
   private String password;
	@Column(name = "expert_contactno",nullable = false,unique = true,length = 20)
   private String contactno;
	
	public boolean isStatus() {
		return status;
	}
	public void setStatus(boolean status) {
		this.status = status;
	}
	private boolean status;
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
	public String getDateofbirth() {
		return dateofbirth;
	}
	public void setDateofbirth(String dateofbirth) {
		this.dateofbirth = dateofbirth;
	}
	public String getExpertise() {
		return expertise;
	}
	public void setExpertise(String expertise) {
		this.expertise = expertise;
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
	public String getContactno() {
		return contactno;
	}
	public void setContactno(String contactno) {
		this.contactno = contactno;
	}
}
