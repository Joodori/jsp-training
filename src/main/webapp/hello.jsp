<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
this is jsp ! <br/>
여기는 주형 PC입니다. 오늘도 열심히 ! 의미있게 ! 화이팅합시다 ! <br/>
<%
	String user = request.getParameter("name");
	if (user==null) {
		user = "Guest";
	}
%>
Hello! <%= user %>
<br/>
time : <%= new Date() %>
<a href="https://naver.com">naver</a>
<form action="https://naver.com"><input type="submit" value="naver"></form>
</body>
</html>