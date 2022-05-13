<%@page import="java.time.LocalDate"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>CV Info</title>
</head>
<body>
<h1>CV Info</h1>
Name: ${param.userName }<br>

<%
	LocalDate dob = LocalDate.parse(request.getParameter("dob"));
	out.println("Date of Birth: "+dob);
	LocalDate now = LocalDate.now();
	int age =  now.getYear()-dob.getYear();
	out.println("<br>Age: "+age+"<br>");
%>

Gender: ${param.gender}<br>
Education: ${param.education }<br>
City: ${param.city }<br>
Phone Number: ${param.phone }<br>
Email: ${param.email }<br>
language: <br>
<ul>
	<%
		String[] languages = request.getParameterValues("languages");
		for(String language : languages)
			out.println("<li>"+language+"</li>");
	%>
</ul>
Work Experience: ${param.workExperience }<br>
Skills: ${param.skills }
<%
	String[] certificates = request.getParameter("certificates").split(",");
	out.println(request.getParameter("userName")+" has "+certificates.length+" certificates");
	out.println("They are: ");
	out.println("<ul>");
	for(String certificate : certificates)
		out.print("<li>"+certificate+"</li>");
	out.println("</ul>");
%>

Volunteer Experience: ${param.volunteer }<br>
Award: ${param.award }<br>
</body>
</html>