<%@ page language="java" contentType="text/html; charset=utf-8" %>
<html>
<head>
	<title>Chap08 연습문제 - 세션관리</title>
</head>
<body>
<%
String rememberId 	= request.getParameter("rememberId"	);
String id 			= request.getParameter("id"			);
String pw 			= request.getParameter("pw"			);

Cookie cookieRememberId	= new Cookie("rememberId"	, (rememberId != null && rememberId.equals("keep"))?"keep":"temp");
Cookie cookieId 		= new Cookie("id"			, (String) request.getParameter("id"));
Cookie cookiePw 		= new Cookie("pw"			, (String) request.getParameter("pw"));

response.addCookie(cookieRememberId	);				
response.addCookie(cookieId			);
response.addCookie(cookiePw			);

session.setAttribute("ID", id);	
%>

<form action="Logout.jsp" method="post">
	<table border="1">
		<tr>
			<td><%=session.getAttribute("ID") %>님 로그인을 환영합니다.</td>
		</tr>
		<tr>
			<td colspan="2" align="right">
				<input type="submit" value="로그아웃" />
			</td>
		</tr>
	</table>
</form>
</body>
</html>
