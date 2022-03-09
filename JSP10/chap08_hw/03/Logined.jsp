<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>쿠키를 이용한 세션관리02</title>
</head>
<body>
<%

	String ID = request.getParameter("id");
	String PW = request.getParameter("pw");
	String rememberID = request.getParameter("rememberID");
	String loginST = "login";
	
	// 쿠키 생성 -----------------------------------------------------------------
	Cookie cookieID = new Cookie("ID",ID);
	Cookie cookiePW = new Cookie("PW",PW);
	Cookie cookieLoginST = new Cookie("loginST","login");
	Cookie cookieRememberID;
	
	if(rememberID != null && rememberID.equals("keep")){
		cookieRememberID = new Cookie("rememberID","keep");
	}else{
		cookieRememberID = new Cookie("rememberID","temp");
	}
	
	cookieID.setMaxAge(60);
	cookiePW.setMaxAge(60);
	cookieRememberID.setMaxAge(60);
	cookieLoginST.setMaxAge(60);
	
	response.addCookie(cookieID);
	response.addCookie(cookiePW);
	response.addCookie(cookieRememberID);
	response.addCookie(cookieLoginST);

	// 쿠키 생성 끝 -----------------------------------------------------------------
	
	session.setAttribute("ID", request.getParameter("id"));
	session.setAttribute("PW", request.getParameter("pw"));

%>
	###################################################################<br>
	loginST : <%=loginST%> <br>
	ID : <%=request.getParameter("id")%> <br>
	PW : <%=request.getParameter("pw")%> <br>
	###################################################################<br>
		
<%
	if( loginST != null && loginST.equals("login") && !ID.equals("") && !PW.equals("") ){
		
%>
		<table>
			<tr>
				<td>[<%= session.getAttribute("ID") %>]님 로그인을 환영합니다.</td>
			</tr>
			<tr>
				<td><form action="Logout.jsp" method="post"><input type="submit" value="로그아웃"></form></td>
			</tr>
		</table>
<%
	}else{
%>
	<h2>잘못된 접근방법입니다.</h2>
<%
	 pageContext.include("Login.jsp");
	
	}
%>

</body>
</html>