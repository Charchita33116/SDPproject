<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Student Registration</title>
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
}
h3 {
    margin-bottom: 20px; /* Add spacing below the heading */
    font-weight: bold; /* Keep the heading bold */
}
</style>
</head>
<body>
<%@include file="mainnavbar.jsp"%>
<div class="h">
    <h3 align="center"><strong>Student Registration Form</strong></h3>
</div>
<div class="container">
    <form method="post" action="insertstudent">
        <label>Enter Name</label>
        <input type="text" class="form-control" name="sname" required />
        <br/>
        <label>Select Gender</label>
        <input type="radio" name="sgender" class="form-check-input" value="Male" required />Male
        <input type="radio" name="sgender" class="form-check-input" value="Female" required />Female
        <input type="radio" name="sgender" class="form-check-input" value="Other" required />Other
        <br/>
        <label>Date of Birth</label>
        <input type="date" name="sdob" class="form-control" required />
        <br/>
        <label>Enter Email Id</label>
        <input type="email" name="semail" class="form-control" required />
        <br/>
        <label>Enter Password</label>
        <input type="password" name="spwd" class="form-control" required />
        <br/>
        <label>Enter Contact</label>
        <input type="number" name="scontact" class="form-control" required />
        <br/>
        <input type="submit" value="Register" class="btn btn-success"/>
        <input type="reset" value="Clear" class="btn btn-success"/>
    </form>
</div>
</body>
</html>
