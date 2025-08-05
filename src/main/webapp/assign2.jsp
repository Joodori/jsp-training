<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>assign2</title>
<style>
body {
	background-color: #f0f8ff;
}

.table {
	background-color: #ffcccc;
}

.form {
	margin:50px auto;
	padding: 10px;
	border: 5px solid #ccc;
	background-color: #fafafa;
	width: 350px;
}

</style>
</head>
<body align="center">
	<h2>웹 폼 사례</h2>
	<div align="center">
	<form class="form" action="lunch.jsp" method="get">
		<table class="table" border="2">
			<tr>
				<th>사용자이름</th>
				<td><input type="text" placeholder="이름을 입력하세요." name="userName"></td>
			</tr>
			<tr>
				<th>이메일</th>
				<td><input type="text" placeholder="메일주소를 입력하세요." name="userEmail"></td>
			</tr>
			<tr>
				<th>검색단어</th>
				<td><input type="text" placeholder="검색어를 입력하세요." name="word"></td>
			</tr>
			<tr>
				<th>취미</th>
				<td align="center"><input type="checkbox" name="hobby" value="운동">운동
					<input type="checkbox" name="hobby" value="악기">악기
					<input type="checkbox" name="hobby" value="여행">여행</td>
				</tr>
			<tr>
				<th>성별</th>
				<td align="center"><input type="radio" name="gender" value="남자" >남자 
					<input type="radio" name="gender" value="여자">여자</td>
			</tr>
			<tr>
				<th>점심메뉴</th>
				<td align="center"><select name="menu">
					<option value="짜장면">짜장면</option>
					<option value="짬뽕">짬뽕</option>
					<option value="볶음밥">볶음밥</option>
					<option value="탕수육">탕수육</option>
				</select></td>
			</tr>
		</table>
		<input type="submit" value="submit">
	</form>
	</div>
</body>
</html>