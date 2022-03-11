<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ page import="java.sql.*" %>
<html>
<body>
<%
	Connection conn = null;
	Statement stmt = null;
	int rowNum;
	
	try{
		Class.forName("com.mysql.cj.jdbc.Driver");
		
		conn = DriverManager.getConnection(
			"jdbc:mysql://localhost:3306/jspbook?characterEncoding=UTF-8&serverTimezone=UTC",
			"jspbook",
			"1234"
			);
		
		stmt = conn.createStatement();
		
		rowNum = stmt.executeUpdate(
				"INSERT INTO STUDENT (STUDENT_ID, STUDENT_NAME, STUDENT_EMAIL, "
				+"                    STUDENT_TEL, DEPARTMENT_ID) "
				+" VALUES('20140006', '김연아', 'yunakim@eamil.com', '010-006-0006', "
				+"        'M001')");
		
		// String id = requeset.getParameter("id");
		// String name = requeset.getParameter("name");
		// String mail = requeset.getParameter("mail");
		// String tel = requeset.getParameter("tel");
		// String dId = requeset.getParameter("dId");
		
/* 		String sql = 
		"INSERT INTO STUDENT (STUDENT_ID, STUDENT_NAME, STUDENT_EMAIL, "
		+"                    STUDENT_TEL, DEPARTMENT_ID) "
		+" VALUES("+id+", "+name+", 'yunakim@eamil.com', '010-006-0006', "
		+"        'M001')"; */
		
		out.println(rowNum + "개의 행이 삽입되었습니다." + "<hr/>");
	}catch(SQLException e){
		e.printStackTrace();			
	}catch(Exception e){
		e.printStackTrace();
	}finally{
		if(stmt != null) try{stmt.close();}catch(SQLException e){e.printStackTrace();}
		if(conn != null) try{conn.close();}catch(SQLException e){e.printStackTrace();}
	}
%>
<a href="http://localhost:8083/Chap10/FirstJDBC.jsp">결과 확인</a>
</body>
</html>




















