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
						data-toggle="modal" data-target="#myModal">SignUp</button></li>&nbsp;&nbsp;
				<li class="nav-item"><button class="bg-success" type="button"
						data-toggle="modal" data-target="#myModal1" style="margin-right: 30px">Login</button></li>
			</ul>
		</nav>

	</div>

	<!-- The Modal -->
	<div class="modal" id="myModal">
		<div class="modal-dialog">
			<div class="modal-content">

				<!-- Modal Header -->
				<div class="modal-header">
					<h4 class="modal-title">Registration Form</h4>
					<button type="button" class="close" data-dismiss="modal">&times;</button>
				</div>

				<!-- Modal body -->
				<div class="modal-body">

					<form style="font-weight: bold;" action="LoginCheck"
						method="post">

						<div class="form-group">
							Name: <input type="text" class="form-control"
								placeholder="Enter Name" name="name" required>
						</div>

						<div class="form-group">
							Email Id: <input type="email" class="form-control"
								placeholder="Enter Email" name="email" required>
						</div>
						<div class="form-group">
							Email Password: <input type="password" class="form-control"
								placeholder="Enter Password" name="pwd" required>
						</div>
				</div>

				<!-- Modal footer -->
				<div class="modal-footer">
					<input type="submit" class="form-control col-sm-4 bg-primary"
						value="signin" name="action">
					</form>

				</div>

			</div>
		</div>
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

					<form style="font-weight: bold;" action="LoginCheck"
						method="post">

						<div class="form-group">
							Email Id: <input type="email" class="form-control"
								placeholder="Enter Email" name="lemail">
						</div>
						<div class="form-group">
							Email Password: <input type="password" class="form-control"
								placeholder="Enter Password" name="lpwd">
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
	<br>
	<!-- Carousel -->
	<div class="container" style="width: 700px;">
		<center>
			
			<br>
			<div id="demo" class="carousel slide" data-ride="carousel">

				<!-- Indicators -->
				<ul class="carousel-indicators">
					<li data-target="#demo" data-slide-to="0" class="active"></li>
					<li data-target="#demo" data-slide-to="1"></li>
					<li data-target="#demo" data-slide-to="2"></li>
				</ul>


				<!-- The slideshow -->
				<div class="carousel-inner">
					<div class="carousel-item active">
						<div class="row">
							<div class="col-xs-4">
								<img src="images/formalmenshirt2.jpg" alt="Los Angeles" width="200"
									height="200">
							</div>
							<div class="col-xs-4">
								<img src="images/formalBlue.jpg" alt="Los Angeles" width="200"
									height="200">
							</div>
							<div class="col-xs-4">
								<img src="images/formalmenshirt1.jpg" alt="Los Angeles" width="200"
									height="200">
							</div>
						</div>

					</div>

					<div class="carousel-item">
						<div class="row">
							<div class="col-xs-4">
								<img src="images/casualkurti.jpg" alt="Los Angeles" width="200"
									height="200">
							</div>
							<div class="col-xs-4">
								<img src="images/pant1.jpg" alt="Los Angeles" width="200"
									height="200">
							</div>
							<div class="col-xs-4">
								<img src="images/casuallongsleeve.jpeg" alt="Los Angeles" width="200"
									height="200">
							</div>
						</div>

					</div>

					<!-- Left and right controls -->
					<a class="carousel-control-prev" href="#demo" data-slide="prev">
						<span class="carousel-control-prev-icon"></span>
					</a> <a class="carousel-control-next" href="#demo" data-slide="next">
						<span class="carousel-control-next-icon"></span>
					</a>
				</div>
			</div>
		</center>
	</div>
	<br>
	<br>
	<br>
	<div class="container">
		<form action="LoginCheck" method="post">

			<b>Select Category : </b><br> <select name="category">
				<c:forEach var="i" items="${cl}">
					<option>
						${i}</option>
				</c:forEach>
			</select> &nbsp;&nbsp;&nbsp;&nbsp;<input type="submit" class="btn btn-primary"
				name="action" value="Go">
		</form>
	</div>


	<br>
	<br>

	<table class="table table-hover container" border="2px"
		cellpadding="10px" cellspacing="0px">
		<thead>
			<tr>
				<th>Image</th>
				<th>Name</th>
				<th>UnitPrice</th>
			</tr>

		</thead>
		<tbody>
			<c:forEach var="j" items="${pl}">
				<tr>
					<td align="center"><img src="images/${j.image_url}"
						style="width: 200px; height: 200px;"></td>


					<td><c:out value="${j.name}"></c:out></td>


					<td><c:out value="${j.price}"></c:out></td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
</body>
</html>