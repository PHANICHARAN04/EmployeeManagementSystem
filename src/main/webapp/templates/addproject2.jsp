<%response.setHeader("Cache-Control","no-cache, no-store,must-revalidate");
response.setHeader("Pragma","no-cache");
response.setHeader("Expires","0"); %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="com.klef.ep.models.*,com.klef.ep.services.*,java.util.*,
    javax.naming.InitialContext"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
 <link rel="stylesheet" href="./addproject2.css">
</head>
<body>
	<%
		Employee emp = (Employee) session.getAttribute("user");
	
	  	String title = request.getParameter("hiddenvalue");
		int stitle = Integer.parseInt(title);
	  	InitialContext context = new InitialContext();
		
	  	OffersServices off = (OffersServices) context.lookup("java:global/EmaProject/OffersServicesImpl!com.klef.ep.services.OffersServices");
		List<Offers> offlist = off.viewalloffers();
		
		
		ProjectsAppliedServices proapp = (ProjectsAppliedServices) context.lookup("java:global/EmaProject/ProjectsAppliedServicesImple!com.klef.ep.services.ProjectsAppliedServices");
		System.out.println(stitle);
		
		title = offlist.get(stitle).getTitle();
		String company = offlist.get(stitle).getCompany();
		
		ProjectsApplied ps = new ProjectsApplied();
		
		int cvalue = (int) Math.ceil(Math.random() *10000);
		String currentstatus = "Pending";
		ps.setCount(cvalue);
		ps.setTitle(title);
		ps.setCompany(company);
		ps.setEmpusername(emp.getUsername());
		ps.setCurrentstatus(currentstatus);
		
		String reply = proapp.addproject(ps);
		
		System.out.println(reply);
		
	%>
	<div class="fullsize">
		<form method="get" action="">
	   <div class="container">
        <div class="inputbox">
            <label for="" class="label1">Your Applied Course</label>
            <label for="" class="label2"><%out.print(title); %></label>
        </div>
        <div class="inputbox">
            <label for="" class="label1">Offering Company</label>
            <label for="" class="label2"> <%out.print(company); %> </label>
        </div>
        <button type="submit">Applied</button>
    </div>
	  </form>
	</div>
</body>
</html>