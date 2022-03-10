<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<html>
<body>
	여기는 ActionTagParamFrom2.jsp 입니다! <br/>
	ActionTagParamFrom2.jsp의 subject 파라미터의 값 :
	<% String subject = request.getParameter("subject"); %>
	<% String juminNo = request.getParameter("juminNo"); %>
	subject : <%=subject %> <br/>
	juminNo : <%=juminNo %> <br/>
	  
	<%=request.getParameter("subject") %> <hr/>
		<% 
			if(subject == null){
		%>
			<jsp:include page="ActionTagParamTo2.jsp">
					<jsp:param name="subject" value="Default Value"/>
			</jsp:include>		
		
		<%	
			}else{
				// subject=test& juminNo=2108293344556
				if(juminNo != null ){
		%>
					<jsp:include page="ActionTagParamTo2.jsp">
						<jsp:param name="juminNo" value='<%=(juminNo.substring(0, 6) + "-XXXXXXX")%>'/>
					</jsp:include>
					
		<%				
				}
			}
		%>	
</body>
</html>