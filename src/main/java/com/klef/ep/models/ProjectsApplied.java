package com.klef.ep.models;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class ProjectsApplied implements Serializable{
  private static final long serialVersionUID = 1L;
  
  @Id
  private int count;
  
  @Column(name="title", length=30,nullable =false)
  private String title;
  
  @Column(name="company",length=30,nullable=false)
  private String company;
  
  @Column(name="empusername",length=30,nullable=false)
  private String empusername;
  
  @Column(name="currentstatus",length=30,nullable=false)
  private String currentstatus;

  public int getCount() {
    return count;
  }

  public void setCount(int count) {
    this.count = count;
  }

  public String getTitle() {
    return title;
  }

  public void setTitle(String title) {
    this.title = title;
  }

  public String getCompany() {
    return company;
  }

  public void setCompany(String company) {
    this.company = company;
  }

  public String getEmpusername() {
    return empusername;
  }

  public void setEmpusername(String empusername) {
    this.empusername = empusername;
  }

  public String getCurrentstatus() {
    return currentstatus;
  }

  public void setCurrentstatus(String currentstatus) {
    this.currentstatus = currentstatus;
  }

  
  
}