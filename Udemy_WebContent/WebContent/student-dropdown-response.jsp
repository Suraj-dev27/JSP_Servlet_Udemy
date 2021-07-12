 <html>
<head><title>STudent Confirmation </title></head>

<body>
The student is confirmed: ${param.firstname} ${param.lastname}
<br>
The student is confirmed: <%= request.getParameter("firstname") %> <%= request.getParameter("lastname") %>
<br><br><br>
The student's country: ${param.country}
<br>
The student's country: <%= request.getParameter("country") %>
</body>
</html>