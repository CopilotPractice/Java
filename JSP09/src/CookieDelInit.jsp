<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<html>
<body>
	<h3>Cookie 클래스를 사용하여 쿠키를 생성합니다.</h3>
	<%
		Cookie cookie = new Cookie("DelCookie", "ThisCookieWillBeDeleted");
		response.addCookie(cookie);
	%>
	<h3>쿠키 생성이 완료되었습니다.</h3><hr/>
	<h3>생성된 쿠키의 구성요소들을 출력합니다.</h3>
	<h4>
		쿠키의 이름 : <%=cookie.getName() %><br/>
		쿠키의 값 : <%=cookie.getValue() %><br/>
	</h4>
	
	<form action="CookieDelPerform.jsp" method="post">
		<input type="submit" value="쿠키 삭제 페이지"/>
	</form>
</body>
</html> 