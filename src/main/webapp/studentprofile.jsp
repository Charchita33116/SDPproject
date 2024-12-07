<%@page import="com.klu.jfsd.model.Student" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
Student s = (Student)session.getAttribute("student");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Student Home</title>
<style>
.h {
    background-color: rgba(255, 255, 255, 0.7);
    padding: 10px;
    height: auto; /* Adjust the alpha value for desired transparency */
    margin-bottom: 0; /* Remove bottom margin for seamless connection */
}
.container {
    background-color: rgba(255, 255, 255, 0.7); /* Match the background style */
    padding: 10px; /* Apply the same padding */
    border-radius: 5px; /* Add rounded corners for a smooth look */
    max-width: 600px; /* Limit the width for better readability */
    margin: 20px auto; /* Center the container on the page */
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1); /* Add a subtle shadow for emphasis */
}
h3 {
    margin-bottom: 20px; /* Add spacing below the heading */
    font-weight: bold; /* Keep the heading bold */
    text-align: center; /* Center-align headings */
}
</style>
</head>
<body>
<%@include file="studentnavbar.jsp"%>

<div class="h">
    <h3><strong>My Profile</strong></h3>
</div>
<div class="container">
    <p><strong>ID:</strong> <%=s.getId() %></p>
    <p><strong>Name:</strong> <%=s.getName() %></p>
    <p><strong>Gender:</strong> <%=s.getGender() %></p>
    <p><strong>Date of Birth:</strong> <%=s.getDateofbirth() %></p>
    <p><strong>Email:</strong> <%=s.getEmail() %></p>
    <p><strong>Contact No:</strong> <%=s.getContactno() %></p>
</div>
</body>
</html>