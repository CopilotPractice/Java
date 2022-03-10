<%@ page language="java" contentType="text/html; charset=utf-8"%>
<% request.setCharacterEncoding("utf-8"); %>

<html>
	<head>
		<title>회원가입</title>
	</head>
	<jsp:useBean id="join" class="beans.Join"/>	
	<jsp:setProperty name="join" property="name" value="<%=request.getParameter(\"name\") %>" />
	<jsp:setProperty name="join" property="gender" value="<%=request.getParameter(\"gender\") %>" />
	<jsp:setProperty name="join" property="id" value="<%=request.getParameter(\"id\") %>" />
	<jsp:setProperty name="join" property="password" value="<%=request.getParameter(\"password1\") %>" />
	<jsp:setProperty name="join" property="address" value="<%=request.getParameter(\"address\") %>" />
	<jsp:setProperty name="join" property="phone" value="<%=request.getParameter(\"phone\") %>" />
	<jsp:setProperty name="join" property="email" value="<%=request.getParameter(\"email\") %>" />
	<jsp:setProperty name="join" property="hobby" value="<%=request.getParameterValues(\"hobby\") %>" />
	
	<body>

		<h3>작성하신 내용은 아래와 같습니다</h3>
	
		이름 : <jsp:getProperty name="join" property="name"/><hr/>
		
		<%	if (join.getGender().equals("0")){ %>
			성별 : 남자 <hr/>
		<%	}else{ %>
			성별 : 여자 <hr/>
		<% 	} %>
		아이디 : <jsp:getProperty name="join" property="id"/><hr/>
		주소 : <jsp:getProperty name="join" property="address"/><hr/>
		전화번호 : <jsp:getProperty name="join" property="phone"/><hr/>
		이메일주소 : <jsp:getProperty name="join" property="email"/><hr/>
		취미: <br/>
		<%	if ( join.getHobby() == null ){ %>
		    [선택한 취미가 없습니다]
		<% 	} else { %>
			<table border="1">
		<%		for (int i=0 ; i<join.getHobby().length ; i++){ %>
				<tr>
					<td width="80" align="center"><%= join.getHobby()[i]%></td>
				</tr>
		<%		}			
			}
		%>
		</table>
	</body>
</html>