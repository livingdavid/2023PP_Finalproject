<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Add New Post</title>

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
    <h1>Add New Post</h1>
    <form action="addok" method="post" class="form-container">
        <div class="form-group">
            <label>Title:</label>
            <input type="text" name="title" class="form-control"/>
        </div>
        <div class="form-group">
            <label>Writer:</label>
            <input type="text" name="writer" class="form-control"/>
        </div>
        <div class="form-group">
            <label>Genre:</label>
            <input type="text" name="genre" class="form-control"/>
        </div>
        <div class="form-group">
            <label>SongList:</label>
            <textarea cols="50" rows="5" name="songList" class="form-control"></textarea>
        </div>
        <div class="form-group">
            <label>SongCount:</label>
            <input type="number" name="songCount" class="form-control"/>
        </div>
        <div class="form-group">
            <label>Img:</label>
            <input type="text" name="img" class="form-control"/>
        </div>
        <div class="form-group">
            <label>Playtime:</label>
            <input type="text" name="playtime" class="form-control"/>
        </div>
        <button type="button" class="btn btn-secondary" onclick="location.href= 'list'">Cancel</button>
        <button type="submit" class="btn btn-primary">ADD NEW Post</button>
    </form>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>