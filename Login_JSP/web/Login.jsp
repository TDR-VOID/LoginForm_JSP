<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login Page</title>
<style>
  body {
    font-family: Arial, sans-serif;
    text-align: center; /* Center align text content */
  }
form {
    width: 300px; /* Set a specific width for the form */
    margin: 0 auto; /* Center align the form horizontally */
    text-align: left; /* Align form content to the left within the centered body */
    margin-top: 20px; /* Add space above the form */
    padding: 20px;
    border: 1px solid #ccc;
    border-radius: 5px;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
  }
  label {
    display: block;
    margin-bottom: 10px;
  }
  input[type="email"], input[type="password"], input[type="submit"] {
    width: 100%;
    padding: 10px;
    margin-bottom: 15px;
    border: 1px solid #ccc;
    border-radius: 4px;
    box-sizing: border-box;
  }
  input[type="submit"] {
    background-color: #4CAF50;
    color: white;
    border: none;
    cursor: pointer;
  }
  input[type="submit"]:hover {
    background-color: #45a049;
  }
</style>
</head>
<body>
<h2>Login Page</h2>
<form action="Validation.jsp" method="post">
  <label for="email">Email ID:</label><br>
  <input type="email" id="email" name="email" required><br>
  <label for="password">Password:</label><br>
  <input type="password" id="password" name="password" required><br>
  <input type="submit" value="Submit">
</form>
</body>
</html>
