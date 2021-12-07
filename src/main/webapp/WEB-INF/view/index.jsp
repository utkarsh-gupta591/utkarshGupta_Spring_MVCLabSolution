<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Debate Event Home Page</title>
</head>
<body>
<div id="display">
<h1>Enrolled Students</h1>
<a href="add"
				class="btn btn-primary btn-sm mb-3"> Add Student </a> 
				
<table class="table table-bordered table-striped">
			<tr>
				<th>StudentID</th>
				<th>StudentName</th>
				<th>Department</th>
				<th>Country</th>

			</tr>
			<c:forEach items="${student}" var="student">
				<tr>
					<td>${student.studentId }</td>
					<td>${student.studentName}</td>
					<td>${student.department}</td>
					<td>${student.country}</td>
					<td>
						<!-- Add "update" button/link --> <a
						href="update?studentId=${student.studentId}"
						class="btn btn-info btn-sm"> Update </a> <!-- Add "delete" button/link -->
						<a href="delete?studentId=${student.studentId}"
						class="btn btn-danger btn-sm"
						onclick="if (!(confirm('Are you sure you want to delete this student?'))) return false">
							Delete </a>
					</td>
				</tr>

			</c:forEach>
		</table>
</div>
</body>
</html>