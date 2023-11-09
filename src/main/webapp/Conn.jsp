<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<%@page import="Helper.ConnectionHelper"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
		<h1>Hello Connection</h1>
		<%
			Connection con=ConnectionHelper.getConnection();
		%>
		<h3><%= con %>></h3>
		
</body>
</html>