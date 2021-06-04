<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!doctype html>
<html lang="en">

<head>
<title>PEPE Entertaiment Login</title>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
</head>
<style>

.navv {
	background-color: #c3e3e5;
}

.header {
	background-color: #cde3e5;
	font: bold;
}

.body {
	background-color: #cde3e5;
}

.card-header {
	background-color: #b2ecf8;
	font: bold;
	border-radius: 6px;
}

.item1 {
	background-color: #bfecf8;
}

.item2 {
	background-color: #cdecf8;
}

.item3 {
	background-color: #dcecf8;
}

.card-footer {
	background-color: #b2ecf8;
	border-radius: 6px;
}

.card-body {
	background-color: #d1ecf8;
}

</style>
<body class="body">
	<main class="container">
		<header class="header row pt-5 pb-2">
			<div class="col-9">
				<h1>PEPE Entertaiment</h1>
			</div>

			<div class="col-3 text-right">
				<img src="img/pepe.png" class="img-fluid" width="60" height="60"/>
			</div>
		</header>
		<nav class="row">
			<nav class=" navv col navbar navbar-expand-sm navbar-light ">
				<a class="navbar-brand" href="HomePage">PEPE Ent</a>
				<button class="navbar-toggler d-lg-none" type="button"
					data-toggle="collapse" data-target="#collapsibleNavId"
					aria-label="Toggle navigation">
					<span class="navbar-toggler-icon"></span>
				</button>
				<div class="collapse navbar-collapse" id="collapsibleNavId">
					<ul class="navbar-nav mr-auto mt-2 mt-lg-0">
						<li class="nav-item active"><a class="nav-link" href="https://www.facebook.com/nvhungf/" target="_blank"><i
								class="fa fa-home" aria-hidden="true"></i>About Us</a></li>
						<li class="nav-item active"><a class="nav-link" href="https://www.facebook.com/nvhungf/" target="_blank">
								<i class="fa fa-id-card" aria-hidden="true"></i>Contact Us
						</a></li>
						<li class="nav-item active"><a class="nav-link" href="#">
								<i class="fa fa-comment" aria-hidden="true"></i> My Favareites
						</a></li>
						<li class="nav-item active"><a class="nav-link"
							href="UserManagement"><i class="fa fa-cog" id="admin" aria-hidden="true"></i>
								Administration </a></li>
						<li class="nav-item dropdown active"><a
							class="nav-link dropdown-toggle" href="#" id="dropdownId"
							data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><i
								class="fa fa-user" aria-hidden="true"></i> My Account</a>
							<div class="dropdown-menu" aria-labelledby="dropdownId">
								<c:if test="${ ! isLogin }">
									<a class="dropdown-item" href="Login">Login</a>
									<a class="dropdown-item" href="ForgotPassword">Forgot
										Password</a>
									<a class="dropdown-item" href="Registration">Resgistration</a>
								</c:if>
								<c:if test="${ isLogin }">
									<a class="dropdown-item" href="Logoff">Logoff</a>
									<a class="dropdown-item" href="ChangePassword">Change
										Password</a>
									<a class="dropdown-item" href="EditProfile">Edit Profile</a>
								</c:if>
							</div></li>
						<form class="d-flex">
							<input class="header form-control me-2" type="search"
								placeholder="Search" aria-label="Search">
							<button class="btn btn-outline-success" type="submit">Search</button>
						</form>
					</ul>
				</div>
			</nav>
		</nav>
		<section class="row">
			<jsp:include page="${page.contentUrl }"></jsp:include>
		</section>
		<footer class="row">
		<div class="message">${error }</div>
			<div class="col text-center boder-top">
				<strong>PEPE <i class="fa fa-copyright" aria-hidden="true">
						2020 ALL RIGHT</i></strong>
			</div>
		</footer>
	</main>



	<!-- Optional JavaScript -->
	<!-- jQuery first, then Popper.js, then Bootstrap JS -->
	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
		integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
		crossorigin="anonymous"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
		integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
		crossorigin="anonymous"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
		integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
		crossorigin="anonymous"></script>
	<c:if test="${not empty page.scriptUrl }">
		<jsp:include page="${page.scriptUrl }"></jsp:include>
	</c:if>

</body>

</html>