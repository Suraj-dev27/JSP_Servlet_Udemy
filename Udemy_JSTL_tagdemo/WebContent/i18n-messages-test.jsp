<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<c:set var="theLocale" value="${not empty param.theLocale ? param.theLocale : pageContext.request.locale}" 
scope="session" />

<fmt:setLocale value="${theLocale }" />

<fmt:setBundle basename="com.ssd.jsp.tagdemo.i18n.resources.mylabels" /> <!-- JSP will append theLocale which we will get from above line, syntax: "mylabels_<theLocale>.properties", e.g.: "mylabels_es_ES.properties" -->

<html>

<body>

<a href="i18n-messages-test.jsp?theLocale=en_US">English (US)</a>
 |
<a href="i18n-messages-test.jsp?theLocale=es_ES">Spanish (ES)</a>
 |
<a href="i18n-messages-test.jsp?theLocale=de_DE">Greman (DE)</a>
 |
<a href="i18n-messages-test.jsp?theLocale=mr_MR">Marathi (MR)</a>

<hr>

<fmt:message key="label.greeting" /> <br/><br/>

<fmt:message key="label.firstname" /> <i>John</i> <br/>

<fmt:message key="label.lastname" /> <i>Doe</i> <br/><br/>

<fmt:message key="label.welcome" /> <br/><br/>

<hr>
Selected locale: ${theLocale}

</body>

</html>