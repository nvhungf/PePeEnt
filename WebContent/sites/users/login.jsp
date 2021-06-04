<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<div class="offset-4 col-4">
	<form action="" method="post">
		<div class="card">
			<div class="card-header">
				<b>Login To System</b>
			</div>
			<div class="card-body">
				<c:if test="${not empty message }">
					<div class="row">
						<div class="col">
							<div class="alert alert-success">${message }</div>
						</div>
					</div>
				</c:if>
				<c:if test="${not empty error }">
					<div class="row">
						<div class="col">
							<div class="alert alert-danger">${error }</div>
						</div>
					</div>
				</c:if>
				<div class="form-group">
					<label for="username">UserName</label> <input type="text"
						class="form-control" name="username" id="username"
						aria-describedby="usernameId" placeholder="UserName"> <small
						id="usernameId" class="form-text text-muted">Username is
						required</small>
				</div>
				<div class="form-group">
					<label for="password">Password</label> <input type="password"
						class="form-control" name="password" id="password"
						aria-describedby="passwordId" placeholder="Password"> <small
						id="passwordId" class="form-text text-muted">Password is
						Required</small>
				</div>
				<div class="form-check form-check-inline">
					<label><input type="checkbox" class="form-check-input"
						name="remember">Remember me </label>
				</div>
			</div>
			<div class="card-footer text-muted">
				<button class="btn btn-success btn-login">Login</button>
			</div>
			<div class="message">${error }</div>
		</div>
	</form>
</div>