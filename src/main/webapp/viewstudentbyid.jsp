<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Home</title>
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
    margin: 20px auto; /* Center the form on the page */
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1); /* Add a subtle shadow for emphasis */
    text-align: center; /* Center the content */
}

h3 {
    margin-bottom: 20px; /* Add spacing below the heading */
    font-weight: bold; /* Keep the heading bold */
    text-decoration: underline; /* Underline the heading */
}
</style>
</head>
<body>
<%@include file="adminnavbar.jsp"%>
<div class="h">
    <h3 align="center">View Student by ID</h3>
</div>
<div class="container">
    <form method="post" action="displaystudent">
        <label>Select Student ID</label>
        <select name="id" class="form-select" required>
            <option value="">---Select---</option>
            <c:forEach items="${studentlist}" var="student">
                <option value="${student.id}">${student.id}-${student.name}</option>
            </c:forEach>
        </select>
        <br/><br/>
        <input type="submit" value="View" class="btn btn-success"/>
    </form>
</div>
</body>
</html>
