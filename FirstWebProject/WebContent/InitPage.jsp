<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<!-- overriding jspInit() method to pass/set servletConfig value into sevletContext/applicationContext  -->
<%!
public void jspInit() {
	String defaultUser = getServletConfig().getInitParameter("defaultUser");
	ServletContext context = getServletContext();
	context.setAttribute("defaultUser", defaultUser);
}
%>
default user name from servlet config is: <%= getServletConfig().getInitParameter("defaultUser") %> <br>
user name in servlet context is: <%= getServletContext().getAttribute("defaultUser") %>
</body>
</html>