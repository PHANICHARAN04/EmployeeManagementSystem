<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Settings</title>
  <style>
    body {
      font-family: Arial, sans-serif;
      background-color: #f2f2f2;
      color: #333;
      transition: background-color 0.3s;
    }
    
    .container {
      max-width: 800px;
      margin: 0 auto;
      padding: 40px;
      background-color: #ffffff;
      box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
      border-radius: 8px;
      transition: background-color 0.3s;
    }
    
    h1 {
      font-size: 24px;
      margin-bottom: 20px;
    }
    
    .option {
      margin-bottom: 20px;
    }
    
    .option label {
      display: block;
      margin-bottom: 10px;
      font-weight: bold;
    }
    
    .option .description {
      font-size: 14px;
      color: #666666;
    }
    
    .btn-container {
      margin-top: 30px;
      text-align: center;
    }
    
    .btn {
      display: inline-block;
      padding: 12px 24px;
      background-color: #4caf50;
      color: #fff;
      text-decoration: none;
      border-radius: 4px;
      transition: background-color 0.3s;
      margin-right: 10px;
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
    
    /* Dark Mode Styles */
    body.dark-mode {
      background-color: #333333;
      color: #ffffff;
    }
    
    .container.dark-mode {
      background-color: #444444;
      box-shadow: 0px 0px 10px rgba(255, 255, 255, 0.1);
    }


    /* Additional styles for the scrollable navigation bar */
    .scrollbar-container {
      position: fixed;
      bottom: 20px;
      right: 20px;
      background-color: #fff;
      box-shadow: 0px 4px 8px rgba(0, 0, 0, 0.1);
      padding: 10px;
      border-radius: 8px;
      display: flex;
      align-items: center;
      gap: 10px;
    }

    .scrollbar-button {
      width: 24px;
      height: 24px;
      border-radius: 50%;
      cursor: pointer;
      transition: background-color 0.3s;
    }

    .scrollbar-button.light {
      background-color: #4caf50;
    }

    .scrollbar-button.dark {
      background-color: #333;
    }
  </style>
</head>
<body>
    <h1>Settings</h1>
    

  <!-- Scrollable navigation bar for dark/light mode -->
  <div class="scrollbar-container">
    <div class="scrollbar-button light"></div>
    <div class="scrollbar-button dark"></div>
  </div>

  <script>
    const body = document.body;
    const scrollbarContainer = document.querySelector('.scrollbar-container');
    const lightButton = document.querySelector('.scrollbar-button.light');
    const darkButton = document.querySelector('.scrollbar-button.dark');

    // Function to enable dark mode
    function enableDarkMode() {
      body.classList.add('dark-mode');
      scrollbarContainer.style.backgroundColor = '#444';
      lightButton.style.backgroundColor = '#333';
      darkButton.style.backgroundColor = '#4caf50';
    }

    // Function to disable dark mode
    function disableDarkMode() {
      body.classList.remove('dark-mode');
      scrollbarContainer.style.backgroundColor = '#fff';
      lightButton.style.backgroundColor = '#4caf50';
      darkButton.style.backgroundColor = '#333';
    }

    // Event listener for light mode button
    lightButton.addEventListener('click', disableDarkMode);

    // Event listener for dark mode button
    darkButton.addEventListener('click', enableDarkMode);
  </script>
</body>
</html>
