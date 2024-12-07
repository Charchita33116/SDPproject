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
    max-width: 800px; /* Adjust width for better readability */
    margin: 20px auto; /* Center the container on the page */
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1); /* Add a subtle shadow for emphasis */
}
h3 {
    margin-bottom: 20px; /* Add spacing below the heading */
    font-weight: bold; /* Keep the heading bold */
}
.table {
    width: 100%; /* Make the table width 100% */
    border-collapse: collapse; /* Ensure the table borders collapse */
}
.table th, .table td {
    border: 1px solid #ddd; /* Add border to table cells */
    padding: 8px; /* Add padding for readability */
}
.table th {
    background-color: #f2f2f2; /* Light gray background for header */
    text-align: center; /* Center-align header text */
}
.table-striped tr:nth-child(even) {
    background-color: #f9f9f9; /* Stripe even rows with a light gray */
}
</style>
</head>
<body>
<%@ include file="adminnavbar.jsp" %><br/>
<div class="h">
    <h3 align="center"><strong>View All Students</strong></h3>
</div>

<div class="container">
    <p><strong>Total students: <c:out value="${count}"></c:out></strong></p>

    <table align="center" border="2" class="table table-striped">
        <tr>
            <th>ID</th>
            <th>NAME</th>
            <th>GENDER</th>
            <th>DATE OF BIRTH</th>
            <th>EMAIL</th>
            <th>CONTACT NO</th>
        </tr>
        <c:forEach items="${studentlist}" var="student">
            <tr>
                <td><c:out value="${student.id}"></c:out></td>
                <td><c:out value="${student.name}"></c:out></td>
                <td><c:out value="${student.gender}"></c:out></td>
                <td><c:out value="${student.dateofbirth}"></c:out></td>
                <td><c:out value="${student.email}"></c:out></td>
                <td><c:out value="${student.contactno}"></c:out></td>
            </tr>
        </c:forEach>
    </table>
</div>
</body>
</html>
