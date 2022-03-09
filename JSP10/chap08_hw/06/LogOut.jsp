<%@ page language="java" contentType="text/html; charset=utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Insert title here</title>
</head>
<body>
안전하게 로그아웃 되었습니다.<hr>
다시 로그인 하시려면<br>
아이디와 비밀번호를 입력하십시오<hr>
<%
	pageContext.include("/Login.jsp");
%>
<hr>
<form action="Login.jsp" method="post">
<input type="submit" value="첫 화면으로">
</form>
</body>
</html>