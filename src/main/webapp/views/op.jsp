<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page errorPage="error_ex.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%
		// fetch inputs
		String s1 = request.getParameter("n1");
		String s2 = request.getParameter("n2");
		
		int n1 = Integer.parseInt(s1);
		int n2 = Integer.parseInt(s2);
		
		int c = n1/n2;
	%>
	<h1>Result is : <%=c %></h1>
</body>
</html>