<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%
	String redirect = request.getParameter("redirect");
	out.println("redirect parameter value : " + redirect);
%>