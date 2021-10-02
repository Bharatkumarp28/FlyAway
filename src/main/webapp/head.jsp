<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>FlyAway</title>
<style>
table {
	margin-top: 10px;
}

table td, table th {
	border: 2px solid black;
}
</style>

<title>Welcome To Fly Away Ticket Booking Portal</title>

<!-- Latest compiled and minified CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">

<!-- jQuery library -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>

<!-- Popper JS -->
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>

<!-- Latest compiled JavaScript -->
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>

</head>
<body>
	<div class="container-fluid">

		<nav class="navbar bg-secondary">
			<img src="images/logo.jpg" class="rounded-circle"
				style="width: 100px; height: 80px ; margin-left: 30px">
		<h1 class="display-3 text-warning">FlyAway</h1>
			<ul class="nav">
				<li class="nav-item">
				<a href="index.jsp"><button class="bg-success" type="button"
						data-toggle="modal" data-target="#myModal1" style="margin-right: 30px">Home</button>
				</a>
				</li>
			
			</ul>
		</nav>
    </div>

<!--  	<a href="login.html">Admin Login</a>
	<hr> -->
</body>
</html>