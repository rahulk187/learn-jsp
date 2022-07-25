<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<!-- CSS only -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor"
	crossorigin="anonymous">
<title>Dynamic Data</title>
</head>
<body>
	<h1>All users are:</h1>
	<sql:setDataSource driver="com.mysql.cj.jdbc.Driver"
		url="jdbc:mysql://localhost:3306/emp" user="root" password="root"
		var="ds" />
	<sql:query dataSource="${ds}" var="rs">select * from employee</sql:query>

	<div class="container">
		<table class="table">
			<tr>
				<th>id</th>
				<th>city</th>
				<th>name</th>
			</tr>

			<c:forEach items="${ rs.rows}" var="row">
				<tr>
					<td><c:out value="${row.id}"></c:out></td>
					<td><c:out value="${row.city}"></c:out></td>
					<td><c:out value="${row.name}"></c:out></td>
				</tr>
			</c:forEach>
		</table>
	</div>
</body>
</html>