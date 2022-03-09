<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>쿠키를 이용한 세션관리03</title>
</head>
<body>


	<h2>안전하게 로그아웃 되었습니다.</h2>
	<p>다시 로그인 하시려면 아이디와 비밀번호를 입력하십시오.</p>
	
	<% pageContext.include("Login.jsp"); %>
	
	<hr>
	<form action="Login.jsp">
		<input type="submit" value="첫 화면으로">
	</form>
	
	<%
	if(session != null){
		session.invalidate();
	}

	String loginST = null;
	String rememberID = null;
	String ID = null;

	Cookie[] cookies = request.getCookies();   // 쿠키객체에 저장된 쿠키들을 배열로 받음

	// 아이디기억 했을시에 처리되는 if 문
	
	if(cookies != null && cookies.length >0){				  // 저장된 쿠키값들 전부 불러옴
		for(int i=0; i<cookies.length; i++){
			if(cookies[i].getName().equals("loginST")){   // 불러온 쿠키들 중에 쿠키이름이"loginStatus"와 같다면 아래내용 실행
				loginST = cookies[i].getValue();		  // String loginStatus 변수에 쿠키값을 담아줌
				cookies[i].setValue("logout");				  // 쿠키값을 "logout"으로 수정
				loginST = "logout";
				cookies[i].setMaxAge(0);					  // 쿠키 유지시간을 0초로 수정
				response.addCookie(cookies[i]);				  // 설정된 쿠키값 전송( 로그인상태만 로그아웃상태로 설정)
			}
			if( cookies[i].getName().equals("rememberID") ){  // 불러온 쿠키들 중에 쿠키이름이"rememberID"와 같다면 아래내용 실행
				rememberID = cookies[i].getValue();			  // rememberID에 쿠키 값을 담아줌 // 다시 로그인시에 rememberID에 keep을 유지시켜서 체크박스 상태설정
			}
			if( cookies[i].getName().equals("ID") ){	
				ID = cookies[i].getValue();					  // id에 쿠키 값을 담아줌 // 다시 로그인시에 id에 쿠키값 담아줌
			}
		}
	}
	
	//아이디기억 안 했을시에 처리되는 if 문
	if(rememberID != null && rememberID.equals("temp")){			// rememberID 아이디가 null이 아니고 값이 "temp"와 같을때 아래내용 실행
		if( cookies != null && cookies.length>0){					// 저장된 쿠키값들 전부 불러옴
			for(int i=0; i<cookies.length; i++){
				if( cookies[i].getName().equals("ID") ){			// 가져온 쿠키이름 전부 중에서 "id"란 이름 가진 쿠키를 유지시간 0초로 적용 후 response로 쿠키보냄
						cookies[i].setMaxAge(0);					// 즉 이름이 "id" 인 쿠키를 제거
						response.addCookie(cookies[i]);				// 제거된 쿠키 전송
				}
				if( cookies[i].getName().equals("PW") ){			// 가져온 쿠키이름 전부 중에서 "id"란 이름 가진 쿠키를 유지시간 0초로 적용 후 response로 쿠키보냄
					cookies[i].setMaxAge(0);					// 즉 이름이 "id" 인 쿠키를 제거
					response.addCookie(cookies[i]);				// 제거된 쿠키 전송
			}
			}
		}
	}	
%>
	
</body>
</html>