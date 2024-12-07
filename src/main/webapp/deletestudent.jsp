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
    max-width: 900px; /* Adjust width for better readability */
    margin: 20px auto; /* Center the table on the page */
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1); /* Add a subtle shadow for emphasis */
    text-align: center; /* Center the content */
}

h3 {
    margin-bottom: 20px; /* Add spacing below the heading */
    font-weight: bold; /* Keep the heading bold */
    text-decoration: underline; /* Underline the heading */
}
table {
    width: 100%; /* Ensure the table fills the container */
    border-collapse: collapse; /* Merge table borders */
}

th, td {
    border: 1px solid black; /* Set border color to black */
    padding: 8px; /* Add padding to cells */
    text-align: center; /* Center-align the text */
}

th {
    background-color: #f4f4f4; /* Light gray background for header */
    font-weight: bold; /* Make the header text bold */
}
</style>
</head>
<body>
<%@ include file="adminnavbar.jsp" %>
<div class="h">
    <h3 align="center">Delete Student</h3>
</div>
<div class="container">
    <table class="table table-striped">
        <tr>
            <th>ID</th>
            <th>NAME</th>
            <th>GENDER</th>
            <th>DATE OF BIRTH</th>
            <th>EMAIL</th>
            <th>CONTACT NO</th>
            <th>ACTION</th>
        </tr>

        <c:forEach items="${studentlist}" var="student">
            <tr>
                <td><c:out value="${student.id}"></c:out></td>
                <td><c:out value="${student.name}"></c:out></td>
                <td><c:out value="${student.gender}"></c:out></td>
                <td><c:out value="${student.dateofbirth}"></c:out></td>
                <td><c:out value="${student.email}"></c:out></td>
                <td><c:out value="${student.contactno}"></c:out></td>
                <td>
                    <a href='<c:url value="delete?id=${student.id}"></c:url>'>Delete</a>
                </td>
            </tr>
        </c:forEach>
    </table>
</div>
</body>
</html>
