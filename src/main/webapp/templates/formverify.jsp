<%response.setHeader("Cache-Control","no-cache, no-store,must-revalidate");
response.setHeader("Pragma","no-cache");
response.setHeader("Expires","0"); %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
  <title>Application Status</title>
  <style>
    .fullsize {
      font-family: Arial, sans-serif;
      background-color: #f0f0f0;
      display: flex;
      justify-content: center;
      align-items: center;
      height: 90vh;
      margin: 0;
    }

    .message-container {
      text-align: center;
      padding: 20px;
      background-color: #fff;
      border-radius: 5px;
      box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
      animation: fade-in 1s ease;
    }

    .success-message {
      color: #00b894;
      font-size: 24px;
      font-weight: bold;
    }

    @keyframes fade-in {
      0% {
        opacity: 0;
        transform: scale(0.8);
      }
      100% {
        opacity: 1;
        transform: scale(1);
      }
    }

    @keyframes bounce {
      0%, 20%, 50%, 80%, 100% {
        transform: translateY(0);
      }
      40% {
        transform: translateY(-20px);
      }
      60% {
        transform: translateY(-10px);
      }
    }

    .animated-checkmark {
      display: inline-block;
      font-size: 50px;
      animation: bounce 1s ease infinite;
    }
  </style>
</head>
<body>
	<div class="fullsize">
  <div class="message-container">
    <span class="animated-checkmark">&#10004;</span>
    <p class="success-message">Applied Successfully</p>
  </div>
  </div>
</body>
</html>
