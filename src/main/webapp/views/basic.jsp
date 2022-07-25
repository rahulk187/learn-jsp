<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%!int x = 10;%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Basic Tags of jsp</title>
</head>
<body>
	<h1>Hello World!</h1>
	<%
		out.println("2 * 5 = " + 2 * 5);
	%>
	<br>
	<%="value of x is = " + x%>
</body>
</html>