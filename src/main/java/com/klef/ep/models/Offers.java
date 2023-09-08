package com.klef.ep.models;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="employee_offers")
public class Offers implements Serializable{
  
  private static final long serialVersionUID = 1L;
  
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

  public int getOpenings() {
    return openings;
  }

  public void setOpenings(int openings) {
    this.openings = openings;
  }

  public String getLocation() {
    return location;
  }

  public void setLocation(String location) {
    this.location = location;
  }

  public double getSalary() {
    return salary;
  }

  public void setSalary(double salary) {
    this.salary = salary;
  }

  public String getStarted() {
    return started;
  }

  public void setStarted(String started) {
    this.started = started;
  }

  public String getProcess() {
    return process;
  }

  public void setProcess(String process) {
    this.process = process;
  }

  @Id
  private String title;
  
  @Column(name = "company", nullable = false,length = 30)
  private String company;
  
  @Column(name="open",nullable=false,length = 7)
  private int openings;
  
  @Column(name="location",nullable=false,length=20)
  private String location;
  
  @Column(name="salary",nullable = false,length = 7)
  private double salary;

  @Column(name="started",nullable= false,length= 30)
  private String started;
  
  @Column(name="process", nullable=false,length=30)
  private String process;
  
  @Column(name="tag1", nullable=false,length=30)
  private String tag1;
  
  public String getTag1() {
    return tag1;
  }

  public void setTag1(String tag1) {
    this.tag1 = tag1;
  }

  public String getTag2() {
    return tag2;
  }

  public void setTag2(String tag2) {
    this.tag2 = tag2;
  }

  @Column(name="tag2", nullable=false,length=30)
  private String tag2;
  
  @Column(name="experience", nullable=false,length=30)
  private String experience;

  public String getExperience() {
    return experience;
  }

  public void setExperience(String experience) {
    this.experience = experience;
  }

}