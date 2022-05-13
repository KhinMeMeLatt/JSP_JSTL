<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Scriptlet</title>
</head>
<body>
The Value List Between 10 and 1000:<br><br>

<%
	for(int i=10; i<=1000; i++) {
		out.print("<b>"+i+"</b><br>");
	}
%>

</body>
</html>