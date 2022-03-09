<%@ page language="java" contentType="text/html; charset=utf-8"%>

<html>
<body>
<%
String rememberIdPw=request.getParameter("rememberIdPw");
String id=request.getParameter("id");
String pw=request.getParameter("pw");

Cookie cookieRememberIdPw;
Cookie cookieId;
Cookie cookiePw;
Cookie cookieLoginStatus;

if(rememberIdPw !=null && rememberIdPw.equals("keep")){
	cookieRememberIdPw = new Cookie("rememberIdPw", "keep");
	cookieId = new Cookie("id", id);
	cookiePw = new Cookie("pw", pw);
	cookieId.setMaxAge(60*5);
	cookiePw.setMaxAge(60*5);
	response.addCookie(cookieId);
	response.addCookie(cookiePw);
}else {
	cookieRememberIdPw = new Cookie("rememberIdPw", "temp");
	cookieId = new Cookie("id", id);
	cookiePw = new Cookie("pw", pw);
	cookieId.setMaxAge(0);
	cookiePw.setMaxAge(0);
	response.addCookie(cookieId);
	response.addCookie(cookiePw);
}

cookieLoginStatus = new Cookie("loginStatus", "login");

response.addCookie(cookieRememberIdPw);
response.addCookie(cookieLoginStatus);

out.println(cookieRememberIdPw.getValue());
response.sendRedirect("http://localhost:8081/Chap08/CookieEasyChk.jsp");
%>
</body>
</html>