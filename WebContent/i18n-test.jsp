<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<c:set var="theLocale" value="${ not empty param.locale ? param.locale : pageContext.request.locale }"></c:set>
<fmt:setLocale value="${theLocale }"></fmt:setLocale>
<fmt:setBundle basename="com.i18n.test.Language"></fmt:setBundle>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>I18N Test</title>
</head>
<body>

	<h2>Multi Language Support</h2>
	
	<a href="i18n-test.jsp?locale=en_US">English(US)</a>| |
	<a href="i18n-test.jsp?locale=de_DE">German</a>| |
	<a href="i18n-test.jsp?locale=es_ES">Spain</a>| |
	<a href="i18n-test.jsp?locale=fr_FR">French</a>| |
	<br><br>
	<fmt:message key="greeting"></fmt:message><br><br>
	<fmt:message key="welcome"></fmt:message><br><br>
	<fmt:message key="proverb"></fmt:message><br><br>
	<fmt:message key="word"></fmt:message><br><br>
</body>
</html>