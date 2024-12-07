<%@ page import="com.klu.jfsd.model.Student" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Display Student</title>
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
p {
    font-size: 1.1em; /* Adjust the font size for better readability */
    margin: 10px 0; /* Add space between paragraphs */
}
strong {
    color: #333; /* Dark color for emphasis */
}
</style>
</head>
<body>
<%@ include file="adminnavbar.jsp" %>
<div class="h">
    <h3><strong>Display Student</strong></h3>
</div>
<div class="container">
    <p><strong>ID:</strong> <c:out value="${s.id}"></c:out></p>
    <p><strong>Name:</strong> <c:out value="${s.name}"></c:out></p>
    <p><strong>Gender:</strong> <c:out value="${s.gender}"></c:out></p>
    <p><strong>Date of Birth:</strong> <c:out value="${s.dateofbirth}"></c:out></p>
    <p><strong>Email:</strong> <c:out value="${s.email}"></c:out></p>
    <p><strong>Contact No:</strong> <c:out value="${s.contactno}"></c:out></p>
</div>
</body>
</html>
