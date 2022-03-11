<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<html>
<body>
	전달받은 데이터는 [<%=request.getParameter("data")%>]<hr/>
	<input type="text" value="<%=request.getParameter("data")%>"/>	
</body>
</html>