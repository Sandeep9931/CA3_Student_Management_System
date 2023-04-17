<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
<title>Students | Student Management System</title>
</head>
<body>
	<jsp:include page="../base.jsp"></jsp:include>
	
	<div class="container">
		<h3 class="text-center">Registered Students</h3>
		
		
		<table class="table">
		<thead class="table-dark">
			<tr >
				<th>Registration Number</th>
				<th>Name</th>
				<th>Address</th>
				<th>Country</th>
				<th>Gender</th>
				<th>Hobbies</th>
				<th>Preferred Languages</th>
				<th></th>
				<th></th>
			</tr>
			</thead>
			<c:if test="${ !students.isEmpty() }">
				<c:forEach items="${ students }" var="student">
					<tr>
						<td>119091${ student.id }</td>
						<td>${ student.name }</td>
						<td>${ student.address }</td>
						<td>${ student.country }</td>
						<td>${ student.gender }</td>
						<td>${ student.hobbies }</td>
						<td>${ student.languages }</td>
						<th>
							<a href=update/${student.id} class="text-success">
								Edit
							</a>
						</th>
						<th>
							<a href="remove/${student.id}" class="text-danger">
								Remove
							</a>
						</th>
					</tr>
				</c:forEach>
			</c:if>
		</table>
	</div>
</body>
</html>