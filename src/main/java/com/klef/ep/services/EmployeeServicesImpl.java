package com.klef.ep.services;

import java.util.List;

import javax.ejb.Stateless;
import javax.ejb.TransactionManagement;
import javax.ejb.TransactionManagementType;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.persistence.Query;

import com.klef.ep.models.Employee;
@Stateless
@TransactionManagement(TransactionManagementType.BEAN)
public class EmployeeServicesImpl implements EmployeeService{

	public String addEmployee(Employee emp) {
		EntityManagerFactory emf = Persistence.createEntityManagerFactory("EmaProject");
		EntityManager em = emf.createEntityManager();
		em.getTransaction().begin();
		em.persist(emp);
		em.getTransaction().commit();
		em.close();
		emf.close();
		return "Record Inserted Successfully";
	}

	public String updateEmployee(Employee emp) {
		EntityManagerFactory emf = Persistence.createEntityManagerFactory("EmaProject");
		EntityManager em = emf.createEntityManager();
		em.getTransaction().begin();
		Employee e = em.find(Employee.class, emp.getUsername());
		e.setEmail(emp.getEmail());
		e.setContact(emp.getContact());
		e.setPassword(emp.getPassword());
		e.setUsername(emp.getUsername());
		em.getTransaction().commit();
		em.close();
		emf.close();
		return "Record Updated Successfully";
	}

	public String deleteEmployee(String uname) {
		EntityManagerFactory emf = Persistence.createEntityManagerFactory("EmaProject");
		EntityManager em = emf.createEntityManager();
		em.getTransaction().begin();
		Employee e = em.find(Employee.class, uname);
		em.remove(e);
		em.getTransaction().commit();
		em.close();
		emf.close();
		return "Record Deleted Successfully";
	}

	public List<Employee> viewallEmployees() {
		EntityManagerFactory emf = Persistence.createEntityManagerFactory("EmaProject");
		EntityManager em = emf.createEntityManager();
		em.getTransaction().begin();
		Query qry = em.createQuery("select e from Employee e");
		List<Employee> emplist  = qry.getResultList();
		return emplist;
	}

	public Employee viewempbyid(String uname) {
		EntityManagerFactory emf = Persistence.createEntityManagerFactory("EmaProject");
		EntityManager em = emf.createEntityManager();
		em.getTransaction().begin();
		Employee e = em.find(Employee.class, uname);
		return e;
	}
	
	

}
