<%@page import="com.klef.ep.models.ProjectsApplied"%>
<%@page import="java.util.List"%>
<%@page import="com.klef.ep.services.ProjectsAppliedServices"%>
<%@page import="javax.naming.InitialContext"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin Page</title>
<!-- Favicon-->
<link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
<!-- Font Awesome icons (free version)-->
<script src="https://use.fontawesome.com/releases/v5.15.4/js/all.js"
  crossorigin="anonymous"></script>
<!-- Google fonts-->
<link href="https://fonts.googleapis.com/css?family=Montserrat:400,700"
  rel="stylesheet" type="text/css" />
<link
  href="https://fonts.googleapis.com/css?family=Lato:400,700,400italic,700italic"
  rel="stylesheet" type="text/css" />
<!-- Core theme CSS (includes Bootstrap)-->
<link href="css/index-styles.css" rel="stylesheet" />
<link href="css/admin.css" rel="stylesheet" />
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
<%@include file="employeehome.jsp" %>

<style>
  body {
    font-family: Arial, sans-serif;
    margin: 0;
    padding: 0;
    background-color: #f1f1f1;
    display: flex;
    flex-direction: column;
    min-height: 100vh;
  }

  .navbar {
    background-color: #333;
    color: #fff;
    padding: 10px;
    text-align: center;
  }

  .dcontainer {
    display: flex;
    align-items: center;
    justify-content: center;
    width: 100%;
    min-height: calc(100vh - 16vh); /* Subtracting navbar height */
  }

  .table-display {
    width: 100%;
    overflow-x: auto; /* Enable horizontal scrolling for the table */
  }

  table {
    margin: 0 10px; /* Adding left and right margins */
    width: 100%;
    border-collapse: collapse;
  }

  th,
  td {
    border: 1px solid #ddd;
    padding: 10px;
    text-align: center;
  }

  th {
    background-color: #007BFF;
    color: #fff;
  }

  tr:nth-child(even) {
    background-color: #f2f2f2;
  }

  tr:hover {
    background-color: #ddd;
  }

  .action-buttons {
    display: flex;
    justify-content: space-between; /* Place buttons side by side */
  }

  button {
    flex: 1; /* Distribute available space equally */
    margin: 5px; /* Add spacing between buttons */
    background-color: #007BFF;
    color: #fff;
    border: none;
    padding: 8px 15px;
    border-radius: 5px;
    cursor: pointer;
  }

  button:hover {
    background-color: #0056b3;
  }
</style>

</head>
<body>
  <div class="dcontainer">
    <div class="table-display mt-5 md-5">
      <table>
        <tr>
          <th>Candidate Name</th>
          <th>Applied for</th>
          <th>Organization</th>
          <th>Actions</th>
        </tr>
        <%
        	InitialContext context=new InitialContext();
   			ProjectsAppliedServices ps=(ProjectsAppliedServices)context.lookup("java:global/EmaProject/ProjectsAppliedServicesImple!com.klef.ep.services.ProjectsAppliedServices");
   			List<ProjectsApplied> lst=ps.viewallprojects();
   		    for(ProjectsApplied obj:lst){

        %>
        <%if(obj.getCurrentstatus().equalsIgnoreCase("pending")) {%>
        <tr>
          <td><%=obj.getEmpusername() %></td>
          <td><%=obj.getTitle()%></td>
          <td><%=obj.getCompany()%></td>
          <td class="action-buttons">
          	<form action="../formvalidations/accept.jsp" method="post"   style="width: 100%">
				<input type="hidden" value=<%=obj.getCount()%> name="token"/>
            <button class="btn btn-success" type="submit" >Accept</button>
            </form>
            
          </td>
        </tr>
        <%} }%>
      </table>
    </div>
  </div>

</body>
</html>
