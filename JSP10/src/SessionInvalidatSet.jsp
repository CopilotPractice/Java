<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<html>
<%
	session.setAttribute("ID", "TestID");
	session.setAttribute("Grade", "관리자");
%>
<body> 
	세션의 종료 테스트 페이지입니다<hr/>
	현재 접속하신 ID [<%=session.getAttribute("ID")%>] 입니다. <br/>
	[<%=session.getAttribute("Grade")%>] 권한으로 접속중입니다.<hr/>
	현재 세션 아이디는 <h2>[<%=session.getId()%>] 입니다,</h2>
	<form action="SessionInvalidatePerform.jsp" method="post">
		<input type="submit" value="로그아웃"/>
	</form>
</body>
</html>