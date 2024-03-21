<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">

<title>Sign Up</title>
</head>
<body>
	<div class="container-fluid ">

		<nav class="navbar navbar-expand-lg navbar-dark bg-dark ">
			<a class="navbar-brand" href="/springmvc/home">Main</a>
			<button class="navbar-toggler" type="button" data-toggle="collapse"
				data-target="#navbarNav" aria-controls="navbarNav"
				aria-expanded="false" aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarNav">
				<ul class="navbar-nav">
					<li class="nav-item active"><a class="nav-link" href="#">Home
							<span class="sr-only">(current)</span>
					</a></li>
					<li class="nav-item"><a class="nav-link" href="#">Features</a>
					</li>

				</ul>
			</div>

		</nav>
	</div>

	<div class="container mt-5">
		<h3 class="text-center">${Header }</h3>
		<p class="text-center">${Desc }</p>
		<form action="processform" method="post">

			<div class="form-group">
				<label for="userEmail">Id</label> <input name="id" type="id"
					class="form-control" id="userId" aria-describedby="id"
					placeholder="Enter Id">
			</div>

			<div class="form-group">
				<label for="userEmail">Email address</label> <input name="email"
					type="email" class="form-control" id="userEmail"
					aria-describedby="emailHelp" placeholder="Enter email" required>
			</div>

			<div class="form-group">
				<label for="userName">Name</label> <input name="name" type="text"
					class="form-control" id="userName" aria-describedby="nameHelp"
					placeholder="Enter name" required>
			</div>

			<div class="form-group">
				<label for="userPassword">Password</label> <input name="password"
					type="password" class="form-control" id="userPassword"
					aria-describedby="passwordHelp" placeholder="Enter password"
					required>
			</div>

			<div class="container text-center">
				<button type="submit" class="btn btn-success">Sign up</button>
			</div>
		</form>

		<%
		if ("POST".equals(request.getMethod()) && request.getParameter("email") != null && request.getParameter("name") != null
				&& request.getAttribute("DupUser") != null) {
		%>
		<div class="alert alert-danger mt-3" role="alert">User already
			exists</div>

		<div class="container text-center">
			<a href="contact">Back</a>
		</div>
		<%
		}
		%>



		<a href="viewUsers">Get All Users</a>
	</div>
	<!-- Optional JavaScript -->
	<!-- jQuery first, then Popper.js, then Bootstrap JS -->
	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
		integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js"
		integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js"
		integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
		crossorigin="anonymous"></script>
</body>
</html>