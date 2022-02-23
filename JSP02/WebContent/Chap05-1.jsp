<%@ page language="java" contentType="text/html; charset=utf-8"%>
<!DOCTYPE html>
<html>
<head>
<title>구구단 출력1</title>
</head>
<body>
<h2>구구단 출력</h2>
<table border="1">
<tr><th>2단</th><th>3단</th><th>4단</th><th>5단</th><th>6단</th><th>7단</th><th>8단</th><th>9단</th></tr>
<% for(int i=1;i<=9;i++){
%>
<tr>
<td width="80" align="center">
<%
out.println("2x"+i+"="+i*2);
%>
</td>
<td width="80" align="center">
<%
out.println("3x"+i+"="+i*3);
%>
</td>
<td width="80" align="center">
<%
out.println("4x"+i+"="+i*4);
%>
</td>
<td width="80" align="center">
<%
out.println("5x"+i+"="+i*5);
%>
</td>
<td width="80" align="center">
<%
out.println("6x"+i+"="+i*6);
%>
</td>
<td width="80" align="center">
<%
out.println("7x"+i+"="+i*7);
%>
</td>
<td width="80" align="center">
<%
out.println("8x"+i+"="+i*8);
%>
</td>
<td width="80" align="center">
<%
out.println("9x"+i+"="+i*9);
%>
</td>
</tr>
<%
                         }
%>
</table>
</body>
</html>
