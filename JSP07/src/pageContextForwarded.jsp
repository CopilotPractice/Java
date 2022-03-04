<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<html>
<body>
	<%
		String test = request.getParameter("test");
		out.println("여기는 pageContextForwarded.jsp! 입니다!");
	%><hr/>
	param : <%=test %>
</body>
</html>