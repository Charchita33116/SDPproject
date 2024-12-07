<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Student Login</title>
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
h4 {
    margin-bottom: 20px; /* Add spacing below the message */
    color: red; /* Ensure consistent styling for error or message text */
    text-align: center; /* Center-align the message */
}
.captcha-container {
    display: flex;
    align-items: center;
    margin-bottom: 20px;
}
.captcha-container img {
    margin-right: 10px; /* Add spacing between image and input */
}
</style>
</head>
<body>
<%@include file="mainnavbar.jsp"%>

<div class="h">
    <h4>
        <c:out value="${message}"></c:out>
    </h4>
</div>

<div class="container">
    <h3 align="center"><strong>Student Login</strong></h3>
    
    <form method="post" action="checkstudentlogin">
        <label>Enter Email</label>
        <input type="text" class="form-control" name="semail" required />
        <br/>
        <label>Enter Password</label>
        <input type="password" name="spwd" class="form-control" required />
        <br/>
        <!-- CAPTCHA Section -->
        <div class="captcha-container">
            <img alt="captcha" src="${path}/captcha-servlet" />
            <input type="text" name="captcha" class="form-control" placeholder="Enter CAPTCHA" required />
        </div>
        <!-- End of CAPTCHA Section -->
        <input type="submit" value="Login" class="btn btn-success"/>
        <input type="reset" value="Clear" class="btn btn-success"/>
    </form>
</div>
</body>
</html>
