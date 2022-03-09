<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>


<%
		//id set
	String rememberId = request.getParameter("rememberId");
	String id = request.getParameter("id");
	
		//set session
	session.setAttribute("sesId", id);
	session.setMaxInactiveInterval(60 * 6);
	
		
		//pw set
	String pw = request.getParameter("pw");
	String rememberPw = request.getParameter("rememberPw");
	
		//cookie value  id set
	Cookie cookieRememberId;
	Cookie cookieId;
	Cookie cookieLoginStatus;
	
	//cookie value  pw set
	Cookie cookiePw;
	Cookie cookieRememberPw;
	Cookie cookieLoginPwStatus;
	
		//id
	if(rememberId != null && rememberId.equals("keep")){
		cookieRememberId= new Cookie("rememberId","keep");
	}else{
		cookieRememberId= new Cookie("rememberId","temp");
	}
	cookieId = new Cookie("id",id);
	cookieLoginStatus = new Cookie("loginStatus","login");
	
		//pw
	if(rememberPw != null && rememberPw.equals("keep")){
		cookieRememberPw = new Cookie("rememberPw","keep");
	}else{
		cookieRememberPw = new Cookie("rememberPw","temp");		
	}
		cookiePw = new Cookie("pw", pw);
		cookieLoginPwStatus = new Cookie ("loginPwStatus","loginPw");
	


			

		// set  id value  response 
	response.addCookie(cookieRememberId);
	response.addCookie(cookieId);
	response.addCookie(cookieLoginStatus);
			
			// set  pw value  response
	response.addCookie(cookieLoginPwStatus);
	response.addCookie(cookiePw);
	response.addCookie(cookieRememberPw);
	
	out.println(cookieRememberId.getValue());
	response.sendRedirect("http://localhost:8081/LoginDb/CookieSessionChk.jsp");
%>


</body>
</html>