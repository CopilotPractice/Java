<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<html>
<body>
<%
	Cookie[] cookies = request.getCookies();
	String loginStatus = null;
	String rememberIdPw = null;
	String id = null;
	String pw = null;
	
	if(cookies != null && cookies.length >0){
		for(int i=0 ; i < cookies.length ; i++){
			if(cookies[i].getName().equals("loginStatus")){
				loginStatus = cookies[i].getValue();
			}
			if(cookies[i].getName().equals("rememberIdPw")){
				rememberIdPw = cookies[i].getValue();
			}
			if(cookies[i].getName().equals("id")){
				id = cookies[i].getValue();
			}
			if(cookies[i].getName().equals("pw")){
				pw = cookies[i].getValue();
			}
		}
	}
%>
<%
if(loginStatus != null && loginStatus.equals("login") 
&& rememberIdPw != null && id != null && pw != null){
%>
	<h3>[<%=id%>]님 환영합니다<br/></h3>
	로그인 아이디/비밀번호 기억상태를 
	[<%=(rememberIdPw.equals("temp")?"유지하지 않음":"유지함") %>]
	으로 설정하셨습니다.
	
	<form action="CookieEasyLogout.jsp" method="post">
		<input type="submit" value="로그아웃"/>
	</form>
<%
}else{
%>
	<h3>로그인하지 않으셨거나, 잘못된 접근입니다.<br/>
	로그인하여 주시기 바랍니다</h3>
	<form action="CookieEasyLogin.jsp" method="post">
		<input type="submit" value="로그인 페이지"/>
	</form>
<%
}
%>
</body>
</html>