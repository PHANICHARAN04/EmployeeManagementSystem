package com.klef.ep.controllers;

import java.util.List;

import javax.ejb.EJB;
import javax.ws.rs.Consumes;
import javax.ws.rs.DELETE;
import javax.ws.rs.GET;
import javax.ws.rs.POST;
import javax.ws.rs.PUT;
import javax.ws.rs.Path;
import javax.ws.rs.PathParam;
import javax.ws.rs.Produces;
import javax.ws.rs.QueryParam;
import javax.ws.rs.core.MediaType;

import com.klef.ep.models.Employee;
import com.klef.ep.services.EmployeeService;
@Path("ecentrance")
public class EmployeeServicesController {
	@EJB(lookup = "java:global/EmaProject/EmployeeServicesImpl!com.klef.ep.services.EmployeeService")
	EmployeeService empservice;
	@POST
	@Path("addemp")
	@Produces(MediaType.TEXT_PLAIN)
	@Consumes(MediaType.APPLICATION_JSON)
	public String addemp(Employee emp) {
		return empservice.addEmployee(emp);
	}
	@PUT
	@Path("updateemp")
	@Produces(MediaType.TEXT_PLAIN)
	@Consumes(MediaType.APPLICATION_JSON)
	public String updateemp(Employee emp) {
		return empservice.updateEmployee(emp);
	}
	@DELETE
	@Path("deleteemp/{username}")
	@Produces(MediaType.TEXT_PLAIN)
	public String deleteemp(@PathParam("username")String uname) {
		return empservice.deleteEmployee(uname);
		
	}
	
	@GET
	@Path("viewallemps")
	@Produces(MediaType.APPLICATION_JSON)
	public List<Employee> viewallemps(){
		return empservice.viewallEmployees();
	}

	@GET
	@Path("viewempbyid")
	@Produces(MediaType.APPLICATION_JSON)
	public Employee viewempbyid(@QueryParam("username")String uname) {
		return empservice.viewempbyid(uname);
	}
}
