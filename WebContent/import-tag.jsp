<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Import Tag</title>
</head>
<body>
<%-- 	<c:import var="portfolio" url="https://khinmemelatt.netlify.app"></c:import> --%>
	
<%-- 	<c:out value="${ portfolio }"></c:out> --%>

<c:url value="news-cookie.jsp" var="test">
	<c:param name="favNews" value="Geographic"></c:param>
</c:url>

<c:import url="${ test }"></c:import>


</body>
</html>