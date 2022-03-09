<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<html>
<body>
	세션의 속성 설정 확인 페이지입니다.<hr/>
	현재 접속하신 ID는 [<%=session.getAttribute("ID") %>] 입니다. <br/>
	[<%=session.getAttribute("Grade") %>] 권한으로 접속중입니다.<hr/>
</body>
</html>