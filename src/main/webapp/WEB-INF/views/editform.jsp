<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" isELIgnored="false" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Edit Form</title>

	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">

	<style>
		h1 {
			text-align: center;
			margin-top: 20px;
			margin-bottom: 30px;
		}

		.form-container {
			width: 50%;
			margin: auto;
		}

		.form-group {
			margin-bottom: 15px;
		}

		label {
			margin-bottom: 5px;
			display: block;
		}

		.form-control {
			width: 100%;
		}

		.btn {
			margin-right: 10px;
		}
	</style>
</head>
<body>
<div class="container">
	<h1>Edit Form</h1>
	<form:form modelAttribute="playVO" method="POST" action="../editok" class="form-container">
		<form:hidden path="seq" />
		<div class="form-group">
			<label>Title:</label>
			<form:input path="title" class="form-control" />
		</div>
		<div class="form-group">
			<label>Writer:</label>
			<form:input path="writer" class="form-control" />
		</div>
		<div class="form-group">
			<label>Genre:</label>
			<form:input path="genre" class="form-control" />
		</div>
		<div class="form-group">
			<label>SongList:</label>
			<form:textarea cols="50" rows="5" path="songlist" class="form-control" />
		</div>
		<div class="form-group">
			<label>SongCount:</label>
			<form:input path="songcount" class="form-control" />
		</div>
		<div class="form-group">
			<label>Img:</label>
			<form:input path="img" class="form-control" />
		</div>
		<div class="form-group">
			<label>Playtime:</label>
			<form:input path="playtime" class="form-control" />
		</div>
		<button type="submit" class="btn btn-primary">Edit Post</button>
		<button type="button" class="btn btn-secondary" onclick="history.back()">Cancel</button>
	</form:form>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>