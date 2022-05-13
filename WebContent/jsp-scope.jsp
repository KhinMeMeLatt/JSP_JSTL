<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>JSP Scope</title>
</head>
<body>

<%-- <c:set var="name" value="MgMg" scope="page"></c:set> --%>

<%-- Page Variable : <c:out value="${ name }"></c:out> --%>

<!-- <br> -->

<!-- <a href="test-scope.jsp">Test Page</a> -->


<%-- <c:set var="name" value="MgMg" scope="request"></c:set> --%>

<%-- Page Variable : <c:out value="${ name }"></c:out> --%>

<!-- <br> -->

<%-- <jsp:forward page="test-scope.jsp"></jsp:forward> --%>

<%-- <c:set var="name" value="MgMg" scope="session"></c:set> --%>
<c:set var="name" value="MgMg" scope="application"></c:set>

Page Variable : <c:out value="${ name }"></c:out>

<br>

<c:remove var="name"/>

<a href="test-scope.jsp">Test Page</a>


</body>
</html>