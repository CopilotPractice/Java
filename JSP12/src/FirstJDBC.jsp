<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ page import="java.sql.*" %>
<html>
<body>
<%
	//JDBC 드라이버 로딩
//  Class.forName("com.mysql.jdbc.Driver");
	Class.forName("com.mysql.cj.jdbc.Driver");

	//JDBC URL 및 계정과 비밀번호를 지정하여 Connection 인스턴스를 통해 데이터베이스에 접속
	Connection conn = DriverManager.getConnection(
	"jdbc:mysql://localhost:3306/jspbook?characterEncoding=UTF-8&serverTimezone=UTC",
	"jspbook",
	"1234"
	);
	
	// SQL문을 실행하기 위한 Statement 인스턴스 획득
	Statement stmt = conn.createStatement();
	
	// Statement 인스턴스를 통해 실행한 SQL문의 결과를 ResultSet에 반환
	ResultSet rs = stmt.executeQuery("SELECT * FROM STUDENT");
	
	// 반환된 결과를 ResultSet의 메서드와 while 반복문을 통해 출력	
	/*
	while(rs.next()){
		out.println(rs.getString(1) + "|"); 
		out.println(rs.getString(2) + "|");
		out.println(rs.getString(3) + "|");
		out.println(rs.getString(4) + "|");
		//out.println(rs.getInt(4) + "|");
		//out.println(rs.getDouble(4) + "|");
		out.println(rs.getString(5) + "<br/>");
	}
	*/
	
	
	out.println("<table border='1'>");
	out.println("<tr><td>학번</td><td>이름</td><td>이메일</td><td>전화번호</td><td>학과번호</td></tr>");
	while(rs.next()){
		out.println("<tr>");
		out.println("	<td>" + rs.getString(1) + "</td>");
		out.println("	<td>" + rs.getString(2) + "</td>");
		out.println("	<td>" + rs.getString(3) + "</td>");
		out.println("	<td>" + rs.getString(4) + "</td>");
		out.println("	<td>" + rs.getString(5) + "</td>");
		out.println("</tr>");
	}
	out.println("</table>");
	
	
	rs.close();
	stmt.close();
	conn.close();
%>
</body>
</html>