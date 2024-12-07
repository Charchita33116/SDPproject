<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Course Navigation</title>
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
    background-color: rgba(255, 255, 255, 0.7); /* Transparent background */
    padding: 10px;
    margin-bottom: 0; /* Remove bottom margin */
}

h2 {
    font-weight: bold; /* Bold title */
    font-size: 2.5em; /* Larger font size */
    text-align: center; /* Center align the title */
}

.coursenavbar {
    background-color: #333; /* Dark gray background */
    display: flex; /* Use flexbox for layout */
    justify-content: center; /* Center the items */
    padding: 10px 0; /* Add vertical padding */
    box-shadow: 0 2px 5px rgba(0, 0, 0, 0.2); /* Subtle shadow */
}

.coursenavbar a {
    color: white; /* White text for visibility */
    padding: 10px 15px; /* Padding for spacing */
    text-decoration: none; /* Remove underline */
    margin: 0 5px; /* Margin between links */
    font-size: 1em; /* Adjust font size */
    border-radius: 4px; /* Rounded corners */
    transition: background-color 0.3s ease; /* Smooth background color transition */
}

.coursenavbar a:hover {
    background-color: #ddd; /* Light gray background on hover */
    color: black; /* Text color changes on hover */
}

.coursenavbar a.active {
    background-color: #007bff; /* Highlight active link */
    color: white; /* Keep active link text white */
}
</style>
</head>
<body>
<div class="h">
    <h2>Course Management</h2>
</div>

<div class="coursenavbar">
    <a href="addcourses">Add Course</a>
    <a href="editcourse">Edit Course</a>
    <a href="deletecourse">Delete Course</a>
    <a href="course/viewallcourses">View Courses</a>
</div>

</body>
</html>
