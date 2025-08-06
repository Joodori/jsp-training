<%@page import="java.util.HashMap"%>
<%@page import="java.util.Map"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>2025-08-06 JSP Review</title>
</head>
<body>

<!-- html파일에서 정해둔 value값에 임의의 영어를 적어놓고 한글로 출력되게 만들기위해 HashMap을 이용하여 값을 할당함 -->
<%
   Map<String, String> menuList = new HashMap<String,String>();
   menuList.put("jja", "짜장면");
   menuList.put("jjam", "짬뽕");
   menuList.put("tang", "탕수육");
%>

<%
	Map<String, String> hobbyList = new HashMap<String,String>();
	hobbyList.put("sports", "운동");
	hobbyList.put("instrument", "악기");
	hobbyList.put("travel", "여행");
%>

<!-- 앞에서 말한 값을 전달받을 때 post방식으로 전달받게되면 값을 utf-8로 읽어야 값이 깨지지 않아서 Encoding방식을 정해줌 -->
<!-- 또한 hobby같은 경우 combo박스에서 여러 값을 받지만 name이 같은 값으로 지정되어있을 때 List로 받을 수 있음 -->
<%
   request.setCharacterEncoding("utf-8");
   String userName = request.getParameter("username");
   String email = request.getParameter("email");
//   String[] hobbyList = request.getParameterValues("hobby");
   String hobby = request.getParameter("hobby");
   String menu = request.getParameter("menu");
   String lunch = "";
%>
당신의 이름은 <%= userName %> 이군요 ! <br/>
이메일은 <%= email %> 입니다.<br/>

<!-- List로 받았기 때문에 for문으로 출력이 가능함  -->
<!-- for문에서 String hobby => String joodori로 바꾸면 out.print(joodori + " ")로 동일한 값을 받을 수 있음 -->

<% /*
   if(hobbyList.length != 0) {
       out.print(userName + "님의 취미는 ");
   for(String hobby : hobbyList) {
       out.print(hobby + " ");
   }
   out.print("입니다. <br/>");
} */
%>

<%
	// HashMap을 이용하려면 먼저 hobbyList에 hobby에 맞는 애들이 들어오는지가 첫번째
	// hobbyList에 해당 key가 있으면, hobbyList의 value 전체를 하나씩 뽑아 출력
	if(hobbyList.containsKey(hobby)) {
		for( String item : hobbyList.values())
				//String item : hobbyList)  HashMap에서는 for each를 사용하지 못함 key인지 value인지 모르기 때문?
		{
			out.print(item + " ");
		}
	}
	out.print("입니다. <br/>");

%>

<!--containsKey는 굳이 사용하지는 않지만 주로 직전 페이지인 form에서 action으로 전달받은 값들이 뭐가 있는지에대해 확인용으로 사용함 -->
<%
   if(menuList.containsKey(menu)) {
       lunch = menuList.get(menu);
       out.print("점심으로는 " + lunch + "를 드시려 하시는군요!ㅎ" + "<br/>");
   }
%>

<!-- menu의 option값을 확인하기위해 굳이 if~menuList.containsKey를 사용안해도 out.print(""+menuList.get(menu)를 사용해도 무방함 -->
<%
	out.print("<br/>");
	out.print(menuList.get(menu));
%>
</body>
</html>