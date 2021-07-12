<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%@ page import="java.util.*, com.ssd.jsp.tagdemo.Student" %>

<%
//just create some sample data ... normally provided by MVC but not here
List<Student> data = new ArrayList<Student>();

data.add(new Student("John", "Doe", false));
data.add(new Student("Maxwell", "Johnson", false));
data.add(new Student("Mary", "Public", true));

pageContext.setAttribute("myStudents", data);

%>

<html>

<body>
<table border="1">
<tr>
<th>First Name</th>
<th>Last Name</th>
<th>Gold Customer</th>
</tr>


<c:forEach var="tempStudent" items= "${myStudents}">

<tr>
<td> ${tempStudent.firstName}</td>  <!-- it will internally call tempStudent.getFirstName() -->
<td> ${tempStudent.lastName}</td>  <!-- it will internally call tempStudent.getLastName() -->
<td> ${tempStudent.goldCustomer}</td>  <!-- it will internally call tempStudent.isGoldCustomer() -->
</tr>

</c:forEach>

</table>

</body>

</html>