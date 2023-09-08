<!DOCTYPE html>
<html>
<head>
  <title>Team Members</title>
  <style>
    body {
      font-family: Arial, sans-serif;
      margin: 0;
      padding: 20px;
      background-image: url("../static/blog/about1.jpg");
      background-size: cover;
      display: flex;
      flex-direction: column;
      align-items: center;
      min-height: 100vh;
    }
    
    .container {
      display: flex;
      justify-content: center;
      flex-wrap: wrap;
      margin-bottom: 30px;
    }
    
    .card {
      width: auto;
      height:100%;
      max-width: 300px;
      background-color: #f5f5f5;
      border-radius: 5px;
      padding: 20px;
      box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
      margin: 10px;
    }
    
    .card img {
      width: 100%;
      border-radius: 5px;
      margin-bottom: 10px;
    }
    
    .card h2 {
      font-size: 20px;
      margin-bottom: 10px;
      color: #333;
    }
    
    .card p {
      font-size: 16px;
      margin-bottom: 10px;
      color: #555;
    }
    
    h2 {
      text-align: center;
      color: #fff;
      margin-bottom: 30px;
    }

    .get-started-button {
      display: flex;
      justify-content: center;
      align-items: center;
      margin-top: 10px;
    }

    .button {
      padding: 10px 20px;
      background-color: #4CAF50;
      color: #fff;
      text-decoration: none;
      border-radius: 5px;
      font-weight: bold;
      text-transform: uppercase;
    }
  </style>
</head>
<body>
  <h2>ABOUT US</h2>
  <div class="container">
    <div class="card">
      <img src="../static/blog/murali.jpg" alt="Team Member 1">
      <h2>Murali Krishna</h2>
      <p>Team Leader</p>
    </div>
    
    <div class="card">
      <img src="../static/blog/phani.jpg" alt="Team Member 2">
      <h2>U.V.Phani Charan</h2>
      <p>Project Developer</p>
    </div>
    
    <div class="card">
      <img src="" alt="Team Member 3" style="height: 60%">
      <h2>Chaitanya Kishore</h2>
      <p>FrontEnd Designer</p>
    </div>
  </div>
  
  <div class="get-started-button">
    <a href="begin.jsp" class="button">GET STARTED</a>
  </div>
</body>
</html>
