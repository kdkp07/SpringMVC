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

<title>Library</title>
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
	
	<section class="vh-100" style="background-color: #9A616D;">
		<div class="container py-5 h-100">
			<div
				class="row d-flex justify-content-center align-items-center h-100">
				<div class="col col-xl-10">
					<div class="card" style="border-radius: 1rem;">
						<div class="row g-0">
							<div class="col-md-6 col-lg-5 d-none d-md-block">
								<img
									src="https://media.istockphoto.com/id/1754638356/photo/3d-account-log-in-concept-user-authorization-login-authentication-page-sign-up-concept.webp?b=1&s=170667a&w=0&k=20&c=kslHxc3bfIxO1GCidL0kYssRRUokldmB2fb8SuJxrpk="
									alt="login form" class="img-fluid"
									style="border-radius: 1rem 0 0 1rem;  width:100% ; height:80%" />
							</div>
							<div class="col-md-6 col-lg-7 d-flex align-items-center">
								<div class="card-body p-4 p-lg-5 text-black">

									<form action="userLoginForm" method="post">

										<div class="d-flex align-items-center mb-3 pb-1">
											<i class="fas fa-cubes fa-2x me-3" style="color: #ff6219;"></i>
											<span class="h1 fw-bold mb-0">App</span>
										</div>

										<h5 class="fw-normal mb-3 pb-3" style="letter-spacing: 1px;">Login
											into your account</h5>

										<div class="form-outline mb-4">
											<input type="text" id="id"
												class="form-control form-control-lg" name="id" /> <label
												class="form-label" for="id">Id
												</label>
										</div>

										<div class="form-outline mb-4">
											<input type="password" id="password"
												class="form-control form-control-lg" name= "password"/> <label
												class="form-label" for="password">Password</label>
										</div>

										<div class="pt-1 mb-4">
				
											<button class="btn btn-dark btn-lg btn-block" type="submit">Login</button>
										</div>

										<a class="small text-muted" href="#!">Forgot password?</a>
										<p class="mb-5 pb-lg-2" style="color: #393f81;">
											Don't have an account? <a href="/springmvc/contact" style="color: #393f81;">Register
												here</a>
										</p>
										<a href="#!" class="small text-muted">Terms of use.</a> <a
											href="#!" class="small text-muted">Privacy policy</a>
									</form>

								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
		<%-- <%
		if ("POST".equals(request.getMethod()) && request.getParameter("email") != null && request.getParameter("password") != null
				&& request.getAttribute("invalid-user") != null) {
		%>
		<div class="alert alert-danger mt-3" role="alert"> ${invalid-cred }</div>
		<%
		} --%>
<!-- 		%> -->
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