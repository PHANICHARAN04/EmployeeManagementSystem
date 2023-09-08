<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <style>
      body {
        font-family: Arial, sans-serif;
        margin: 0;
        padding: 0;
        background-color: rgba(0, 0, 0, 0);
        background-image: url("../static/blog/home.jpg");
        background-size: cover;
        min-height: 100vh;
        display: flex;
        align-items: center;
        justify-content: center;
      }

      .navbar {
        display: flex;
        align-items: center;
        justify-content: space-between;
        background-color: transparent;
        color: white;
        padding: 10px;
        position: fixed;
        top: 0;
        left: 0;
        right: 0;
      }

      .navbar-logo a {
        color: black;
        text-decoration: none;
        font-weight: bold;
      }

      .navbar-menu li {
        display: inline-block;
        margin-right: 10px;
      }
      .navbar-menu a {
        color: black;
        text-decoration: none;
        font-style: italic;
        position: relative;
      }

      .navbar-menu a:hover {
        text-decoration: none;
      }

      .navbar-menu a::after {
        content: "";
        position: absolute;
        width: 100%;
        height: 2px;
        bottom: -2px;
        left: 0;
        background-color: black;
        transform: scaleX(0);
        transition: transform 0.3s ease;
      }

      .navbar-menu a:hover::after,
      .navbar-menu a.active::after {
        transform: scaleX(1);
      }

      .container {
        max-width: 800px;
        padding: 40px;
        text-align: center;
        background-color: rgba(255, 255, 255, 0.1);
        border-radius: 8px;
      }

      h1 {
        color: #333;
        margin-top: 20px;
        font-size: 36px;
        font-weight: bold;
        text-transform: uppercase;
        letter-spacing: 2px;
      }

      p {
        color: #555;
        margin-top: 20px;
        line-height: 1.6;
      }

      .btn {
        display: inline-block;
        padding: 12px 24px;
        background-color: #4caf50;
        color: #fff;
        text-decoration: none;
        border-radius: 4px;
        transition: background-color 0.3s;
        margin-top: 30px;
        font-size: 18px;
        font-weight: bold;
        text-transform: uppercase;
        letter-spacing: 1px;
        border: none;
        cursor: pointer;
        box-shadow: 0px 4px 8px rgba(0, 0, 0, 0.1);
      }

      .btn:hover {
        background-color: #45a049;
      }

      .btn:focus {
        outline: none;
      }

      .btn:active {
        transform: translateY(1px);
      }
    </style>
    <title>Employee Management System</title>
  </head>

  <body>
    <nav class="navbar">
      <div class="navbar-logo">
        <a href="navbar.jsp">Employee Management System</a>
      </div>
      <ul class="navbar-menu">
        <li><a href="navbar.jsp" >HOME</a></li>
        <li><a href="about.jsp">ABOUT US</a></li>
        <li><a href="begin.jsp">LOGIN/SIGNUP</a></li>
        <li><a href="contact.jsp">CONTACT US</a></li>
      </ul>
    </nav>
    <div class="container">
      <h1>Welcome to the Employee Management System</h1>
      <p>
        Simplify your HR processes and streamline employee management with our
        comprehensive platform.
      </p>
      <p>
        Our user-friendly interface and powerful features empower you to
        efficiently manage employee data, attendance, leave requests,
        performance reviews, and more.
      </p>
      <p>
        Take control of your HR operations and enhance productivity with our
        reliable and secure solution. Let us help you create a positive work
        environment and achieve your organizational goals.
      </p>
      <a href="begin.jsp" class="btn">Get Started</a>
    </div>
  </body>
</html>
