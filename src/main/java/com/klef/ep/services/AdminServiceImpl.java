package com.klef.ep.services;

import java.util.List;

import javax.ejb.Stateless;
import javax.ejb.TransactionManagement;
import javax.ejb.TransactionManagementType;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.persistence.Query;

import com.klef.ep.models.Admin;
@Stateless
@TransactionManagement(TransactionManagementType.BEAN)
public class AdminServiceImpl implements AdminServices{

	public String addEmployee(Admin emp) {
		EntityManagerFactory emf = Persistence.createEntityManagerFactory("EmaProject");
		EntityManager em = emf.createEntityManager();
		em.getTransaction().begin();
		em.persist(emp);
		em.getTransaction().commit();
		em.close();
		emf.close();
		return "Record Inserted Successfully";
	}

	public String updateEmployee(Admin emp) {
		EntityManagerFactory emf = Persistence.createEntityManagerFactory("EmaProject");
		EntityManager em = emf.createEntityManager();
		em.getTransaction().begin();
		Admin e = em.find(Admin.class, emp.getUsername());
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
		Admin e = em.find(Admin.class, uname);
		em.remove(e);
		em.getTransaction().commit();
		em.close();
		emf.close();
		return "Record Deleted Successfully";
	}

	public List<Admin> viewallEmployees() {
		EntityManagerFactory emf = Persistence.createEntityManagerFactory("EmaProject");
		EntityManager em = emf.createEntityManager();
		em.getTransaction().begin();
		Query qry = em.createQuery("select e from Admin e");
		List<Admin> emplist  = qry.getResultList();
		return emplist;
	}

	public Admin viewempbyid(String uname) {
		EntityManagerFactory emf = Persistence.createEntityManagerFactory("EmaProject");
		EntityManager em = emf.createEntityManager();
		em.getTransaction().begin();
		Admin e = em.find(Admin.class, uname);
		return e;
	}
	

}
