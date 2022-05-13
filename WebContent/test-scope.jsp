<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>JSP Scope Test Page</title>
</head>
<body>

<h3>Test Scope Page</h3>

Variable From previous Page : 
<c:out value="${ name }"></c:out>
</body>
</html>