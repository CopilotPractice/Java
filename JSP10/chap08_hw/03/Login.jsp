<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>쿠키를 이용한 세션관리01</title>
</head>
<body>
<%
	Cookie[] cookies = request.getCookies();
	request.setCharacterEncoding("UTF-8");
	
	String ID = null;
	String PW = null;
	String rememberID = null;
	String loginST = null;
	
	if(cookies != null && cookies.length>0 ){
		for(int i=0; i<cookies.length; i++){
			if(cookies[i].getName().equals("rememberID") && cookies[i].getValue().equals("keep")){
				rememberID = cookies[i].getValue();
			}
			if(cookies[i].getName().equals("ID") ){ 
				ID = cookies[i].getValue();
			}
			if(cookies[i].getName().equals("PW") ){ 
				PW = cookies[i].getValue();   
			}
		}
	}
%>
	<h2>아이디와 비밀번호를 입력하세요</h2>
	<hr>
	<form action="Logined.jsp" method="post">
		<table border="1">
			<tr>
				<td> 아 이 디 </td>
				<td> <input type="text" name="id" value="<%= rememberID != null?ID:"" %>"> </td>
			</tr>
			<tr>
				<td> 비밀번호 </td>
				<td> <input type="password" name="pw" value="<%= rememberID != null?PW:"" %>"> </td>
			</tr>
			<tr>
				<td colspan="2"> <input type="checkbox" name="rememberID" value="keep"  <%= rememberID != null?"checked='checked'":"" %> >아이디/비밀번호 저장 </td>
			</tr>
			<tr>
				<td colspan="2"> <input type="submit" value="로그인"> </td>
			</tr>
		</table>
	</form>
	
	

</body>
</html>