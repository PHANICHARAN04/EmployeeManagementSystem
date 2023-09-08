package com.klef.ep.services;

import java.util.List;

import javax.ejb.Remote;

import com.klef.ep.models.Offers;

@Remote
public interface OffersServices {
  public String addoffers(Offers of);
  public String updateoffers(Offers of);
  public String deleteoffers(int oid);
  public List<Offers> viewalloffers();
  public Offers viewoffersbyid(int oid);
}