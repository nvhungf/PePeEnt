<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!doctype html>
<html lang="en">

<head>
<title>${page.title}</title>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
</head>
<style>
.navv{
        background-color:#c3e3e5;
    }


.card-body {
	background-color: #cde3e5;

}

.abc {
	 background-color: #cde3e5;
}
</style>
<body class="abc">
	<main class="container-fluid">
	<nav class="navv">
		<nav class="row">
			<nav class="navbar navbar-expand-sm navbar-light  col">
				<a class="navbar-brand" href="UserManagement">Administration</a>
				<button class="navbar-toggler d-lg-none" type="button"
					data-toggle="collapse" data-target="#collapsibleNavId"
					aria-controls="collapsibleNavId" aria-expanded="false"
					aria-label="Toggle navigation">
					<span class="navbar-toggler-icon"></span>
				</button>
				<div class="collapse navbar-collapse" id="collapsibleNavId">
					<ul class="navbar-nav mr-auto mt-2 mt-lg-0">
						<li class="nav-item active"><a class="nav-link"
							href="HomePage"><i class="fa fa-home"
								aria-hidden="true">Home</i>
						</a></li>
						<li class="nav-item active"><a class="nav-link"
							href="VideoManagement"> <i class="fa fa-info"
								aria-hidden="true">Videos</i>
						</a></li>
						<div class="nav-item active">
							<a href="UserManagement" class="nav-link"><i
								class="fa fa-id-card" aria-hidden="true"> Users</i></a>
						</div>
						<div class="nav-item active">
							<a href="ReportsManagementSevlet" class="nav-link"><i
								class=" fa fa-comments" aria-hidden="true">Report</i></a>
						</div>
					</ul>

				</div>
			</nav>
		</nav>
		</nav>

		<jsp:include page="${page.contentUrl }"></jsp:include>
		<footer class="navv">
			<div class="col text-center boder-top ">
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
	<c:if test="${not empty page.scriptUrl} ">
		<jsp:include page="${page.scriptUrl}"></jsp:include>
	</c:if>

	<script>
		$('#myTab a').on('click', function(event) {
			event.preventDefault()
			$(this).tab('show')
		})
	</script>
</body>

</html>