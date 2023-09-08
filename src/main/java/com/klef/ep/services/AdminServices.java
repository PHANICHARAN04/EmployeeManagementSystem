package com.klef.ep.services;

import java.util.List;

import javax.ejb.Remote;

import com.klef.ep.models.Admin;
@Remote
public interface AdminServices {
	public String addEmployee(Admin emp);
	public String updateEmployee(Admin emp);
	public String deleteEmployee(String uname);
	public List<Admin> viewallEmployees();
	public Admin viewempbyid(String uname);

}
