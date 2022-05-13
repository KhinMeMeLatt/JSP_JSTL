<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Functions Test</title>
</head>
<body>

UpperCase : ${ fn:toUpperCase("kmml") }

<br>

UpperCase : <c:out value="${ fn:toUpperCase('abc') }"></c:out>

<br>

LowerCase : <c:out value="${ fn:toLowerCase('APPLE') }"></c:out>

<br>

Contain : <c:out value="${ fn:contains('hello world','world') }"></c:out>

<br>

SubString : <c:out value="${ fn:substring('hello freedom', 6, 13) }"></c:out>

<br>

SubStringBefore : <c:out value="${ fn:substringBefore('hello freedom world','freedom') }"></c:out>

<br>

StringAfter : <c:out value="${ fn:substringAfter('hello freedom world','freedom') }"></c:out>

<br>

StartWith : <c:out value="${ fn:startsWith('hello','e') }"></c:out>

<br>

EndsWith : <c:out value="${ fn:endsWith('hello','o') }"></c:out>

<br>

<c:set var="countryString" value="Myanmar,Korea,Japan"></c:set>

<c:forEach var="tempCountry" items="${ fn:split(countryString, ',') }">
<c:out value="${ tempCountry }"></c:out><br>
</c:forEach>

<br>

<c:set var="countryList" value="${ fn:split(countryString, ',') }"></c:set>
<c:out value="${ fn:join(countryList, '*') }"></c:out>
<br>

<c:set var="string1" value="just sample string"></c:set><br>
<c:set var="string2" value="<test>just sample string</test>"></c:set>

Without XmlEscape: <br>
${ string1 }<br>
${ string2 }<br>

With XmlEscape: <br>
${ fn:escapeXml(string1) }
${ fn:escapeXml(string2) }
</body>
</html>