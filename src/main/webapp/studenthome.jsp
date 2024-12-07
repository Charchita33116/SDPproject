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
<title>Student Home</title>
</head>
<body>
<%@include file="studentnavbar.jsp"%>
<h3 style="font-size: 2em; font-weight: bold;">Welcome <%=s.getName() %></h3>


</body>
</html>