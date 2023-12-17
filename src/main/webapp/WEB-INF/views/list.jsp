<%@ page language="java" contentType="text/html; charset=UTF-8"
		 isELIgnored="false" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<html>
<head>
	<title>Playlist Board</title>
	<!-- Bootstrap CSS -->
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
	<style>
		.title {
			margin-top: 20px;
			color: #007bff;
		}
		.card {
			margin-bottom: 20px;
			transition: transform 0.3s ease-in-out;
		}
		.card:hover {
			transform: scale(1.05);
		}
		.card-body {
			padding: 15px;
		}
		.card-title {
			margin-bottom: 10px;
			color: #007bff;
		}
		.card-link {
			color: #007bff;
			text-decoration: none;
		}

		.add-btn {
			display: block;
			width: 200px;
			margin: 30px auto;
			padding: 10px;
			text-align: center;
			background-color: #28a745;
			color: white;
			border-radius: 5px;
			transition: background-color 0.3s ease-in-out;
		}
		.add-btn:hover {
			background-color: #218838;
			text-decoration: none;
			color: white;
		}
	</style>
</head>
<body>

<div class="container">
	<h1 class="title text-center"><img src="../img/melon.png" height="50">Playlist Board</h1>
	<div class="row">
		<c:forEach items="${list}" var="u">
			<div class="col-xs-12 col-sm-6 col-md-4 col-lg-3 mb-4">
				<div class="card">
					<img class="card-img-top" src="../img/${u.getImg()}.png" alt="Playlist Image" style="max-height: 200px; object-fit: cover;">
					<div class="card-body">
						<h5 class="card-title"><img src="../img/cd.png" height="30">${u.getTitle()}</h5>
						<p class="card-text">
							<strong>Genre:</strong> ${u.getGenre()}<br>
							<strong>Songs:</strong> ${u.getSongcount()}<br>
							<strong>Playtime:</strong> ${u.getPlaytime()}<br>
							<strong>Writer:</strong> ${u.getWriter()}<br>
						</p>
						<a href="editform/${u.getSeq()}" class="card-link">Edit</a>
						<a href="view/${u.getSeq()}" class="card-link">View</a>
						<a href="javascript:delete_ok('${u.getSeq()}')" class="card-link">Delete</a>
					</div>
				</div>
			</div>
		</c:forEach>
	</div>
	<a href="add" class="add-btn">Add New Post</a>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
<script>
	function delete_ok(id){
		if(confirm("Are you sure you want to delete this item?")) {
			location.href='deleteok/'+id;
		}
	}
</script>
</body>
</html>