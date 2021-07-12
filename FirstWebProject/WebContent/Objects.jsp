<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Objects ppage</title>
</head>
<body>
<%
String userName = request.getParameter("name");
if(userName!="" && userName != null){
	session.setAttribute("sessionUserName", userName);
	//application.setAttribute("applicationUserName", userName);
	pageContext.setAttribute("pageContextUserName", userName);
	pageContext.setAttribute("applicationUserName", userName, PageContext.APPLICATION_SCOPE );
	
}
%>
the request attribute is: <%=userName %><br>
the session attribute is: <%=session.getAttribute("sessionUserName") %><br>
the application/context attribute is: <%=application.getAttribute("applicationUserName") %><br>
the pageContext attribute is: <%=pageContext.getAttribute("pageContextUserName") %>
</body>
</html>