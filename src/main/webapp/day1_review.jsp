<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> 탭에 뜨는 제목 </title>

<style>
.title {
	font-size: 2em; /* 글자의 크기를 2em의 크기로 지정 (엄청 큰거임)*/
	color : #333; /* 글자 색상을 정하는데 #333은 진한 회색 */
	font-weight: bold; /* 글자를 bold로 바꿔줌 + normal(기본굵기), bold(굵은 글씨), lighter(부모요소보다 가는 글씨), bolder(부모요소보다 굵은 글씨)) */
						/* 여기서 부모요소란? : 만약 내가 지금 이 클래스를 div태그 안의 span 또는 div로 해놓은 곳(안에 들어있는)에대한 CSS를 진행중일 때 상위에 묶여있는 부분을 부모요소라고 함*/
	text-align: center; /* 글자들을 어떻게 정렬할것인지에대한 내용 인라인요소들에만 center로 정렬  */
	margin-bottom: 20px; /* 아래쪽에 20px만큼의 공백을 만들어줌 -> 이것을 margin으로만 사용하면 상하좌우 모두 동일한 margin을 가지게됨*/
						/* 만약 margin: 10px 20px라면? : 10px는 상하에 대한 공백을 만들고 20px는 좌우에 대한 공백을 만들어줌 */
						/* margin에 4개의 값이 있으면 위부터 상->우->하->좌 순서에 대한 공백을 만듦 */

}

.table.th, .table.td { /* table안에있는 th, td(제목과 내용)에 대한 CSS을 같은 값을 가지게 할 수 있음 */
	border:1px solid #ccc; /* 셀마다 1픽셀두께의 #ccc색상의 테두리를 표시 */
	padding: 10px 20px; /* 셀 내부의 상하(10px) 좌우(12px)의 여백을 넣어서 내부 내용이 붙지않게 만들어줌 */
	align:center;
}

.table-wrapper {
	display:flex; /* display:flex만 있을 때 : 자식요소들이 가로 일렬로 배열되게 만듦 */
	justify-content: center; /* justify-content는 display:flex가 없으면 무시되기때문에 set로 붙어다녀야함 */
}

.iframe-wrapper {
	display:flex;
	justify-content:center;
}
</style>

</head>
<body> <!-- 페이지 내부에 들어가는 내용들 // CSS내용은 head부분에 들어가야함-->
<!-- <.% %> 저 안에 javaScript코드가 들어갈 수 있음 그에대한 반환값을 저 안에서 정의된 변수로 끄집어쓸수있음(<.%= user %>) -->
<%
	String user = request.getParameter("name"); // 이거는 요청된 주소에서 끄집어낼 수 있음
	if (user==null) {
		user = "Guest";
	}
%>
Hello! <%= user %>

<!-- java.util 라이브러리를 불러와서 사용할 수 있음 -->
time : <%= new Date() %>

<!-- 앵커태그를 이용해서 하이퍼링크로 주소이동가능 근데 www.naver.com이렇게는 안됨 http://이렇게 가야함 -->
<a href="https://naver.com">naver</a>
<form action="https://naver.com"><input type="submit" value="naver"></form> <!-- naver라고 적혀있는 버튼을 누르면 form으로 이동할 수 있음 -->

<!-- 이미지와 동영상 넣는 방법 -->
<img src="#"></br> <!-- # : 더미경로이지만 실제 이미지를 넣고싶다면 지금 작업하는 jsp or html파일이 있는 경로에 사진을 넣고 그 이미지의 이름을 입력하면 볼 수 있음 -->
				<!-- 이 또한 class를 이용해서 head의 style태그에서 CSS적용 가능 -->
<div class="iframe-wrapper">
	<iframe src="assign2.jsp" width="500" height="700" align="middle"></iframe>
	<iframe src="joohyung.html" width="500" height="700" align="middle"></iframe>
	<!-- iframe은 작은 화면으로 사용할 수 있는데 여러가지를 사용할 수 있다. 동영상도 가능하고, src에 url을집어넣으면 그 url을 보여줄 수있고, 내가 작업한 jsp,html파일도 볼 수 있음-->
</div>

<!-- begin:: 페이지 내용 제목 -->
<div class="title">
	<h1> Review </h1> <!-- div태그로 공간을 만든 뒤에 h1(텍스트 크기 제일 크게 만들어줌)태그 사이에 내용 입력 -->
</div>
<!-- end:: 페이지 내용 제목 -->

<!-- begin:: 내부 table -->
<div class="table-wrapper">
	<form action="#"> <!-- form이라는 것을 이용해서 페이지를 이동시킬 수 있음 지금은 dummy로 입력해놓았기 때문에 제자리걸음을 함 -->
			<!--1. 웹브라우저의 주소검색창에 직접 입력, 2. 앵커태그의 하이퍼링크를 이용해서 이동, 3. ajax를 이용, 4. 새로고침  -->
		<table  class="table"> <!-- form태그 안에 테이블을 만들어서 페이지이동시에 필요한 내용들을 넘길 수 있음 -->
			<!-- 여기서는 표의 제목이 첫번째 컬럼에 들어가야하기때문에 th와 td가 순서대로 들어감 -->
			<!-- tr: row들을 정의, th: 표의 제목(bold, aling="center"가 기본값), td: 표의 내용(align="start") -->
		<tr> 
			<th>이름</th>
			<td><input type="text" name="userName" placeholder="이름을 입력하세요."></td>
		</tr>
		<tr> 
			<th>이메일</th>
			<td><input type="text" name="userEmail" placeholder="메일주소를 입력하세요."></td>
		</tr>
		<tr> 
			<th>취미</th>
			<td> <!-- name에 붙은 이름들은 submit되어 이동할 때 값을 가지고갈 수 있음 (get방식이면 url // post방식은 숨겨서) -->
				<input type="checkbox" name="soccer" value="축구">축구
				<input type="checkbox" name="baseball" value="야구">야구
				<input type="checkbox" name="basketball" value="농구">농구		
			</td>
		</tr>
		<tr> 
			<th>성별</th>
			<td> <!-- type="radio"의 경우 여러 버튼에서 하나만 눌리게 하려면 같은 name을 가지고 있어야함 ! -->
				<input type="radio" name="gender" value="man">남성
				<input type="radio" name="gender" value="woman">여성
			</td>
		</tr>
		</table>
		<input type="submit" value="submit">
	</form>
</div>
<!-- end:: 내부 table -->

</body>
</html>