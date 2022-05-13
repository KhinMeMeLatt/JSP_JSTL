<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Declaration</title>
</head>
<body>

	<%!
		int max(int a, int b) {
		
			if(a > b) {
				return a;
			} else {
				return b;
			}
		}
	
		int min(int a, int b) {
			
			if(a < b) {
				return a;
			} else {
				return b;
			}
		}
	%>
	
	Max Value is : <%= max(30, 50) %>
	<br>
	Min value is: 
	<%
		int result = min(100, 200);
		out.println(result);
	%>
	
</body>
</html>