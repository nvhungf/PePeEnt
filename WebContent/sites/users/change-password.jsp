<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<div class="offset-3 col-6 mt-4">
	<form action="ChangePassword" method="post">
		<div class="card">
			<div class="card-header">Change Password</div>
			<div class="card-body">
			<jsp:include page="/common/inform.jsp"></jsp:include>
				<div class="row">
					<div class="col">
						<div class="form-group">
							<label for="username">Username</label> 
							<input type="text"
								class="form-control" name="username" id="username" value="${username }"
								aria-describedby="usernameHid" placeholder="Username"> <small
								id="usernameHid" class="form-text text-muted">Username
								is required</small>
						</div>
						<div class="form-group">
							<label for="password">Password</label> <input type="password"
								class="form-control" name="password" id="password"
								placeholder="Password">
						</div>
					</div>
					<div class="col">
						<div class="form-group">
							<label for="currentPassword">Curren Password</label> <input
								type="password" class="form-control" name="currentPassword"
								id="currentPassword" placeholder="Password">
						</div>
						<div class="form-group">
							<label for="confirmPassword">Confirm Password</label> <input
								type="password" class="form-control" name="confirmPassword"
								id="confirmPassword" placeholder=" ConfirmPassword">
						</div>

					</div>
				</div>
			</div>
			<div class="card-footer text-muted">
				<button class="btn btn-success">Change Password</button>
			</div>
	</form>
</div>