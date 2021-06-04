<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<ul class="nav nav-tabs" id="myTab" role="tablist">
	<li class="nav-item" role="presentation"><a
		class="nav-link active" id="VideoEditing-tab" data-toggle="tab"
		href="#VideoEditing" role="tab" aria-controls="VideoEditing"
		aria-selected="true">
			<h5>Favorites</h5>
	</a></li>
	<li class="nav-item" role="presentation"><a class="nav-link"
		id="VideoList-tab" data-toggle="tab" href="#VideoList" role="tab"
		aria-controls="VideoList" aria-selected="false"><h5>Favorites
				Users</h5></a></li>
	<li class="nav-item" role="presentation"><a class="nav-link"
		id="sharefriend-tab" data-toggle="tab" href="#sharefriend" role="tab"
		aria-controls="sharefriend" aria-selected="false"><h5>Share
				Friend</h5></a></li>
</ul>
<div class="tab-content" id="nav-tabContent">
	<div class="tab-pane fade show active" id="VideoEditing"
		role="tabpanel" aria-labelledby="VideoEditing-tab">
		<table class="table table-bordered mt-3">
			<tr>
				<td><h5>Video Title</h5></td>
				<td><h5>Favorite Count</h5></td>
				<td><h5>Lasted Date</h5></td>
				<td><h5>Oldest Date</h5></td>
			</tr>
			
			<c:forEach var="item" items="${favlist }">
			<tr>
				<td>${item.videoTitle }</td>
				<td>${item.favoriteCount }</td>
				<td>${item.newesDate }</td>
				<td>${item.oldesDate }</td>
			</tr>
			</c:forEach>
		</table>
	</div>
	<div class="tab-pane fade" id="VideoList" role="tabpanel"
		aria-labelledby="VideoList-tab">
		<form action="" method="get">
			<div class="row mt-3">
				<div class="col">
					<div class="form-inline">
						<div class="form-group ">
							<label><h5>Video Title :</h5> 
							<select name="videoUserId" id="videoUserId"
								class="form-control ml-3">
								<c:forEach var="item " items="${vidList }">
									<option value="${item.videoId }" ${item.videoId == videoUserId?'selected':'' }>
										${item.title }
									</option>
									</c:forEach>
							</select> </label>
							<button class="btn btn-info ml-2">
								<h6>Reports</h6>
							</button>
						</div>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col mt-3">
					<table class="table table-bordered">
						<tr>
							<td><h5>UserName</h5></td>
							<td><h5>FullName</h5></td>
							<td><h5>Email</h5></td>
							<td><h5>Farorite</h5></td>
						</tr>
						<c:forEach var="item" items="${favUser }">
						<tr>
							<td>${item.username }</td>
							<td>${item.fullname }</td>
							<td>${item.email }</td>
							<td>${item.likedDate }</td>
						</tr>
						</c:forEach>
					</table>
				</div>
			</div>
		</form>
	</div>
	<div class="tab-pane fade" id="sharefriend" role="tabpanel"
		aria-labelledby="sharefriend-tab">
		<form action="" method="get">
			<div class="row mt-3">
				<div class="col">
					<div class="form-inline">
						<div class="form-group ">
							<label>
								<h5>Video Title :</h5> <select name="" id=""
								class="form-control ml-3">
									<option value=""><h6>Lon Roi - DSK</h6>
									</option>
							</select>
							</label>
							<button class="btn btn-info ml-2">
								<h6>Reports</h6>
							</button>
						</div>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col mt-3">
					<table class="table table-bordered">
						<tr>
							<td><h5>Sender Name</h5></td>
							<td><h5>Sender Email</h5></td>
							<td><h5>Receiver Email</h5></td>
							<td><h5>Sent Date</h5></td>
						</tr>
						<tr>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
						</tr>
					</table>
				</div>
			</div>
		</form>
	</div>
</div>
</div>