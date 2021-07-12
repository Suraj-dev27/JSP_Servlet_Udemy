<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"  import = "ssd.beans.User"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Success Page</title>
</head>
<body>
<h2>Login Successful !!!</h2>
 
<%
//User user = (User) session.getAttribute("user");

//User user = (User) request.getAttribute("user"); //rplacing this line with follo code
%>

<!-- replacing above line in scriptlet tag with JSTL tag -->
<jsp:useBean id="user" class="ssd.beans.User" scope="request"></jsp:useBean>


Hello <%= user.getUserName() %> from expression tag<br>
Hello <jsp:getProperty property="userName" name="user"/> from JSTL tag<br>
</body>
</html>