<%@ page language="java" contentType="text/html; charset=utf-8"%>
<!DOCTYPE html>
<html>
<head>
<title>제어문을 사용한 Scriptlet 예제</title>
</head>
<body>
<%
int num = Integer.parseInt(request.getParameter("num"));
String hello = "hello!";
String world = "world!";
%>
</body>
</html>