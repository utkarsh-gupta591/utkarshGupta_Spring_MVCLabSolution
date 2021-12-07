<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<div class="container">

		<h3>Students List</h3>
		<hr>

		<p>Add Student</p>

		<form action="save" method="POST">

			
			<input type="hidden" name="studentId" value="${Student.studentId}"/>

			<div class="form-inline">
				<input type="text" name="studentName" value="${Student.studentName}"
					class="form-control mb-4 col-4" placeholder="studentName">



			</div>

			<div class="form-inline">

				<input type="text" name="department" value="${Student.department}"
					class="form-control mb-4 col-4" placeholder="department">



			</div>

			<div class="form-inline">

				<input type="text" name="country" value="${Student.country}"
					class="form-control mb-4 col-4" placeholder="country">



			</div>

			<button type="submit" class="btn btn-info col-2">Save</button>

		</form>

		<hr>
		<a href="./">Back to Students List</a>

	</div>
</body>
</html>