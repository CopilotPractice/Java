<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<html>
<body>
	<h3>${empty param.id ? "방문자" : param.id}님, 환영합니다.</h3>
	<h3>${empty sessionScope.loginId ? "Guest" : sessionScope.loginId}님, 환영합니다.</h3>
	
	<input type="text" name="id" value="${empty param.id ? '손님' : param.id}"/>
</body>
</html>