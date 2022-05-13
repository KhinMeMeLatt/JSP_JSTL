<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Cookies</title>
</head>
<body>

<!-- 
example for cookie name:
	facebook.password
	facebook.username
 -->
<%
	String favNews = request.getParameter("favNews");
	Cookie newsCookie = new Cookie("newsApp.favNews", favNews);
	newsCookie.setMaxAge(60*60); // 3600 seconds
	response.addCookie(newsCookie); // sent text file cookie to browser
%>

Successfully Added Your FavNews : <b><%= favNews %></b>
</body>
</html>