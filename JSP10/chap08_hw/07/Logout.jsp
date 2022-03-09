<%@ page language="java" contentType="text/html; charset=utf-8" %>

<html>
<head>
	<title>Chap08 연습문제 - 세션관리</title>
</head>
<body>
<%
Cookie[] cookies 	= request.getCookies();
String 	rememberId 	= null;
String 	id 			= null;
String 	pw 			= null;

if (cookies != null && cookies.length > 0){
	for (int i=0 ; i < cookies.length ; i++){
		if (cookies[i].getName().equals("rememberId") && cookies[i].getValue().equals("temp")){
			rememberId = cookies[i].getValue();
			break;
		}
	}
	
	if(rememberId != null && rememberId.equals("temp")){
		for (int i=0 ; i < cookies.length ; i++){
			if (cookies[i].getName().equals("id") || cookies[i].getName().equals("pw")){
				cookies[i].setValue("");
				cookies[i].setMaxAge(0);
				response.addCookie(cookies[i]);
			}
		}
	}
}
%>
[<%=session.getAttribute("ID") %>]님 안전하게 로그아웃 되었습니다. 이용해주셔서 감사합니다.<hr/>
다시 로그인 하시려면
<% pageContext.include("/Login.jsp"); %><hr/>
<form action="Login.jsp" method="post">
	<input type="submit" value="첫 화면으로"/>
</form>
<%session.invalidate();%>
</body>
</html>
