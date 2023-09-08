<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="com.klef.ep.models.ProjectsApplied"%>
<%@page import="java.util.List"%>
<%@page import="com.klef.ep.services.ProjectsAppliedServices"%>
<%@page import="javax.naming.InitialContext"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
InitialContext context=new InitialContext();
ProjectsAppliedServices ps=(ProjectsAppliedServices)context.lookup("java:global/EmaProject/ProjectsAppliedServicesImple!com.klef.ep.services.ProjectsAppliedServices");
String tkn=request.getParameter("token");
int n=Integer.parseInt(tkn);
String ack=ps.updateproject(n);

response.sendRedirect("../templates/adminwlist.jsp");


	
%>
</body>
</html>