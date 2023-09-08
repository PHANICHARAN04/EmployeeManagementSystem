<%@page import="com.klef.ep.models.*,com.klef.ep.services.*,java.util.*,
    javax.naming.InitialContext"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link href="./tablevisible.css" rel="stylesheet"></link>

<%
InitialContext context = new InitialContext();
Employee emp = (Employee) session.getAttribute("user");
ProjectsAppliedServices proapp = (ProjectsAppliedServices) context.lookup("java:global/EmaProject/ProjectsAppliedServicesImple!com.klef.ep.services.ProjectsAppliedServices");
List<ProjectsApplied> prolist = proapp.viewallprojects();
System.out.println(prolist.size());
%>
</head>
<body>
	<div class="profilesection2">
                    <h2>Recently Applied</h2>
                    <div class="profilefields2">
                     <table border="2">
                        <tr >
                            <th>Name</th>
                            <th>Organization</th>
                            <th>Status</th>
                        </tr>
                        <%
                      for(ProjectsApplied obj:prolist){
                        
                           System.out.println(obj);
                        
                      
             %>
                        <tr>
                            <td><%=obj.getTitle() %></td>
                            <td><%=obj.getCompany() %></td>
                            <td><%=obj.getCurrentstatus() %></td>
                        </tr>
                        <%} %>
                        
                    </table>   
                       
                    </div>
                </div>
</body>
</html>