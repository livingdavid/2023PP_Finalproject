<%@ page language="java" contentType="text/html; charset=UTF-8"
         isELIgnored="false" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" crossorigin="anonymous">
    <style>

        .card {
            background-color: #fff;
            border: 1px solid rgba(0, 0, 0, 0.125);
            border-radius: 0.25rem;
            box-shadow: 0 0.125rem 0.25rem rgba(0, 0, 0, 0.075);
        }

        .card:hover {
            box-shadow: 0 0.5rem 1rem rgba(0, 0, 0, 0.15);
        }

        .card-body {
            padding: 1.25rem;
        }

        .card-title {
            margin-bottom: 0.75rem;
            color: #007bff;
            font-weight: 500;
        }

        .card-text {
            color: #6c757d;
            margin-bottom: 1rem;
        }

        .btn {
            margin-right: 0.5rem;
            margin-bottom: 0.5rem;
        }

        .container {
            max-width: 800px;
        }

        h1.text-center {
            margin-bottom: 2rem;
            color: #343a40;
        }

        img {
            max-width: 100%;
            height: auto;
            border-radius: 0.25rem;
            margin-bottom: 1rem;
        }
    </style>
</head>
<body>

<div class="container mt-5">
    <h1 class="text-center mb-4">Playlists Details</h1>
    <div class="card">
        <img src="../../img/${u.img}.png" alt="Playlist Image" style="max-width:100%;height:auto;"><br>
        <div class="card-body">
            <h5 class="card-title">Title: ${u.title}</h5>
            <p class="card-text">
                <strong>ID:</strong> ${u.seq}<br>
                <strong>Writer:</strong> ${u.writer}<br>
                <strong>Genre:</strong> ${u.genre}<br>
                <strong>Song List:</strong> ${u.songlist}<br>
                <strong>Song Count:</strong> ${u.songcount}<br>
                <strong>Playtime:</strong> ${u.playtime}<br>
                <strong>Regdate:</strong> ${u.regdate}<br>
            </p>
            <a href="../list" class="btn btn-primary">Back</a>
            <a href="javascript:delete_ok('${u.seq}')" class="btn btn-danger">Delete</a>
        </div>
    </div>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
<script>
    function delete_ok(id){
        var a = confirm("정말로 삭제하시겠습니까?");
        if(a) location.href='${path}/deleteok/'+id;
    }
</script>
</body>
</html>