<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<%
		//id
	Cookie[] cookies = request.getCookies();
	String id = null;
		if(cookies != null){
			for(int i =0; i<cookies.length;i++){
				if(cookies[i].getName().trim().equals("id")){
					System.out.println(cookies[i].getValue());
					id=cookies[i].getValue();
				}
			}
		}
	String loginStatus = null;
	String rememberId = null;
	
	
			//pw
	String pw = null;
	if(cookies != null){
		for(int i =0; i<cookies.length;i++){
			if(cookies[i].getName().trim().equals("pw")){
				System.out.println(cookies[i].getValue());
				pw=cookies[i].getValue();
			}
		}
	}
	String rememberPw = null;
	String loginPwStatus = null;
	
	
	//id statement
	if(cookies !=null && cookies.length > 0){
		for(int i = 0; i < cookies.length; i++){
			if(cookies[i].getName().equals("rememberId") && cookies[i].getValue().equals("keep")){
				rememberId = cookies[i].getValue();
			}
			
			if(cookies[i].getName().equals("rememberPw") && cookies[i].getValue().equals("keep")){
				rememberPw = cookies[i].getValue();
			}
		}
	}
%>
</head>
<body>
<form action="CookieSessionSet.jsp" method="post">
 아이디와 비밀번호를 입력하십시오. [sessionID:<%=session.getId() %> id:<%=id %>, pw:<%=pw %>]<hr/>
 <table border="1">
 <tr>
 <td align="center">아이디</td>
 <td><input type="text" name="id" value="<%=(id == null?"":id)%>"/></td> 
 </tr>
 <tr>
 <td align="center">비밀번호</td>
 <td><input type="password" name="pw" value="<%=(pw ==null?"":pw)%>"/></td>
 </tr>
 <tr>
 <td colspan="2" align="right">
 <input type="checkbox" name="rememberId" value="keep"<%=rememberId==null?"":"checked=\"checked\""%> />아이디기억
 <input type="checkbox" name="rememberPw" value="keep"<%=rememberPw ==null?"":"checked=\"checked\"" %>/>비밀번호기억
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