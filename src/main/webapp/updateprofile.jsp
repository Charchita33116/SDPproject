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
<title>Update Profile</title>
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
    <h3><strong>Student Update Profile Form</strong></h3>
</div>
<div class="container">
    <form method="post" action="update">
        <label>ID</label>
        <input type="number" class="form-control" name="sid" value="<%=s.getId() %>" readonly required />
        <br/>
        <label>Enter Name</label>
        <input type="text" class="form-control" name="sname" value="<%=s.getName() %>" required />
        <br/>
        <label>Select Gender</label>
        <input type="radio" name="sgender" class="form-check-input" value="Male" <%=s.getGender().equals("Male") ? "checked" : "" %> required /> Male
        <input type="radio" name="sgender" class="form-check-input" value="Female" <%=s.getGender().equals("Female") ? "checked" : "" %> required /> Female
        <input type="radio" name="sgender" class="form-check-input" value="Other" <%=s.getGender().equals("Other") ? "checked" : "" %> required /> Other
        <br/>
        <label>Date of Birth</label>
        <input type="date" name="sdob" class="form-control" value="<%=s.getDateofbirth() %>" required />
        <br/>
        <label>Enter Email Id</label>
        <input type="email" name="semail" class="form-control" value="<%=s.getEmail() %>" readonly required />
        <br/>
        <label>Enter Password</label>
        <input type="password" name="spwd" class="form-control" value="<%=s.getPassword() %>" required />
        <br/>
        <label>Enter Contact</label>
        <input type="number" name="scontact" class="form-control" value="<%=s.getContactno() %>" required />
        <br/>
        <input type="submit" value="Update" class="btn btn-success" />
        <input type="reset" value="Clear" class="btn btn-success" />
    </form>
</div>
</body>
</html>
