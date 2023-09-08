package com.klef.ep.services;

import java.util.List;

import javax.ejb.Remote;

import com.klef.ep.models.Employee;
@Remote
public interface EmployeeService {
	public String addEmployee(Employee emp);
	public String updateEmployee(Employee emp);
	public String deleteEmployee(String uname);
	public List<Employee> viewallEmployees();
	public Employee viewempbyid(String uname);

}
