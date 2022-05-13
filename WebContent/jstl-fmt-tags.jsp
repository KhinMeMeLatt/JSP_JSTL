<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>JSTL fmt Tags</title>
</head>
<body>

	<c:set var="salary" value="1024.55678"></c:set>
	
	<fmt:parseNumber var="a" type="number" value="${ salary }"></fmt:parseNumber>
	<p><i>Salary:</i><c:out value="${ a }"></c:out></p>
	
	<fmt:parseNumber var="a" integerOnly="true" type="number" value="${ salary }"></fmt:parseNumber>
	<p><i>Salary:</i><c:out value="${ a }"></c:out></p>
	
	<p>Formatted Number 1:<fmt:formatNumber var="b" type="currency" value="${ salary }"></fmt:formatNumber>
	<c:out value="${ b }"></c:out>
	</p>
	
	<p>Formatted Number 2:<fmt:formatNumber var="b" type="number" groupingUsed="true" value="${ salary }"></fmt:formatNumber>
	<c:out value="${ b }"></c:out>
	</p>
	
	<p>Formatted Number 3:<fmt:formatNumber var="b" type="number" maxIntegerDigits="2" value="${ salary }"></fmt:formatNumber>
	<c:out value="${ b }"></c:out>
	</p>
	
	<p>Formatted Number 4:<fmt:formatNumber var="b" type="number" maxFractionDigits="4" value="${ salary }"></fmt:formatNumber>
	<c:out value="${ b }"></c:out>
	</p>
	
	<p>Formatted Number 5:<fmt:formatNumber var="b" type="percent" maxIntegerDigits="3" value="${ salary }"></fmt:formatNumber>
	<c:out value="${ b }"></c:out>
	</p>
	
	<p>Formatted Number 6:<fmt:formatNumber var="b" type="number" pattern="###.###$" value="${ salary }"></fmt:formatNumber>
	<c:out value="${ b }"></c:out>
	</p>
	
	<c:set var="currentDate" value="<%= new Date() %>"></c:set>
	
	<p>
	 Format Time
	 <fmt:formatDate type="time" value="${ currentDate }"/>
	</p>
	<p>
	 Format Date
	 <fmt:formatDate type="date" value="${ currentDate }"/>
	</p>
	<p>
	 Format Date and Time
	 <fmt:formatDate type="both" value="${ currentDate }"/>
	</p>
	
	<p>
		Formatted Date Time Short Style:
		<fmt:formatDate type="both" dateStyle="short" timeStyle="short" value="${ currentDate }"/>
	</p>
	
	<p>
		Formatted Date Time Medium Style:
		<fmt:formatDate type="both" dateStyle="medium" timeStyle="medium" value="${ currentDate }"/>
	</p>
	
	<p>
		Formatted Date Time Long Style:
		<fmt:formatDate type="both" dateStyle="long" timeStyle="long" value="${ currentDate }"/>
	</p>
</body>
</html>