<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Core Library</title>
</head>
<body>
	<h1>
		<c:out value="hello world!" />
	</h1>
	<h1>
		<c:set var="i" value="10" scope="application"></c:set>
	</h1>
	<h1>${ i }</h1>

	<c:forEach var="j" begin="0" end="10" step="2">
		<h3>${ j }</h3>
	</c:forEach>

	<c:url value="/index.html" var="myURL">
		<c:param name="trackingId" value="1234" />
		<c:param name="reportType" value="summary" />
	</c:url>
	<c:out value="${myURL}" />

</body>
</html>