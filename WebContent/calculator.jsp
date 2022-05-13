<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Calculator</title>
</head>
<body>
	<%!
		int add(int operand1, int operand2) {
			return operand1 + operand2;
		}
	
		int sub(int operand1, int operand2) {
			return operand1 - operand2;
		}
		
		int mul(int operand1, int operand2) {
			return operand1 * operand2;
		}
		
		int div(int operand1, int operand2) {
			return operand1 / operand2;
		}
	%>
	
	2+3 =
	<%
		int operand1 = 2;
		int operand2 = 3;
		char operator = '+';
		int result = 0;
		
		switch(operator){
			case '+': 
				result = add(operand1, operand2);
				break;
			case '-': 
				result = sub(operand1, operand2);
				break;
			case '*': 
				result = mul(operand1, operand2);
				break;
			case '/': 
				result = div(operand1, operand2);
				break;
		}
		out.println(result);
	%>
</body>
</html>