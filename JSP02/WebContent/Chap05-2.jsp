<%@ page language="java" contentType="text/html; charset=utf-8"%>
<!DOCTYPE html>
<html>
<head>
<title>홀수 짝수 여부 출력</title>
</head>
<body>
<h2>1~10까지 홀수 짝수 여부 출력</h2>
<table border="1">
<%
int num =0;
for(int i=0;i<=10;i++){
%>
<tr>
<td width="80" align="center">
<%
out.println(num);

%>
</td>
<td width="130" align="center">
<%
if(num%2==0){
	out.println("짝수 입니다");
}else{
	out.println("홀수 입니다");	
	}
num++;
}
%>
</td>
</tr>
</table>
</body>
</html>