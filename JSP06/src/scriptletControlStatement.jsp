<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<html>
<head>
	<title>제어문을 사용한 Scriptlet 예제</title>
</head>
<body>
<%
   //    5
	int num = Integer.parseInt(request.getParameter("num"));
	String hello = "Hello!";
	String world = "World!";
	
	for(int i=1 ; i<=num ; i++){
		out.println("<h"+i+">" + hello + " " + world + "</h"+i+">");
		//           <h1>Hello! World!</h1>
		if( i == num){
%>
			<h1>스크립틀릿 내 for문의 마지막 수행입니다!</h1>			
<%			
		}else{
%>
			<h1>스크립틀릿 내 for문 수행중입니다!</h1>
<%			
		}
	}
%>

</body>
</html>

