<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Edit Course</title>
</head>
<body>
    <h2>Edit Course</h2>
    <form action="updatecourse" method="post">
        <input type="hidden" name="id" value="${course.id}">
        <label for="courseName">Course Name:</label>
        <input type="text" name="courseName" value="${course.name}" required><br>
        <label for="courseDescription">Description:</label>
        <textarea name="courseDescription" required>${course.description}</textarea><br>
        <input type="submit" value="Update Course">
    </form>
</body>
</html>
