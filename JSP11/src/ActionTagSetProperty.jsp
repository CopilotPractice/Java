<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<html>
<body>
	<!-- 
		beans.Member myMember = new beans.Member();
 	-->
	<jsp:useBean id="myMember" class="beans.Member"/>
	
	<!-- 
		myMember.setId("OKJSP");
		myMember.setPassword("OKPassword");
	 -->
	<jsp:setProperty name="myMember" property="id" value="OKJSP"/>
	<jsp:setProperty name="myMember" property="password" value="OKPassword"/>

	ID : <%=myMember.getId() %><br/>
	Password : <%=myMember.getPassword() %>
	
</body>
</html>