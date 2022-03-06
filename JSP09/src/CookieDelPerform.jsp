<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<html>
<body>
	<h3>생성된 "DelCookie" 쿠키를 조회합니다.</h3>
	<%
		Cookie[] cookies = request.getCookies();
		if(cookies != null && cookies.length > 0){
			for(int i=0 ; i < cookies.length ; i++){
				if(cookies[i].getName().equals("DelCookie")){
	%>
					<h3>
						쿠키의 이름 : <%=cookies[i].getName() %> <br/>
						쿠키의 값 : <%=cookies[i].getValue() %> <br/>
					</h3><hr/>
					<h3>"DelCookie" 쿠키를 삭제합니다.</h3>
	<%
					cookies[i].setMaxAge(0);
					response.addCookie(cookies[i]);
	%>
					<h4>삭제가 완료되었습니다.</h4>
	<%			}
			}
		}  
	%>
	<form action="CookieDelChk.jsp" method="post">
		<input type="submit" value="쿠키 삭제 확인 페이지"/>
	</form>
</body>
</html>