<%@page import="javax.naming.InitialContext"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="javax.naming.InitialContext,com.klef.ep.services.*,com.klef.ep.models.Admin,java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
  <%
    InitialContext context =new InitialContext();
    AdminServices empservice=(AdminServices)context.lookup("java:global/EmaProject/AdminServiceImpl!com.klef.ep.services.AdminServices");
    String email=request.getParameter("email");
    String pswd=request.getParameter("pswd");
    List<Admin> lst=empservice.viewallEmployees();
    //out.println(e);
    for(Admin e:lst){
      if(e.getEmail().equals(email))
      {
        if(e.getPassword().equals(pswd)){
          session.setAttribute("admin", e);
          response.sendRedirect("../templates/employeehome.jsp");
        }
          
        else
          out.println("wrong Password");
      }
    }
    
        out.println("wrong id");
  %>
</body>
</html>