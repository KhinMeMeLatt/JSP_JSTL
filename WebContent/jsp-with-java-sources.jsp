<%@page import="com.test.TheSmallest"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>JSP With Java Sources</title>
</head>
<body>
The smallest value is <b><%= TheSmallest.min(10, 20, 30) %></b>
</body>
</html>