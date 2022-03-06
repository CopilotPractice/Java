<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<html>
<body>
<%  String id = request.getParameter("id");
	String pw = request.getParameter("pw");
%> 
비밀번호 확인 페이지입니다. <hr/>
[<%=id%>]님의 비밀번호는 [<%=pw%>] 입니다.
</body>
</html>