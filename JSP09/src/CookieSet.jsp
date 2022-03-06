<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<html> 
<body>
	<h3>Cookie 클래스를 사용하여 쿠키를 생성합니다.</h3>
<%
	Cookie cookie = new Cookie("CookieTest", "HelloCookie");
	//Cookie cookie2 = new Cookie("CookieTest2", "HelloCookie");
	//Cookie cookie3 = new Cookie("CookieTest3", "HelloCookie");
	//Cookie cookie4 = new Cookie("CookieTest4", "HelloCookie");
	response.addCookie(cookie);
	//response.addCookie(cookie2);
	//response.addCookie(cookie3);
	//response.addCookie(cookie4);
%>
<h3>쿠키 생성이 완료되었습니다.</h3>
<form action="CookieChk.jsp" method="post">
	<input type="submit" value="쿠키 확인 페이지"/>
</form>
</body>
</html> 