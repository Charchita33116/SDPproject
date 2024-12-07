<%@ include file="coursenavbar.jsp" %>
<div class="container">
    <p><Strong>Welcome to the Course Management Page. Use the options above to navigate.</Strong></p>
</div>

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
    background-color: rgba(255, 255, 255, 0.7);
    padding: 10px;
    height: auto; /* Adjust the alpha value for desired transparency */
    margin-bottom: 0; /* Remove bottom margin for seamless connection */
}
h2 {
    font-weight: bold; /* Make title bold */
    font-size: 2.5em; /* Increase font size */
    text-align: center; /* Center align the title */
}
.navbar {
    background-color: #333; /* Lighter black (dark gray) background color */
    padding: 10px; /* Add some padding */
    display: flex; /* Use flexbox for layout */
    align-items: center; /* Center items vertically */
    justify-content: space-between; /* Space between image and links */
    margin-top: 0; /* Remove top margin for seamless connection */
}
.navbar a {
    color: white; /* Link color for visibility */
    text-decoration: none;
    margin-right: 15px; /* Space between links */
}
.navbar a:hover {
    text-decoration: underline; /* Optional hover effect */
}
.navbar img {
    height: 50px; /* Adjust the height as needed */
    margin-right: 20px; /* Add spacing after the image */
}

.page-title {
    text-align: center;
    color: #333;
    margin-bottom: 20px;
}

.container {
    background-color: rgba(255, 255, 255, 0.7); /* Match the background style */
    padding: 20px; /* Apply the same padding */
    border-radius: 10px; /* Add rounded corners for a smooth look */
    max-width: 800px; /* Limit the width for better readability */
    margin: 20px auto; /* Center the form on the page */
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1); /* Add a subtle shadow for emphasis */
}

.btn {
    display: inline-block;
    padding: 8px 12px;
    margin: 2px;
    text-decoration: none;
    border-radius: 4px;
    color: #fff;
    border: none;
    cursor: pointer;
    font-size: 14px;
}

.btn-primary {
    background-color: #007bff;
}

.btn-primary:hover {
    opacity: 0.8;
}
</style>
