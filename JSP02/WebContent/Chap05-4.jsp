<%@ page language="java" contentType="text/html; charset=utf-8"%>
<%@ page import ="java.text.SimpleDateFormat" %>
<%@ page import ="java.util.Date" %>
<!DOCTYPE html>
<html>
<head>
<title>날짜 시간 출력</title>
</head>
<body>
<h1>날짜/시간 출력</h1>
<%
Date today = new Date();
SimpleDateFormat date = new SimpleDateFormat("yyyy/MM/dd");
SimpleDateFormat time = new SimpleDateFormat("hh:mm:ss");
%>
현재 날짜:<%=date.format(today)%><br/>
현재 시간:<%=time.format(today)%>
</body>
</html>