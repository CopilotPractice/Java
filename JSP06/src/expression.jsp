<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<html>
<body>
<%
	String hello = "Hello!";
	String world = "World!";
	
	String id = request.getParameter("id");

	
%>
<h1><%=hello%>   <%=world %></h1>
<h1><% out.println(hello);
       out.println(world);
       %></h1>

<hr/>
<input type="text" name="id" value="<%=id%>"/>
<input type="text" name="id2" value="<%= (id == null) ? "guest" : id %>"/>



 
</body>
</html>
























