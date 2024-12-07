<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add Course</title>
<link rel="stylesheet" type="text/css" href="style.css"/>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<style>
body {
    background-image: url('images/logo.jpeg');
    background-size: cover;
    background-repeat: no-repeat;
    background-position: center;
    margin: 0;
    height: 100vh;
}

.h {
    background-color: rgba(255, 255, 255, 0.7);
    padding: 10px;
    height: auto;
    margin-bottom: 0;
}

.navbar {
    background-color: #333;
    padding: 10px;
    display: flex;
    align-items: center;
    justify-content: space-between;
    margin-top: 0;
}

.navbar a {
    color: white;
    text-decoration: none;
    margin-right: 15px;
}

.navbar a:hover {
    text-decoration: underline;
}

.container {
    background-color: rgba(255, 255, 255, 0.9);
    padding: 20px;
    border-radius: 5px;
    max-width: 800px;
    margin: 20px auto;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
}

h3 {
    text-align: center;
    font-weight: bold;
    margin-bottom: 20px;
}

.form-group {
    margin-bottom: 15px;
}

.btn-submit {
    background-color: #4CAF50;
    color: white;
    border: none;
    padding: 10px 20px;
    border-radius: 5px;
    cursor: pointer;
}

.btn-submit:hover {
    background-color: #45a049;
}
</style>
</head>
<body>
<%@ include file="coursenavbar.jsp" %>
<div class="h">
    <h3><strong>Add New Course</strong></h3>
</div>

<div class="container">
    <form action="addcourseprocess" method="post">
        <div class="form-group">
            <label for="courseName">Course Name:</label>
            <input type="text" id="courseName" name="name" class="form-control" required>
        </div>
        <div class="form-group">
            <label for="courseDescription">Course Description:</label>
            <textarea id="courseDescription" name="description" class="form-control" rows="4" required></textarea>
        </div>
        <div class="form-group">
            <label for="courseDuration">Course Duration (in hours):</label>
            <input type="number" id="courseDuration" name="duration" class="form-control" required>
        </div>
        <button type="submit" class="btn-submit">Add Course</button>
    </form>
</div>
</body>
</html>
