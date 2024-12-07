<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin Login</title>
<style>
.h {
    background-color: rgba(255, 255, 255, 0.7);
    padding: 10px;
    height: auto; /* Adjust the alpha value for desired transparency */
    margin-bottom: 0; /* Remove bottom margin for seamless connection */
}

.container {
    background-color: rgba(255, 255, 255, 0.7); /* Match the background style */
    padding: 10px; /* Apply consistent padding */
    border-radius: 5px; /* Add rounded corners */
    max-width: 600px; /* Limit the width for better readability */
    margin: 20px auto; /* Center the form on the page */
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1); /* Add subtle shadow */
}
h3 {
    margin-bottom: 20px; /* Add spacing below the heading */
    font-weight: bold; /* Keep the heading bold */
    text-align: center; /* Center align the heading */
}
</style>
</head>
<body>
<%@include file="mainnavbar.jsp"%>

<div class="h">
    <h3><strong>Admin Login Form</strong></h3>
</div>

<div class="container">
    <form method="post" action="checkadminlogin">
        <label>Enter Username</label>
        <input type="text" class="form-control" name="auname" required />
        <br/>
        <label>Enter Password</label>
        <input type="password" name="apwd" class="form-control" required />
        <br/>
        <input type="submit" value="Login" class="btn btn-success"/>
        <input type="reset" value="Clear" class="btn btn-success"/>
    </form>
</div>
</body>
</html>
