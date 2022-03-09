<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<html>
<body> 
<%
	session.setAttribute("ID", request.getParameter("id"));
	response.sendRedirect("/Chap08/SessionChk.jsp");
%>
</body>
</html>