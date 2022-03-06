<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<html> 
<% 
	Cookie[] cookies = request.getCookies();
	String loginStatus = null; // 현재 사용자의 로그인 여부
	String rememberId = null; // 접속 아이디를 저장한 상태 여부
	String id = null; // 접속 아이디
	
	if(cookies != null && cookies.length > 0){
		for(int i=0 ; i < cookies.length ; i++){
			if(cookies[i].getName().equals("rememberId") &&
			   cookies[i].getValue().equals("keep")){
				rememberId = cookies[i].getValue();
			}
			if (cookies[i].getName().equals("id")){
				id = cookies[i].getValue();
			}
		}
	} 
%>
<body>
	<form action="CookieSessionSet.jsp" method="post">
		아이디와 비밀번호를 입력하십시오<hr/>
		<table border="1">
			<tr>
				<td>아이디</td>
				<td>
					<input type="text" name="id" value="<%=(id==null? "" : id) %>"/>
				</td>
			</tr>
			<tr>
				<td>비밀번호</td>
				<td><input type="password" name="pw"/>
			</tr>
			<tr>
				<td colspan="2" align="right">
					<input type="checkbox" name="rememberId" value="keep"
					   <%= (rememberId==null?"":"checked=\"checked\"")%>/>아이디기억
				</td>
			</tr>	
			<tr>
				<td colspan="2" align="right">
					<input type="submit" value="로그인"/>
				</td>
			</tr>
		</table>
	</form>
</body>
</html>