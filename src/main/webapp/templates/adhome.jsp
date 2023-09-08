<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="com.klef.ep.models.*,com.klef.ep.services.*,java.util.*,
    javax.naming.InitialContext"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Home</title>
    <link rel="stylesheet" href="./homepage.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" integrity="sha512-iecdLmaskl7CVkqkXNQ/ZH/XLlvWZOJyj7Yy7tcenmpD1ypASozpmT/E0iPtmFIB46ZmdtAc9eNBvH0H/ZpiBw==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Rubik:wght@400;500;600&display=swap" rel="stylesheet">
</head>
<body>
<%
  InitialContext context = new InitialContext();
  OffersServices off = (OffersServices) context.lookup("java:global/EmaProject/OffersServicesImpl!com.klef.ep.services.OffersServices");
  List<Offers> offlist = off.viewalloffers();
%>
    <div class="containers">
        <h2>Job Offers</h2>   
       <div class="container">        
            <%
        
            for(int i = 0;i<offlist.size();i++){
            int temp = i;%>
          <form action="./addproject2.jsp" method="get">
           <div class="slider">
             
           <div class="heading">
           <div class="onehere">
         <label><%=offlist.get(temp).getTitle() %></label>
           <span><%=offlist.get(temp).getCompany() %></span>
         </div>
          <div class="twohere">
          <input type="hidden" value=<%=temp %>  name="hiddenvalue"  />
        
          </div>
           </div>
          <label class="homespace"><i class="fa-solid fa-house"></i>&nbsp;<%=offlist.get(temp).getLocation() %></label>
          <label ><i class="fa-solid fa-circle-play"></i>&nbsp;<%=offlist.get(temp).getProcess()%>&nbsp;&nbsp;&nbsp; <i class="fa-sharp fa-solid fa-calendar"></i>&nbsp;<%=offlist.get(temp).getExperience() %></label>
          <label ><i class="fa-solid fa-money-check-dollar"></i>&nbsp; &#8377;<%=offlist.get(temp).getSalary()+" /month" %></label>
          <div>
      
           </div>
           <button class="activebtn"><i class="fa-solid fa-stopwatch"></i>&nbsp;<%=offlist.get(temp).getStarted() %></button>
           <button class="activebtn1" type="submit"><i class="fa-solid fa-stopwatch"></i>&nbsp;Apply Now</button>
           </div>
         </form>
       <%} %>
       </div>
       </div>
     
    <h2>Trending</h2>
    <div class="container2">
       <%
        
            for(int i = 0;i<offlist.size()/2;i++){
            int temp = i;%>
          <form action="./addproject2.jsp" method="get">
           <div class="slider">
             
           <div class="heading">
           <div class="onehere">
         <label><%=offlist.get(temp).getTitle() %></label>
           <span><%=offlist.get(temp).getCompany() %></span>
         </div>
          <div class="twohere">
          <input type="hidden" value=<%=temp %>  name="hiddenvalue"  />
 
          </div>
           </div>
          <label class="homespace"><i class="fa-solid fa-house"></i>&nbsp;<%=offlist.get(temp).getLocation() %></label>
          <label ><i class="fa-solid fa-circle-play"></i>&nbsp;<%=offlist.get(temp).getProcess()%>&nbsp;&nbsp;&nbsp; <i class="fa-sharp fa-solid fa-calendar"></i>&nbsp;<%=offlist.get(temp).getExperience() %></label>
          <label ><i class="fa-solid fa-money-check-dollar"></i>&nbsp; &#8377;<%=offlist.get(temp).getSalary()+" /month" %></label>
          <div>
           <button><%=offlist.get(temp).getTag1() %></button>
          <button><%=offlist.get(temp).getTag2() %></button>
           </div>
           <button class="activebtn"><i class="fa-solid fa-stopwatch"></i>&nbsp;<%=offlist.get(temp).getStarted() %></button>
           <button class="activebtn1" type="submit"><i class="fa-solid fa-stopwatch"></i>&nbsp;Apply Now</button>
           </div>
         </form>
       <%} %>
       
          </div>
</body>
</html>