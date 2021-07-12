<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<jsp:useBean id="user" class="ssd.beans.User" scope="request">
<jsp:setProperty property="*" name="user" /> <!-- if i define value="abc" it will take this default value for userName and if i don't define then it will take value from request -->
</jsp:useBean>

Hello <jsp:getProperty property="userName" name="user"/>!! <br>
Address: <jsp:getProperty property="address" name="user"/> <br>
City: <jsp:getProperty property="city" name="user"/> <br>
State: <jsp:getProperty property="state" name="user"/> <br>
Pincode: <jsp:getProperty property="pincode" name="user"/> <br>

</body>
</html>