<%@page import="com.klef.ep.models.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Profile Page</title>
<link rel="stylesheet" href="profile.css">
</head>
<body>
    <% Employee e = (Employee) session.getAttribute("user"); %>
    <div class="container">
        <div class="profile">
            <img src="../static/blog/profile.jpg" alt="" style="width: 200px; height: 200px;">
            <h1 style="font-size: 28px;"><%= e.getFirstname() + " " + e.getLastname() %></h1>
            <p style="color: #666666;">Gender: <%= e.getGender() %></p>
            <p style="color: #666666;">Age: <%= e.getDob() %></p>
            <p style="color: #666666;">Email: <%= e.getEmail() %></p>
            <p style="color: #666666;">Phone: <%= e.getContact() %></p>
        </div>
        <div class="update-form">
            <h2>Update Profile Details</h2>
            <form action="#" method="post">
                <div class="form-group">
                    <label for="firstname">First Name:</label>
                    <input type="text" id="firstname" name="firstname" value="<%= e.getFirstname() %>" required>
                </div>
                <div class="form-group">
                    <label for="lastname">Last Name:</label>
                    <input type="text" id="lastname" name="lastname" value="<%= e.getLastname() %>" required>
                </div>
                <div class="form-group">
                    <label for="gender">Gender:</label>
                    <input type="radio" id="male" name="gender" value="Male" <%= e.getGender().equals("Male") ? "checked" : "" %> required>
                    <label for="male">Male</label>
                    <input type="radio" id="female" name="gender" value="Female" <%= e.getGender().equals("Female") ? "checked" : "" %>>
                    <label for="female">Female</label>
                </div>
                <div class="form-group">
                    <label for="dob">Date of Birth:</label>
                    <input type="date" id="dob" name="dob" value="<%= e.getDob() %>" required>
                </div>
                <div class="form-group">
                    <label for="email">Email:</label>
                    <input type="email" id="email" name="email" value="<%= e.getEmail() %>" required>
                </div>
                <div class="form-group">
                    <label for="contact">Phone:</label>
                    <input type="tel" id="contact" name="contact" value="<%= e.getContact() %>" required>
                </div>
          
            </form>
        </div>
    </div>
</body>
</html>
