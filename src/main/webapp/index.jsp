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
				<li class="nav-item"><button class="bg-success" type="button"
						data-toggle="modal" data-target="#myModal1" style="margin-right: 30px">Admin Login</button></li>
			</ul>
		</nav>
    <!--  <h1>Search For Flights</h1> -->
	<form name="searchForFlights" method="GET" action="search-flights">
	<div class="row" style="margin-top: 50px;">
	<div class="col-sm-2">
		Flying From : <br> <input type="text" name="source" style="margin-top: 5px;"> 
	</div>
	<div class="col-sm-2">
		Flying To : <br> <input type="text" name="destination" style="margin-top: 5px;"> 
	</div>
	<div class="col-sm-2">
		Your Max Price : <br> <input type="number" name="price" style="margin-top: 5px;"> 
	</div>
	<div class="col-sm-2">
		Flights On or After Date : <br> <input type="date" name="date" style="margin-top: 5px;"> 
	</div>
	<div class="col-sm-2">
		<input type="submit" value="Search for flights!" style="margin-top: 22px;" class="btn-primary btn">
	</div>
	</form>
	<form name ="seeAllFlights" method="GET" action="see-all-flights">
		<input type="submit" value="See All Flights" style="margin-top: 24px;" class="btn btn-warning">
	</form>	
	
	</div>
	
	
	<!-- The Modal -->
	<div class="modal" id="myModal1">
		<div class="modal-dialog">
			<div class="modal-content">

				<!-- Modal Header -->
				<div class="modal-header">
					<h4 class="modal-title">LogIn</h4>
					<button type="button" class="close" data-dismiss="modal">&times;</button>
				</div>

				<!-- Modal body -->
				<div class="modal-body">

					<form style="font-weight: bold;" action="Login"
						method="post">

						<div class="form-group">
							Email Id: <input type="email" class="form-control"
								placeholder="Enter Email" name="username">
						</div>
						<div class="form-group">
							Email Password: <input type="password" class="form-control"
								placeholder="Enter Password" name="password">
						</div>
				</div>

				<!-- Modal footer -->
				<div class="modal-footer">
					<input type="submit" class="form-control col-sm-4 bg-success"
						value="Login" name="action">
					</form>

				</div>

			</div>
		</div>
	</div>

<!--  	<a href="login.html">Admin Login</a>
	<hr> -->
</body>
</html>