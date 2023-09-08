<%@page import="javax.naming.InitialContext"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="com.klef.ep.models.Employee,javax.naming.InitialContext,com.klef.ep.services.*,java.time.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
  <%String ack=""; %>
  <%
    Employee emp=new Employee();
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
    EmployeeService empservices=(EmployeeService)context.lookup("java:global/EmaProject/EmployeeServicesImpl!com.klef.ep.services.EmployeeService");
     ack=empservices.addEmployee(emp);
    
  %>
  <script type="text/javascript">
    <% if (!ack.isEmpty()) { %>
        const reply = () => {
            alert("Inserted successfully");
            
        }
        reply();
    <% response.sendRedirect("../templates/begin.jsp");} %>
</script>
</body>
</html>