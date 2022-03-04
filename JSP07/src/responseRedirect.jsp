<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%
	String redirect = request.getParameter("redirect");

	if(redirect == null){
		out.println("redirect option not selected");
	}else if(redirect.equals("okjsp")){
		response.sendRedirect("http://www.okjsp.pe.kr"); // https://okky.kr/
	}else{
		response.sendRedirect("http://localhost:8083/Chap06/responseRedirected.jsp");
	}
%>