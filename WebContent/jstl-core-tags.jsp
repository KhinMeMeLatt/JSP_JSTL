<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>JSTL Core Tags</title>
</head>
<body>

<%
	Integer age = 20;
	pageContext.setAttribute("age", age);
	
	List<String> languages = new ArrayList<>();
	languages.add("Burmese");
	languages.add("Korea");
	languages.add("Japan");
	languages.add("English");
	languages.add("Spain");
	languages.add("French");
	
	pageContext.setAttribute("languages", languages);
%>
<!-- Test Set  -->
<c:set var="Username" value="Mg Mg"></c:set>

<c:out value="${ Username }"></c:out>

<br>

<c:set var="Userage" value="${ age }"></c:set>
<c:out value="${ Userage }"></c:out>

<br>

<c:set var="languageList" value="${ languages }"></c:set>
<c:forEach items="${ languageList }" var="tempLanguage" >
	<c:out value="${ tempLanguage }"></c:out> <br>
</c:forEach>

<br><br>

<c:set var="age" value="10"></c:set>
<c:if test="${ age >= 18 }">
	<h3>You can vote.</h3>
</c:if>

<c:if test="${ !(age >= 18) }">
	<h3>You cannot vote.</h3>
</c:if>

<br><br>

<c:set var="salary" value="30000"></c:set>
<c:choose>
	<c:when test="${ salary < 180000 && salary > 0 }">
		<b>Your salary is too low.</b>
	</c:when>
	<c:when test="${ salary == 180000 }">
		<b>Your salary is normal.</b>
	</c:when>
	<c:when test="${ salary > 180000 && salary <= 600000 }">
		<b>Your salary is high.</b>
	</c:when>
	<c:when test="${ salary > 600000 }">
		<b>Your salary is too high.</b>
	</c:when>
	<c:otherwise>
		<b>Wrong Input?</b>
	</c:otherwise>
</c:choose>

<br>

<a href="<c:url value="news-home.jsp"></c:url>">News Home</a>
<br><br>

<%-- <c:redirect url="https://khinmemelatt.netlify.app"></c:redirect> --%>

<c:catch var="catchObj">
	<%
		int x = 10/0;
	%>
</c:catch>

<c:if test="${ catchObj != null }">
	<p>
		Exception : ${ catchObj } <br>
		Message : ${ catchObj.message }
	</p>
</c:if>

<br><br>

<c:forTokens var="country" items="Myanmar,England,Japan,Korea" delims=",">
<c:out value="${ country }"></c:out>
</c:forTokens>

</body>
</html>