<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta http-equiv="X-UA-Compatible" content="IE=edge" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <style>
    .navbar {
      padding: 10px;
      position: fixed;
      top: 0;
      left: 0;
      width: 100%;
      background-color: rgba(0, 0, 0, 0.7); /* Transparent black background */
      color: white;
      z-index: 9999;
      display: flex;
      justify-content: space-between;
      align-items: center;
    }

    .navbar-logo a {
      color: white; /* Change the logo color to white */
      text-decoration: none;
      font-weight: bold;
      font-size: 24px; /* Slightly reduce the font size */
      margin-left: 20px;
      padding-right: 30px; /* Add right padding for spacing */
    }

    .navbar-menu {
      margin-right: auto;
      margin-left: auto;
      list-style: none;
      display: flex;
      align-items: center;
    }

    .navbar-menu li {
      margin-right: 10px;
    }

    .navbar-menu a {
      color: white; /* Change the menu item color to white */
      text-decoration: none;
      font-size: 18px; /* Reduce the font size of menu items */
      font-weight: bold;
      text-transform: uppercase;
      position: relative;
      padding: 5px 15px; /* Add padding for spacing */
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
      background-color: white; /* Change the underline color to white */
      transform: scaleX(0);
      transition: transform 0.3s ease;
    }

    .navbar-menu a:hover::after,
    .navbar-menu a.active::after {
      transform: scaleX(1);
    }

    /* Show dropdown-menu on hover */
    .dropdown:hover .dropdown-menu {
      display: block;
    }

    /* Hide dropdown-menu by default */
    .dropdown-menu {
      display: none;
      position: absolute;
      background-color: rgba(0, 0, 0, 0.7);
      min-width: 160px;
      box-shadow: 0px 8px 16px 0px rgba(0, 0, 0, 0.2);
      z-index: 1;
    }

    .dropdown-menu li {
      padding: 5px 10px;
    }

    .dropdown-menu a {
      color: white;
      text-decoration: none;
      display: block;
    }

    .dropdown-menu a:hover {
      background-color: rgba(255, 255, 255, 0.1);
    }
  </style>
  <title>Employee Management System</title>
</head>
<body>
  <nav class="navbar">
    <div class="navbar-logo">
      <a href="#">Employee Management System</a>
    </div>
    <ul class="navbar-menu">
      
      <li class="dropdown">
        <a href="adhome.jsp">Offers</a>
      </li>
      <li><a href="./tablesvisible.jsp">Reports</a></li>
      <li class="dropdown">
        <a href="#" class="dropdown-toggle">Account</a>
        <ul class="dropdown-menu">
          <li><a href="profile.jsp">Profile</a></li>
          <li><a href="settings.jsp">Settings</a></li>
          <li><a href="begin.jsp">Logout</a></li>
        </ul>
      </li>
    </ul>
  </nav>

  <video autoplay loop muted style="width: 100%; height: auto;">
    <source src="https://i.imgur.com/c2NIT2t.mp4" type="video/mp4" />
  </video>

  <div></div>
  <script>
    // JavaScript to close dropdown-menu when clicking outside
    document.addEventListener("click", function (event) {
      const dropdowns = document.querySelectorAll(".dropdown");
      dropdowns.forEach(function (dropdown) {
        if (!dropdown.contains(event.target)) {
          const dropdownMenu = dropdown.querySelector(".dropdown-menu");
          dropdownMenu.style.display = "none";
        }
      });
    });
  </script>
</body>
</html>
