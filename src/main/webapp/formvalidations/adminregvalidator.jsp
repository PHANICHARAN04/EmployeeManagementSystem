<%@page import="javax.naming.InitialContext"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="com.klef.ep.models.Admin,javax.naming.InitialContext,com.klef.ep.services.*,java.time.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
  <%String ack=""; %>
  <%
    Admin emp=new Admin();
    emp.setFirstname(request.getParameter("fname"));
    emp.setLastname(request.getParameter("lname"));
    emp.setEmail(request.getParameter("email"));
    emp.setUsername(request.getParameter("username"));
    emp.setContact(request.getParameter("contact"));
    emp.setGender(request.getParameter("gender"));
    emp.setPassword(request.getParameter("pswd"));
    emp.setDob(request.getParameter("dob"));
    String dateStr = request.getParameter("dob");
    LocalDate selectedDate = LocalDate.parse(dateStr);
    //out.println("Selected Date: " + selectedDate);
    LocalDate currentDate = LocalDate.now();
    //out.println("Current Date: " + currentDate);

    int age = Period.between(selectedDate, currentDate).getYears();
    //System.out.println("Calculated Age: " + age);
    emp.setAge(age);
    InitialContext context=new InitialContext();
    AdminServices empservices=(AdminServices)context.lookup("java:global/EmaProject/AdminServiceImpl!com.klef.ep.services.AdminServices");
     ack=empservices.addEmployee(emp);
    
  %>
  <script type="text/javascript">
    <% if (!ack.isEmpty()) { %>
        const reply = () => {
            
            alert("Inserted successfully");
        }
        reply();
    <% response.sendRedirect("../templates/loginasadmin.jsp"); } %>
</script>
</body>
</html>