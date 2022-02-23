<%@ page language="java" contentType="text/html; charset=utf-8"%>
<%!
String hello = "hello!";
String world = "world!";

public int add(int a,int b){
	return a+b;
}
%>

<html>
<head>
<title>Declaration 예제</title>
</head>
<body>
<%int num = add(2,3); %>
<%=num %>번 반복합니다 <br/>
<% 
for(int i=1;i<=num;i++){
%>
<%=hello%><%=world %><br/>
<%
}
%>
</body>
</html>