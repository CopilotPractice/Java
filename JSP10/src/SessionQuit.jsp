<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<html>
<body>
<%
	if(session != null) session.invalidate();
	response.sendRedirect("/Chap08/SessionLogout.jsp");
%>
</body>
</html> 