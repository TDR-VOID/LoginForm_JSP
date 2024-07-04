<%@ page contentType="text/html;charset=ISO-8859-1" language="java" %>
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
        if (_email.equals("Tharaka@gmail.com") && _password.equals("tdr123")) {
            // Redirect to Welcome.jsp
            response.sendRedirect("Welcome.jsp");
        } else {
            out.println("Invalid username or password");
        }
    } else {
        out.println("Empty username or password");
    }
%>
</body>
</html>
