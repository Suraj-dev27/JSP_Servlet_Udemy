<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login Page</title>
</head>
<body>
	<form action="Process.jsp" method="post">
		<br>User ID: <input type="text" name="userId" /> 
		<br>User Name: <input type="text" name="userName" />
		<br>Address: <input type="text" name="address" /> 
		<br>City: <input type="text" name="city" /> 
		<br>State: <input type="text" name="state" />
		<br>Pincode: <input type="text" name="pincode" />   
		<br><input type="submit" />
	</form>
</body>
</html>