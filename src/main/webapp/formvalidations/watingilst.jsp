<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="com.klef.ep.models.*,com.klef.ep.services.*,java.util.*,
    javax.naming.InitialContext"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
 <link rel="stylesheet" href="../styles/addproject2.css">
</head>
<body>

  <%
    Employee emp = (Employee) session.getAttribute("user");
  
      String title = request.getParameter("offer-id");
      int stitle=Integer.parseInt(title); 
      InitialContext context = new InitialContext();
    
     
    
    ProjectsAppliedServices proapp = (ProjectsAppliedServices) context.lookup("java:global/EmaProject/ProjectsAppliedServicesImple!com.klef.ep.services.ProjectsAppliedServices");
    System.out.println(title);
    
    OffersServices off = (OffersServices) context.lookup("java:global/EmaProject/OffersServicesImpl!com.klef.ep.services.OffersServices");
    List<Offers> oflist = off.viewAllOffers();
    //System.out.println(oflist);
    ProjectsApplied ps = new ProjectsApplied();
    
    int cvalue = (int) Math.ceil(Math.random() *10000);
    String currentstatus = "Pending";
    ps.setCount(cvalue);
    ps.setTitle(oflist.get(stitle).getTitle());
    ps.setCompany(oflist.get(stitle).getCompany());
    ps.setEmpusername(emp.getUsername());
    ps.setCurrentstatus(currentstatus);
    
    String reply = proapp.addproject(ps);
    
    System.out.println(reply);
    
  %>
</body>
</html>