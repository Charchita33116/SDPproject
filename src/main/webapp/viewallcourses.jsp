<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>View All Courses</title>
<link rel="stylesheet" type="text/css" href="style.css"/>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<style>
body {
    background-image: url('images/logo.jpeg'); /* Set the background image */
    background-size: cover; /* Ensure the image covers the entire screen */
    background-repeat: no-repeat; /* Prevent the image from repeating */
    background-position: center; /* Center the image */
    margin: 0; /* Remove default margin */
    height: 100vh; /* Full viewport height */
}

.h {
    background-color: rgba(255, 255, 255, 0.7);
    padding: 10px;
    height: auto;
    margin-bottom: 0;
}

.navbar {
    background-color: #333; /* Dark gray background */
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

.table {
    width: 100%;
    border-collapse: collapse;
    margin-top: 20px;
}

.table th, .table td {
    border: 1px solid #ddd;
    padding: 8px;
}

.table th {
    background-color: #f2f2f2;
    text-align: center;
}

.table-striped tr:nth-child(even) {
    background-color: #f9f9f9;
}

.table td {
    text-align: center;
}

.btn-register {
    background-color: #4CAF50;
    color: white;
    border: none;
    padding: 5px 10px;
    text-decoration: none;
    border-radius: 5px;
}

.btn-register:hover {
    background-color: #45a049;
}
</style>
</head>
<body>
<%@ include file="coursenavbar.jsp" %>
<div class="h">
    <h3><strong>Available Courses</strong></h3>
</div>

<div class="container">
    <table class="table table-striped">
        <thead>
            <tr>
                <th>Course ID</th>
                <th>Course Name</th>
                <th>Course Description</th>
                <th>Action</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach items="${courseList}" var="course">
                <tr>
                    <td><c:out value="${course.id}"></c:out></td>
                    <td><c:out value="${course.name}"></c:out></td>
                    <td><c:out value="${course.description}"></c:out></td>
                    <td>
                        <a href="<c:url value='registercourse?id=${course.id}'/>" class="btn-register">Register</a>
                    </td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
</div>
</body>
</html>
