<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%
 if(session != null){
	 session.invalidate();
	 
 }
Cookie[] cookies = request.getCookies();
String rememberId = null;
String Id = null;
String pw = null;
if(cookies!=null && cookies.length > 0){
	for(int i = 0; i < cookies.length;i++){
		if(cookies[i].getName().equals("rememberId")){
			rememberId = cookies[i].getValue();
		
	}
		if(cookies[i].getName().equals("Id")){
			Id = cookies[i].getValue();
		
	}
		if(cookies[i].getName().equals("pw")){
			pw = cookies[i].getValue();
		
	}
}
}

if(rememberId!=null && rememberId.equals("temp")){
	if(cookies!=null && cookies.length > 0){
		for(int i = 0; i < cookies.length;i++){
			if(cookies[i].getName().equals("rememberId")){
				cookies[i].setMaxAge(0);
				response.addCookie(cookies[i]);
			}
			if(cookies[i].getName().equals("id")){
				cookies[i].setMaxAge(0);
				response.addCookie(cookies[i]);
			}
			if(cookies[i].getName().equals("pw")){
				cookies[i].setMaxAge(0);
				response.addCookie(cookies[i]);
			}
		}
	}
}
response.sendRedirect("/Login2/LogOut.jsp");
%>
</body>
</html>