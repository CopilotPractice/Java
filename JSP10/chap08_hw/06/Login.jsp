<%@ page language="java" contentType="text/html; charset=utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Insert title here</title>
</head>
<body>
<%
Cookie[] cookies = request.getCookies();
String rememberId = null;
String id		  = null;
String pw		  = null;
if(cookies!=null && cookies.length > 0){
	for(int i = 0; i < cookies.length;i++){
		if(cookies[i].getValue().equals("keep")){
			rememberId = cookies[i].getValue();
		}	
		if(cookies[i].getName().equals("id")){
			id = cookies[i].getValue();
		}
		if(cookies[i].getName().equals("pw")){
			pw = cookies[i].getValue();
		}
	}
}

if(session.getAttribute("Id") == null){
%>
<%=rememberId %>
<%=id %>
<%=pw%>
<form action="SessionChk.jsp" method="post">
	<table border="1px">
		<tr>
			<td align="center">아이디</td>
			<td><input type="text" name="Id" value="<%=(id==null?"": id)%>"></td>
		</tr>
		<tr>
			<td align="center">아이디</td>
			<td><input type="password" name="pw" value="<%=(pw==null?"": pw)%>"></td>
		</tr>
		<tr>
			<td colspan="2"><input type="checkbox" name="rememberId" value="keep"<%=(rememberId==null? "":"checked=\"checked\"") %>>아이디및 비밀번호 저장</td>
		</tr>
		<tr>
			<td colspan="2"><input type="submit" value="로그인"></td>
		</tr>
	</table>
</form>
<%
}else{
%>
<%=rememberId %>
<table border="1px">
	<tr>
		<td><%=session.getAttribute("Id")%>님 환영합니다.</td>
	</tr>
	<tr>
		<form action="LogQuit.jsp" method="post">
			<td align="right"><input type="submit" value="로그아웃"></td>
		</form>
	</tr>
</table>
<%
}
%>
</body>
</html>