<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="style.css"/>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<title>JFSD</title>
<style>
body {
    background-image: url('images/logo.jpeg'); /* Set the background image */
    background-size: cover; /* Make sure the image covers the entire screen */
    background-repeat: no-repeat; /* Prevent the image from repeating */
    background-position: center; /* Center the image */
    margin: 0; /* Remove default margin */
    height: 100vh; /* Set body height to full viewport height */
}
.h {
    background-color: rgba(255, 255, 255, 0.7);
    padding: 10px;
    height: auto; /* Adjust the alpha value for desired transparency */
    margin-bottom: 0; /* Remove bottom margin for seamless connection */
}
h2 {
    font-weight: bold; /* Make title bold */
    font-size: 2.5em; /* Increase font size */
    text-align: center; /* Center align the title */
}
.navbar {
    background-color: #333; /* Lighter black (dark gray) background color */
    padding: 10px; /* Add some padding */
    display: flex; /* Use flexbox for layout */
    align-items: center; /* Center items vertically */
    justify-content: space-between; /* Space between image and links */
    margin-top: 0; /* Remove top margin for seamless connection */
}
.navbar a {
    color: white; /* Link color for visibility */
    text-decoration: none;
    margin-right: 15px; /* Space between links */
}
.navbar a:hover {
    text-decoration: underline; /* Optional hover effect */
}
</style>
</head>
<body>
<div class="h">
    <h2><strong>Online Workshop Management</strong></h2>
</div>

<div class="navbar">
    <div>
        <a href="adminhome">Home</a>
        <a href="viewallstudents">View all Students</a>
        <a href="deletestudent">Delete Student</a>
        <a href="viewstudentbyid">View Students by ID</a>
        <a href="courses">Courses</a>
        <a href="uploadfile">Files</a>
        <a href="adminlogin">Logout</a>
    </div>
</div>
</body>
</html>
