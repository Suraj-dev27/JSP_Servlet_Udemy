 <html>
<head><title>STudent Confirmation </title></head>

<body>
<!-- The student is confirmed: ${param.firstname} ${param.lastname} -->
<br>
The student is confirmed: <%= request.getParameter("firstname") %> <%= request.getParameter("lastname") %>
<br><br><br>

<!-- The student's country: ${param.country} -->
<br>
The student's country: <%= request.getParameter("country") %>
<br><br><br>

<!-- The student's field is: ${param.field } -->
<br>
The student's field is: <%= request.getParameter("field") %>
<br><br><br>

The student's favorite programming languages:
<ul>
<%
String[] langs = request.getParameterValues("favoritelang");

for(String templang: langs){
	out.println("<li>" + templang + "</li>");
}
%>
</ul>

</body>
</html>