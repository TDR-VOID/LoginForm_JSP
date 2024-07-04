<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
    <title>Validation Page</title>
</head>
<body>
<%
    String _email = request.getParameter("email");
    String _password = request.getParameter("password");

    if (_email != null && _password != null) {
        try {
            // Load the MySQL JDBC driver
            Class.forName("com.mysql.cj.jdbc.Driver");
            
            // Database URL, username, and password
            String dbURL = "jdbc:mysql://localhost:3306/userdb";
            String dbUser = "root"; // Default XAMPP MySQL user
            String dbPassword = ""; // Default XAMPP MySQL password (empty)

            // Connect to the database
            Connection conn = DriverManager.getConnection(dbURL, dbUser, dbPassword);
            
            // Prepare SQL statement to query user credentials
            String sql = "SELECT * FROM users WHERE email = ? AND password = ?";
            PreparedStatement statement = conn.prepareStatement(sql);
            statement.setString(1, _email);
            statement.setString(2, _password);
            
            // Execute the query
            ResultSet result = statement.executeQuery();
            
            // Check if user exists
            if (result.next()) {
                // Valid user, redirect to Welcome.jsp
                response.sendRedirect("Welcome.jsp");
            } else {
                // Invalid credentials
                out.println("Invalid username or password");
            }
            
            // Close resources
            result.close();
            statement.close();
            conn.close();
            
        } catch (SQLException | ClassNotFoundException e) {
            out.println("Database connection error: " + e.getMessage());
        }
    } else {
        out.println("Empty username or password");
    }
%>
</body>
</html>
