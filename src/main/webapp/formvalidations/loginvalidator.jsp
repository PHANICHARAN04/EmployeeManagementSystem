<%@page import="javax.naming.InitialContext"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="javax.naming.InitialContext,com.klef.ep.services.*,com.klef.ep.models.Employee,java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
  <%
    InitialContext context =new InitialContext();
    EmployeeService empservice=(EmployeeService)context.lookup("java:global/EmaProject/EmployeeServicesImpl!com.klef.ep.services.EmployeeService");
    String email=request.getParameter("email");
    String pswd=request.getParameter("pswd");
    List<Employee> lst=empservice.viewallEmployees();
    //out.println(e);
    for(Employee e:lst){
      if(e.getEmail().equals(email))
      {
        if(e.getPassword().equals(pswd)){
          session.setAttribute("user", e);
          response.sendRedirect("../templates/employeeuserhome.jsp");
        }
          
        else
          out.println("wrong Password");
      }
    }
    
        out.println("wrong id");
  %>
</body>
</html>