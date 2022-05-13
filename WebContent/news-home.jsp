<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>News-Home</title>
</head>
<body>

<%
	String favNews = "IT";
	Cookie[] newsAppCookies = request.getCookies();
	if(newsAppCookies != null) {
		for(Cookie newsAppCookie : newsAppCookies){
			if(newsAppCookie.getName().equals("newsApp.favNews")) {
				favNews = newsAppCookie.getValue();
				break;
			}
		}
	}
%>
<h2>Hot News For <%= favNews %></h2>
<p>Interested Article At <b><%= favNews %></b>
<p>Interested Article At <b><%= favNews %></b>
<p>Interested Article At <b><%= favNews %></b>
<p>Interested Article At <b><%= favNews %></b>
<p>Interested Article At <b><%= favNews %></b>
<p>Interested Article At <b><%= favNews %></b>
<p>Interested Article At <b><%= favNews %></b>
<p>Interested Article At <b><%= favNews %></b>
<p>Interested Article At <b><%= favNews %></b>
<p>Interested Article At <b><%= favNews %></b>
</body>
</html>