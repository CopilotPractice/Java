<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<html>
<body>
	getInitParameter() 메서드 사용<hr/>
	<%
		String name = "Hello";
		String value = application.getInitParameter(name);
	%>
	
	<%=name + " 파라미터의 설정값 : " + value %><hr/>
	
	<%
		//conn.db에접속시켜줘("127.0.0.1", "1521", "xe", "scott", "tiger");
	   // 다음 접속한 DB에 sql 실행!
	%>
	
	
	<%="접속할 DB의 IP : " + application.getInitParameter("DBIp")%><br/>
	<%="접속할 DB의 Port : " + application.getInitParameter("DBPort")%><br/>
	<%="접속할 DB의 Name : " + application.getInitParameter("DBName")%><br/>
	<%="접속할 DB의 Account : " + application.getInitParameter("DBAccount")%><br/>
	<%="접속할 DB의 Password : " + application.getInitParameter("DBPassword")%><br/>
	<!-- conn.db에접속시켜줘(application.getInitParameter("DBIp"),
	                    application.getInitParameter("DBPort"), "xe", "scott", 
	                    application.getInitParameter("DBPassword")); -->
	                    
	
	
	
</body>
</html>