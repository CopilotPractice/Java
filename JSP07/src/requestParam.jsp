<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<% request.setCharacterEncoding("utf-8"); %>
<html>
<body>
<%
	String name = request.getParameter("name");
	String pwd = request.getParameter("pwd");
	String gender = request.getParameter("gender");
	String job = request.getParameter("job");
	String[] interest = request.getParameterValues("interest");
%>

이름 : <%=name%><br/>
비밀번호 : <%=pwd%><br/>
성별 : <%=gender%><br/>
직업 : <%=job%><br/>
관심분야 : <br/>
<%
	for(int i=0 ; i<interest.length ; i++){
		out.println(interest[i] + "<br/>");
	}
%>
</body>
</html>