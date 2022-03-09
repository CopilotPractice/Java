<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	Cookie[] cookies = request.getCookies();
	String loginStatus = null;
	String loginPwStatus = null;
	String rememberId = null;
	String rememberPw = null;
	String id= null;
	String pw= null;

		//get session Id 
	String sesId = (String) session.getAttribute("sesId"); 

	
	if(cookies != null && cookies.length >0){
		for(int i =0; i < cookies.length; i++){
			
			if(cookies[i].getName().equals("loginStatus")){
				loginStatus = cookies[i].getValue();
			}
			
			if(cookies[i].getName().equals("rememberId")){
				rememberId= cookies[i].getValue();
			}
			if(cookies[i].getName().equals("id")){
				id = cookies[i].getValue();
			}
			if(cookies[i].getName().equals("rememberPw")){
				rememberPw= cookies[i].getValue();
			}
			if(cookies[i].getName().equals("pw")){
				pw = cookies[i].getValue();
			}
			if(cookies[i].getName().equals("loginPwStatus")){
				loginPwStatus = cookies[i].getValue();
			}
	}
	}
%>

<%
out.println("loginStatus :  " + loginStatus + "<br/>");
out.println("rememberId : " + rememberId+ "<br/>");
out.println("id : " + id+ "<br/>");
out.println("pw : " + pw+ "<br/>");
out.println("sessionId : " + sesId+ "<br/>");

if(loginStatus != null && loginStatus.equals("login") && rememberId != null && id != null )// 
	{
%>

<h3>[<%=id%>]님 환영합니다.<br/>
로그인 아이디 기억상태를 [<%=(rememberId.equals("temp")?"유지하지않음":"유지함")%>]으로 설정하셨습니다.<br/>
로그인 비밀번호 기억상태를 [<%=(rememberPw.equals("temp")?"유지하지않음":"유지함") %>]
</h3>
<form action="CookieSessionLogout.jsp" method="post">
	<input type="submit" value="로그아웃"/>
</form>

<%
	}else{
%>
<h3>로그인을 하지 않으셨거나, 잘못된 접근입니다.<br/>
	로그인 해주시기 바랍니다.</h3>
	<form action="CookieSessionLogin.jsp" method="post">
	<input type="submit" value="로그인 페이지"/>
	</form>

<%
	}

%>

</body>
</html>