<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<html>
<body> 

<form action="HiddenFieldLoginChk.jsp" method="post">
	아이디와 비밀번호를 입력하십시오.<hr/>
	<table border="1">
		<tr>
			<td>아이디</td>
			<td><input type="text" name="id"/></td>
		</tr>
		<tr>
			<td>비밀번호</td>
			<td><input type="password" name="pw"/></td>
		</tr>
		<tr>
			<td colspan="2">
				<input type="submit" value="로그인"/>
			</td>	
		</tr>
	</table>
</form>

</body>
</html>