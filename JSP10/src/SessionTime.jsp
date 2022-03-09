<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<html>
<%
	session.setAttribute("ID", "TestID");
	session.setAttribute("Grade", "관리자");
%>
<body>
	세션의 속성 설정 페이지입니다<hr/>
	현재 접속하신 ID [<%=session.getAttribute("ID")%>] 입니다. <br/>
	[<%=session.getAttribute("Grade")%>] 권한으로 접속중입니다.<hr/>
	현재 세션 아이디는 <h2>[<%=session.getId()%>] 입니다,</h2>
	현재 세션의 유효시간을 설정합니다.
<%
	session.setMaxInactiveInterval(15);
	//session.setMaxInactiveInterval(60*60);
%>	
현재 세션의 최대 유효시간은 [<%=session.getMaxInactiveInterval()%>] 초 입니다.
	
</body>
</html> 