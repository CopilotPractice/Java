<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ page import="java.sql.*" %>
<html>
<body>
<%
	Connection conn = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	
	try{
		Class.forName("com.mysql.cj.jdbc.Driver");
		
conn = DriverManager.getConnection(
	"jdbc:mysql://localhost:3306/jspbook?characterEncoding=UTF-8&serverTimezone=UTC",
	"jspbook",
	"1234"
	);
		
		pstmt = conn.prepareStatement(
				"SELECT * " 
			+	"  FROM STUDENT " 
			+   " WHERE DEPARTMENT_ID = ? AND STUDENT_ID LIKE ? ");
		
		pstmt.setString(1, "M001");
		pstmt.setString(2, "2014%");
		
		rs = pstmt.executeQuery();
		
		out.println("<table border='1'>");
		while(rs.next()){
			out.println("<tr>");
			out.println("<td>" + rs.getString(1) + "</td>");
			out.println("<td>" + rs.getString(2) + "</td>");
			out.println("<td>" + rs.getString(3) + "</td>");
			out.println("<td>" + rs.getString(4) + "</td>");
			out.println("<td>" + rs.getString(5) + "</td>");
			out.println("</tr>");
		}
		out.println("</table>");
	}catch(SQLException e){
		e.printStackTrace();
	}finally{
		if(rs != null) try{rs.close();}catch(SQLException e){e.printStackTrace();}
		if(pstmt != null) try{pstmt.close();}catch(SQLException e){e.printStackTrace();}
		if(conn != null) try{conn.close();}catch(SQLException e){e.printStackTrace();}
	}		
%>
</body>
</html>
