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

import com.klef.ep.models.Offers;
import com.klef.ep.services.OffersServices;

@Path("ocentrance")
public class OffersServiceController {
@EJB(lookup = "java:global/EmaProject/OffersServicesImpl!com.klef.ep.services.OffersServices")
OffersServices ofservice;
@POST
@Path("addoffer")
@Produces(MediaType.APPLICATION_JSON)
public String addOffers(Offers o) {
	return ofservice.addoffers(o);
}
@PUT
@Path("updateoffer")
@Produces(MediaType.TEXT_PLAIN)
@Consumes(MediaType.APPLICATION_JSON)
public String updateOffers(Offers o) {
	return ofservice.updateoffers(o);
}
@DELETE
@Path("deleteoffer/{id}")
@Produces(MediaType.TEXT_PLAIN)
public String deleteOffers(@PathParam("id")int oid) {
	return ofservice.deleteoffers(oid);
}
@GET
@Path("viewalloffers")
@Produces(MediaType.APPLICATION_JSON)
public List<Offers> viewallOffers(){
	return ofservice.viewalloffers();
}
@GET
@Path("viewofferbyid")
@Produces(MediaType.APPLICATION_JSON)
public Offers viewOfferbyid(@QueryParam("id")int oid) {
	return ofservice.viewoffersbyid(oid);
}
}