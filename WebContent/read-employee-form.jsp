<%@page import="org.apache.jasper.tagplugins.jstl.core.ForEach"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Employee Form Data</title>
</head>
<body>

<h2>Employee Form Data</h2>

Employee Name : <b> ${param.employeeName}</b><br>
Employee Password : <b> 
<% 

String password = request.getParameter("employeePassword");

if(password.length() < 8)
	out.print("Your Password :"+password+" is too short");
else
	out.print(password);
%>
</b><br>
Employee Email : <b>${param.employeeEmail}</b><br>

Employee Role : <b>${param.employeeRole}</b><br>

Employee Gender : <b>${param.employeeGender}</b><br>

Employee Expected Field:

<ul>
	<%
		String[] fields = request.getParameterValues("employeeExpectedField");
		for(String field : fields)
			out.print("<li>"+field+"</li>");
	%>
</ul>
<!-- 
	${param.fieldName}
 -->

</body>
</html>