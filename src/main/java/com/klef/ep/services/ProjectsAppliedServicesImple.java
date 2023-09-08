package com.klef.ep.services;

import java.util.List;

import javax.ejb.Stateless;
import javax.ejb.TransactionManagement;
import javax.ejb.TransactionManagementType;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.persistence.Query;

import com.klef.ep.models.ProjectsApplied;

@Stateless
@TransactionManagement(TransactionManagementType.BEAN)
public class ProjectsAppliedServicesImple implements ProjectsAppliedServices{

  
  public String addproject(ProjectsApplied proapp)
  {
    EntityManagerFactory emf = Persistence.createEntityManagerFactory("EmaProject");
    EntityManager em = emf.createEntityManager();
    
    em.getTransaction().begin();
    
    em.persist(proapp);
    em.getTransaction().commit();
    
    em.close();
    emf.close();
    
    return "Project Added Successfully";
  }

  
  public String deleteproject(String empusername) {
    
    EntityManagerFactory emf = Persistence.createEntityManagerFactory("EmaProject");
    EntityManager em = emf.createEntityManager();
    
    em.getTransaction().begin();
    ProjectsApplied p = em.find(ProjectsApplied.class, empusername);
    em.remove(p);
    em.getTransaction().commit();
    
    em.close();
    emf.close();
    return "Project Deleted Successfully";
  }
  
  public List<ProjectsApplied> viewallprojects(){
    
    EntityManagerFactory emf = Persistence.createEntityManagerFactory("EmaProject");
    EntityManager em = emf.createEntityManager();
    
    em.getTransaction().begin();
    
    Query qry = em.createQuery("select e from ProjectsApplied e");
    
    List<ProjectsApplied> clist = qry.getResultList();
    
    em.close();
    emf.close();
    return clist;
  }

  public String updateproject(int token) {
    EntityManagerFactory emf = Persistence.createEntityManagerFactory("EmaProject");
    EntityManager em = emf.createEntityManager();
    
    em.getTransaction().begin();
    
    ProjectsApplied pro =  em.find(ProjectsApplied.class,token);
    pro.setCurrentstatus("Approved");
    
    em.getTransaction().commit();
    
    em.close();
    emf.close();
    
    return "Updated Successfully";
  }

}