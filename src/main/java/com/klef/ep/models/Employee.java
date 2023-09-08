package com.klef.ep.models;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "employee_table")
public class Employee implements Serializable{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	@Id
	@Column(name = "euser",length = 50,nullable = false,unique = true)
	private String username;
	@Column(name="efname",length = 50,nullable = false)
	private String firstname;
	@Column(name="elname",length = 50,nullable = false)
	private String lastname;
	@Column(name="eemail",length = 50,nullable = false)
	private String email;
	@Column(name="egender",length = 10,nullable = false)
	private String gender;
	@Column(name="edob",length = 15,nullable = false)
	private String dob;
	@Column(name="eage",length = 3,nullable = false)
	private int age;
	@Column(name="epwd",length = 50,nullable = false)
	private String password;
	@Column(name="econtact",length = 15,nullable = false,unique = true)
	private String contact;
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getFirstname() {
		return firstname;
	}
	public void setFirstname(String firstname) {
		this.firstname = firstname;
	}
	public String getLastname() {
		return lastname;
	}
	public void setLastname(String lastname) {
		this.lastname = lastname;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getDob() {
		return dob;
	}
	public void setDob(String dob) {
		this.dob = dob;
	}
	public int getAge() {
		return age;
	}
	public void setAge(int age) {
		this.age = age;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getContact() {
		return contact;
	}
	public void setContact(String contact) {
		this.contact = contact;
	}
}
