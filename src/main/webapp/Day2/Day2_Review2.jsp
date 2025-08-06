<%@page import="jspReview.UserIO"%>
<%@page import="jspReview.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>2025-08-06 JSP Review</title>
</head>
<body>
<%--
	작동방식
	1. 클라이언트가 전달한 데이터 추출
	2. 파일에 저장
	3. 저장했음을 알림
 --%>
 <!-- 스크립틀릿 문법<.%%>과 표현식<.%=%> -->
 <% // 이부분이 스크립틀릿 문법
 
	// 1. 먼저 클라이언트에게 전달받은 데이터를 추출함
 	String name = request.getParameter("userName");
 	String age = request.getParameter("userAge");
 	String email = request.getParameter("userEmail");

 	// 파일을 저장해야하는데 어떻게 저장할지 -> 파일을 저장할 수 있는 클래스를 만들어놓음
 	// 이 클래스는 src>main>java 에 class를 만듦
 	User user = new User(name, age, email);
 	UserIO userIO = new UserIO();
 	
 	// 2. 파일에 저장
 	// 이 함수를 불러오기위핸 어떤 일을 했을까? : UserIO라는 클래스에 메서드가 있기 때문에 UserIO를 생성하여 함수를 호출함
 	userIO.addUser(user,"C:/Users/LX/jsp-project-Review/JSP-Review/list.txt");
 %>
<!-- 3. 사용자에게 저장했음을 알림(클라이언트에 띄워줌) -->
사용자정보를 저장했습니다.
 
</body>
</html>