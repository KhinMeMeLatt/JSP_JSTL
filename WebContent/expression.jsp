<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Expression</title>
</head>
<body>
ServerDate is <b> <%= new Date() %> </b><br>
UpperCase Letter : <%= new String("apple").toUpperCase() %><br>
LowerCase Letter : <%= new String("APPLE").toLowerCase() %><br>
Sum : <%= 100 + 10 %><br>
Square Root : <%= Math.sqrt(2) %><br>
Length of "Hello World" : <%= "Hello World".length() %><br>
First Letter of "Hello" : <%= "Hello".charAt(0) %><br>
Index of 'e' in "Hello" : <%= "Hello".indexOf('e') %><br>
Concatenation of strings : <%= "Hello".concat("World") %><br>
Second world of "Hello World" : <%= "Hello World".substring(6) %><br>
</body>
</html>