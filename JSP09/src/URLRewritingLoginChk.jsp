<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<html>
<body>
<%
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	
	// id.trim().equals("")
	// [test] [ test]
	// method chain 
	if ( id==null || pw==null || id.trim().equals("") || pw.trim().equals("")  ){	
//  if ( id.trim().equals("") || pw.trim().equals("") || id==null || pw==null  ){	
		out.print("<b>아이디와 비밀번호는 반드시 입력되어야 합니다.</b><hr/>");
		pageContext.include("URLRewritingLogin.jsp");
	}else{
%>
		로그인에 성공하였습니다.<br/>
		[<%=id%>]님 환영합니다. <hr/>
		<a href="URLRewritingPwChk.jsp?id=<%=id%>&pw=<%=pw%>">
			[비밀번호 확인]
		</a>
<%
	}
%>
</body>
</html>