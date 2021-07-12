<html>
<body>
<h3>JSP Built-In Objects</h3>

<!-- following line returns what type of browser user is using to access my JSP page and on which OS that browser is running on -->
Request user agent: <%= request.getHeader("User-Agent") %>

<br>
<!-- following code returns what language user is using in his browser -->
Request language: <%= request.getLocale() %>
</body>
</html>