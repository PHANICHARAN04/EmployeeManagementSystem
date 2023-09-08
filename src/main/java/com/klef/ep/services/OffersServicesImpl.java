package com.klef.ep.services;

import java.util.List;

import javax.ejb.Stateless;
import javax.ejb.TransactionManagement;
import javax.ejb.TransactionManagementType;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.persistence.Query;

import com.klef.ep.models.Offers;

@Stateless
@TransactionManagement(TransactionManagementType.BEAN)
public class OffersServicesImpl implements OffersServices{

  
  public String addoffers(Offers of) {
    EntityManagerFactory emf = Persistence.createEntityManagerFactory("EmaProject");
    EntityManager em = emf.createEntityManager();
    
    em.getTransaction().begin();
    em.persist(of);
    em.getTransaction().commit();
    
    em.close();
    emf.close();
    return "Offers Added Successfully";
  }

  
  public String updateoffers(Offers of) {
    EntityManagerFactory emf = Persistence.createEntityManagerFactory("EmaProject");
    EntityManager em = emf.createEntityManager();
    
    em.getTransaction().begin();
    Offers o = em.find(Offers.class, of.getTitle());
    o.setTag1(of.getTag1());
    o.setExperience(of.getExperience());
    o.setTag2(of.getTag2());
    o.setCompany(of.getCompany());
    o.setLocation(of.getLocation());
    o.setOpenings(of.getOpenings());
    o.setSalary(of.getSalary());
    o.setTitle(of.getTitle());
    o.setStarted(of.getStarted());
    em.getTransaction().commit();
    
    em.close();
    emf.close();
    
    return "Updated Offer Successfully ";
  }

  
  public String deleteoffers(int oid) {
    EntityManagerFactory emf = Persistence.createEntityManagerFactory("EmaProject");
    EntityManager em = emf.createEntityManager();
    
    em.getTransaction().begin();
    
    Offers o = em.find(Offers.class, oid);
    em.remove(o);
    
    em.getTransaction().commit();
    
    em.close();
    emf.close();
    
    
    return "Deleted Offer Successfully";
  }

  
  public List<Offers> viewalloffers() {
    EntityManagerFactory emf = Persistence.createEntityManagerFactory("EmaProject");
    EntityManager em = emf.createEntityManager();
    
    em.getTransaction().begin();
    Query qry = em.createQuery("select o from Offers o");
    
    List<Offers> offlist = qry.getResultList();
    
    em.close();
    emf.close();
    
    return offlist;
  }

  
  public Offers viewoffersbyid(int oid) {
    EntityManagerFactory emf = Persistence.createEntityManagerFactory("EmaProject");
    EntityManager em = emf.createEntityManager();
    
    em.getTransaction().begin();
    Offers o = em.find(Offers.class, oid);
    
    em.close();
    emf.close();
    return o;
  }
  
}