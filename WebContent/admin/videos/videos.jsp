<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<jsp:include page="/common/inform.jsp"></jsp:include>
<ul class="nav nav-tabs" id="myTab" role="tablist">
	<li class="nav-item" role="presentation"><a
		class="nav-link active" id="VideoEditing-tab" data-toggle="tab"
		href="#VideoEditing" role="tab" aria-controls="VideoEditing"
		aria-selected="true"> <h5>Videos Editing</h5></a></li>
	<li class="nav-item" role="presentation"><a class="nav-link"
		id="VideoList-tab" data-toggle="tab" href="#VideoList" role="tab"
		aria-controls="VideoList" aria-selected="false"> <h5>Video List</h5></a></li>
</ul>
<div class="tab-content" id="nav-tabContent">
	<div class="tab-pane fade show active" id="VideoEditing"
		role="tabpanel" aria-labelledby="VideoEditing-tab">
		<form action="" method="post" enctype="multipart/data">
			<div class="card">
				<div class="card-body">
					<div class="row">
						<div class="col-3">
							<div class="border p-3">
								<img src="../img/dsk.jpg" class="img-fluid" />
								<div class="input-group mb-3 mt-3">
									<div class="input-group-prepend">
										<span class="input-group-text">Upload</span>
									</div>
									<div class="custom-file">
										<input type="file" class="custom-file-input" id="cover" name="cover" />
										<label for="cover">Choose File</label>
									</div>
								</div>
								
							</div>
						</div>
						<div class="col-9">
							<div class="form-group">
								<label for="youtubeid"><h5>Video ID</h5></label> <input type="text"
									class="form-control" name="videoId" id="youtubeid" value="${video.videoId }"
									aria-describedby="youtubeidHid" placeholder="Video ID">
								<small id="youtubeidHid" class="form-text text-muted">Youtube
									is required</small>
							</div>
							<div class="form-group">
								<label for="videotitle"><h5>Video Title</h5></label> <input type="text"
									class="form-control" name="title" id="videotitle" value="${video.title }"
									aria-describedby="videotitleHid" placeholder="Video Title">
								<small id="videotitleHid" class="form-text text-muted">Video
									title is required</small>
							</div>
							<div class="form-group">
								<label for="videocount"><h5>View Count</h5></label> <input type="text"
									class="form-control" name="views" id="videocount" value="${video.views }"
									aria-describedby="videocountHid" placeholder="Video Count">
								<small id="videocountHid" class="form-text text-muted">Video
									Count is required</small>
							</div>
							
							<div class="form-check form-check-inline">
								<label> 
								<input type="radio" class="form-check-input"
									value="true" name="active" id="status" ${video.active?'checked': '' }><h5>Active</h5>
								</label><label> <input type="radio" class="form-check-input"
									value="false" ${! video.active?'checked': '' } name="active" id="status"><h5>Inactive</h5>
								</label>
							</div>
						</div>
					</div>
					<div class="row">
						<div class="col">
							<label for="description"><h5>Description</h5></label>
							<textarea name="description" id= "description" cols="30" rows="5"
								class="form-control">${video.description }</textarea>
						</div>
					</div>
				</div>
				<div class="navv card-footer text-muted">
					<button class="btn btn-primary" formaction="VideoManagement/create">Create</button>
					<button class="btn btn-warning" formaction="VideoManagement/update">Update</button>
					<button class="btn btn-danger" formaction="VideoManagement/delete">Delete</button>
					<button class="btn btn-info" formaction="VideoManagement/reset">Reset</button>
				</div>
			</div>
		</form>

	</div>
	<div class="tab-pane fade" id="VideoList" role="tabpanel"
		aria-labelledby="VideoList-tab">
		<table class="table table-stripe">
			<tr>
				<td><h5>Video ID</h5></td>
				<td><h5>Video Title</h5></td>
				<td><h5>View Count</h5></td>
				<td><h5>Status</h5></td>
				<td>&nbsp;</td>
			</tr>
			<c:forEach var="item" items="${videos }">
			<tr>
				<td><h6>${item.videoId }</h6></td>
				<td><h6>${item.title }</h6></td>
				<td><h6>${item.views }</h6></td>
				<td><h6>${item.active? 'Active' : 'Deactive' }</h6></td>
				<td>
				<a href="VideoManagement/edit?videoId=${item.videoId }" style="color: #ffff0d;"><i class="fa fa-edit" aria-hidden="true"></i><h5>Edit</h5></a> 
				<a href="VideoManagement/delete?videoId=${item.videoId }" style="color: #f80236;" ><i class="fa fa-trash" aria-hidden="true"></i><h6>Delete</h6></a>
				</td>
			</tr>
			</c:forEach>
		</table>
	</div>
</div>
</div>