<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Request Object</title>
</head>
<body>

User Context : <b><%= request.getContextPath() %></b><br>
User Locale : <b><%= request.getLocale() %></b><br>
User Port : <b><%= request.getLocalPort() %></b><br>
User LocalName : <b><%= request.getLocalName() %></b><br>
User Client : <b><%= request.getHeader("user-agent") %></b><br>

</body>
</html>