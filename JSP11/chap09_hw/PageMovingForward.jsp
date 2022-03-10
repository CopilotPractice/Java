<%@ page language="java" contentType="text/html; charset=utf-8"%>

<html>
	<head>
		<title>페이지 이동</title>
	</head>
	<body>
		<h3>PageMovingForward.jsp 입니다!</h3>
		이동방식을 지정할 move 파라미터의 값이 "forward" 로 지정되었을 때<br/>
		현재 페이지가 나타납니다.<hr/>
		
		<h3>전달받은 파라미터는 다음과 같습니다.</h3>
		param1 : <%=request.getParameter("param1") %><br/>
		param2 : <%=request.getParameter("param2") %>
	</body>
</html>