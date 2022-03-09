<%@ page language="java" contentType="text/html; charset=utf-8"%>
<html>
<body>
<%
	Cookie[] cookies = request.getCookies();
	String loginStatus = null;
	String rememberIdPw = null;
	String id = null;
	String pw = null;
	
	if(cookies != null && cookies.length >0){
		for(int i=0 ; i<cookies.length ; i++){
			if(cookies[i].getName().equals("loginStatus")){
				loginStatus = cookies[i].getValue();
				cookies[i].setValue("logout");
				cookies[i].setMaxAge(0);
				response.addCookie(cookies[i]);
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

	안전하게 로그아웃되었습니다. 이용해주셔서 감사합니다.<hr/>
	다시 로그인하시려면
	<%
		pageContext.include("/Login.jsp");
	%>
	<hr/>
	<form action="Login.jsp" method="post">
		<input type="submit" value="첫 화면으로"/>
	</form>
</body>
</html>