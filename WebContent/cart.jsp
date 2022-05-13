<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>My Cart</title>
</head>
<body>

	<!-- 
session
------------
	isNew()
	getId()
	invalidate() - unbind session and object
	setMaxInactiveInterval()
 -->
	<h2>Welcome To My Cart</h2>
	<%
		List<String> myCartItems = (List<String>)session.getAttribute("myCart");
		String[] cartItems = request.getParameterValues("cartItem");
	
		if(myCartItems == null || cartItems != null) {
			myCartItems = new ArrayList<>();
			session.setAttribute("myCart", myCartItems);
			for(String cartItem : cartItems) {
				myCartItems.add(cartItem);
			}
		}
	%>
	<h3>My Shopping cart Items:</h3>
	<ol>
		<%
			for(String item : myCartItems) {
				out.print("<li>"+item+"</li>");
			}
		%>
	</ol>
</body>
</html>