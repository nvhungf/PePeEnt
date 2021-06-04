<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<jsp:include page="/common/inform.jsp"></jsp:include>
<div class="message">${message }</div>
<ul class="nav nav-tabs" id="myTab" role="tablist">
	<li class="nav-item" role="presentation"><a
		class="nav-link active" id="VideoEditing-tab" data-toggle="tab"
		href="#VideoEditing" role="tab" aria-controls="VideoEditing"
		aria-selected="true"><h5>User Editing</h5></a></li>
	<li class="nav-item" role="presentation"><a class="nav-link"
		id="VideoList-tab" data-toggle="tab" href="#VideoList" role="tab"
		aria-controls="VideoList" aria-selected="false"><h5>User List</h5></a></li>
</ul>
<div class="tab-content" id="nav-tabContent">
	<div class="tab-pane fade show active" id="VideoEditing"
		role="tabpanel" aria-labelledby="VideoEditing-tab">
		<form action="" method="post">
			<div class="card">
				<div class="card-body">
					<div class="row">
						<div class="col">
							<div class="form-group">
								<label for="username"><h5>UserName</h5></label> <input type="text" value="${user.username }"
									class="form-control" name="username" id="username"
									aria-describedby="usernameHid" placeholder="UserName">
								<small id="usernameHid" class="form-text text-muted">UserName
									is required</small>
							</div>
							<div class="form-group">
								<label for="fullname"><h5>FullName</h5></label> <input type="text" value="${user.fullname }"
									name="fullname" id="fullname" class="form-control"
									placeholder="FullName" aria-describedby="fullnameHid">
								<small id="fullnameHid" class="text-muted">FullName is
									required</small>
							</div>
						</div>
						<div class="col">
							<div class="form-group">
								<label for="password"><h5>Password</h5></label> <input type="password"
									class="form-control" name="password" id="password" value="${user.password }"
									aria-describedby="passwordHid" placeholder="Password">
								<small id="passwordHid" class="form-text text-muted">Password
									is required</small>
							</div>
							<div class="form-group">
								<label for="email"><h5>Email</h5></label> <input type="text"
									class="form-control" name="email" id="email" value="${user.email }"
									aria-describedby="emailHid" placeholder="Email"> <small
									id="emailHid" class="form-text text-muted">Email is
									required</small>
							</div>
						</div>
					</div>
					
				</div>
				<div class="navv card-footer text-muted">
					<button class="btn btn-primary" id="create" formaction="UserManagement/create">Create</button>
					<button class="btn btn-warning" id="update" formaction="update">Update</button>
					<button class="btn btn-danger"  id="delete" formaction="delete">Delete</button>
					<button class="btn btn-info" formaction="UserManagement/reset">Reset</button>
				</div>
			</div>
		</form>

	</div>
	<div class="tab-pane fade" id="VideoList" role="tabpanel"
		aria-labelledby="VideoList-tab">
		<table class="table table-stripe">
			<tr>
				<td><h5>UserName</h5></td>
				<td><h5>FullName</h5></td>
				<td><h5>Email</h5></td>
				<td><h5>Role</h5></td>
				<td>&nbsp;</td>
			</tr>
			<c:forEach var="item" items="${users }">
			<tr>
				<td><h6>${item.username }</h6></td>
				<td><h6>${item.fullname }</h6></td>
				<td><h6>${item.email }</h6></td>
				<td><a href="UserManagement/edit?username=${item.username }" style="color: #ffff0d;"><i class="fa fa-edit" aria-hidden="true"></i>
						<h5>Edit</h5></a> <a href="UserManagement/delete?username=${item.username }"  style="color: #f80236;"><i class="fa fa-trash" aria-hidden="true"></i><h5>Delete</h5></a>
				</td>
			</tr>
			</c:forEach>
		</table>
		
	</div>
</div>
</div>