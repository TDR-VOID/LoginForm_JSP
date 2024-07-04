<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Home Page</title>
<style>
  body {
    font-family: Arial, sans-serif;
    text-align: center; /* Center align text content */
    background-color: #f0f0f0; /* Light background color */
  }
  h2 {
    margin-top: 50px; /* Add space above the heading */
  }
  .login-form {
    margin-top: 20px; /* Add space above the form */
  }
  .login-form input[type="submit"] {
    padding: 10px 20px; /* Padding inside the button */
    font-size: 16px; /* Larger font size for better visibility */
    background-color: #4CAF50; /* Green background color */
    color: white; /* Text color */
    border: none; /* Remove border */
    border-radius: 4px; /* Rounded corners */
    cursor: pointer; /* Pointer cursor on hover */
    transition: background-color 0.3s; /* Smooth transition on hover */
  }
  .login-form input[type="submit"]:hover {
    background-color: #45a049; /* Darker green on hover */
  }
</style>
</head>
<body>
<h2>Home Page</h2>
<div class="login-form">
  <form action="Login.jsp" method="get">
    <input type="submit" value="Login">
  </form>
</div>
</body>
</html>
