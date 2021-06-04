<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<div class="col-9">
	<div class="row p-2">
		<c:forEach var="item" items="${videos }">
		<div class="col-3 mt-2">
			<div class="card text-center">
				<div class="card-body">
					<img src="img/post.jpg" class="img-fluid" />
					<div class="row border-top mt-2">
						<b class="center">${item.title } </b>
					</div>
				</div>
				<div class="card-footer">
					<a href="LikeVideo?videoId=${item.videoId}" class="btn btn-success">Like</a> 
					<a href="ShareVideo?videoId=${item.videoId}" class="btn btn-info">Share</a>
				</div>
			</div>
		</div>	
		</c:forEach>
	</div>
	<div class="row">
		<div class="col">
			<nav aria-label="Page navigation">
				<ul class="pagination justify-content-center">
					<li class="page-item disabled"><a class="page-link" href="#"
						aria-label="Previous"> <span aria-hidden="true">&laquo;</span>
							<span class="sr-only">Previous</span>
					</a></li>
					<li class="page-item active"><a class="page-link" href="#">1</a></li>
					<li class="page-item"><a class="page-link" href="https://www.youtube.com/">2</a></li>
					<li class="page-item"><a class="page-link" href="#"
						aria-label="Next"> <span aria-hidden="true">&raquo;</span> <span
							class="sr-only">Next</span>
					</a></li>
				</ul>
			</nav>
		</div>
	</div>
</div>
<div class="col-3">
	<div class="row mt3 mb-3">
		<div class="col">
			<div class="card">
				<div class="card-header">
					<i class="fa fa-thumbs-up" aria-hidden="true">FAVORITE</i>
				</div>
				<ul class="list-group list-group-flush">
					<li class="item1"><h5>Post Malon</h5></li>
					<li class="item2"><h5>DSK</h5></li>
					<li class="item3"><h5>JGKiD</h5></li>
				</ul>
			</div>
		</div>
	</div>
</div>