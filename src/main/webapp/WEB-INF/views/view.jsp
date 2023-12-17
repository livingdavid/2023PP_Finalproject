<%@ page language="java" contentType="text/html; charset=UTF-8"
         isELIgnored="false" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<html>
<head>
    <title>Title</title>
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
    <!-- Custom Styles -->
    <style>
        .card {
            /* ... */
        }
        .card:hover {
            /* ... */
        }
        .card-body {
            /* ... */
        }
        .card-link {
            /* ... */
        }
    </style>
</head>
<body>

<div class="container mt-5">
    <h1 class="text-center mb-4">BOARD Post Details</h1>
    <div class="card">
        <div class="card-body">
            <h5 class="card-title">Title: ${item.title}</h5>
            <p class="card-text">
                <strong>Id:</strong> ${item.seq}<br>
                <strong>Writer:</strong> ${item.writer}<br>
                <strong>Genre:</strong> ${item.genre}<br>
                <strong>Song List:</strong> ${item.songList}<br>
                <strong>Song Count:</strong> ${item.songCount}<br>
                <strong>Img:</strong> <img src="${item.img}" alt="Playlist Image" style="max-width:100%; height:auto;"><br>
                <strong>Regdate:</strong> ${item.regdate}<br>
                <strong>Playtime:</strong> ${item.playtime}<br>
            </p>
            <a href="${path}/editform/${item.seq}" class="btn btn-primary">Edit</a>
            <a href="javascript:delete_ok('${item.seq}')" class="btn btn-danger">Delete</a>
        </div>
    </div>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct" crossorigin="anonymous"></script>
<script>
    function delete_ok(id){
        var a = confirm("정말로 삭제하시겠습니까?");
        if(a) location.href='${path}/deleteok/'+id;
    }
</script>
</body>
</html>