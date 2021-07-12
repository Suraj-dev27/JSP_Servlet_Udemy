<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" %>
 <%@ page import="java.util.Date" %>
 
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>First Web Project</title>
</head>
<body>
<%@ include file="Hello.jsp" %>
<br>
<b>The time is : <%=new Date() %></b>
<br>
<%
int a=10;
int b=3;
int c = a-b;
out.print("value of "+a+" + "+b+" is: "+c); //first way of printin value
%>
<br/>
The result of addition is:<%=c %>!!   <!-- second way of printing value and it is efficient way-->

<!-- methods declared in declarative tag are available to all scriptlet tags -->
<%!
public int add(int a, int b){
	return a+b;
}
%>
<%
int s=add(8, 8);
%>
<br/>
result of add method:<%=s %>!!
</body>
</html>