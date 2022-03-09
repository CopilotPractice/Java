<%@ page language="java" contentType="text/html; charset=utf-8"%>
<html>
	<%
		String id=request.getParameter("id");
		session.setAttribute("ID",request.getParameter("id"));
		
		
		String rememberIdPw=request.getParameter("rememberIdPw");
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
	%>
<body>
<%
	Cookie[] cookies = request.getCookies();
	String loginStatus = null;
	
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
	<table border="1">
		<tr>
			<td><%=session.getAttribute("ID") %>님 로그인을 환영합니다.</td>
		</tr>
		<tr>
			<td align="right">
				<form action="Logout.jsp" method="post">
					<input type="submit" value="로그아웃"/>
				</form>
			</td>
		</tr>
	</table>

</body>
</html>