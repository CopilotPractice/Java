<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<html>
<body> 
<%
	if(session.getAttribute("ID") == null){
%>
		<form action="SessionAttributeSet.jsp" method="post">
			아이디와 비밀번호를 입력하십시오<hr/>
			<table border="1">
				<tr>
					<td>아이디</td>
					<td><input type="text" name="id"/></td>
				</tr>
				<tr>
					<td>비밀번호</td>
					<td><input type="password" name="pw"></td>
				</tr>
				<tr>
					<td colspan="2" align="right">
						<input type="submit" value="로그인"/>
					</td>
				</tr>
			</table>
		</form>
<%	
	}else{
%>
		<h3>[<%=session.getAttribute("ID") %>]님 환영합니다.</h3>
		<table>
			<tr>
				<td>
					<form action="SessionChk.jsp" method="post">
						<input type="submit" value="로그인 상태 확인"/>
					</form>
				</td>
				<td>
					<form action="SessionQuit.jsp" method="post">
						<input type="submit" value="로그아웃"/>
					</form>
				</td>
			</tr>
		</table>
<%
	}
%>
</body>
</html>