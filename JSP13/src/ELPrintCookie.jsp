<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<html>
<body>

<h3>cookie 작성 후 출력</h3>
${cookie}<hr/>

<h3>cookie.cookieName 작성후 출력</h3>
${cookie.cookieName}<hr/>

<h3>cookie.cookieName의 value를 출력</h3>
${cookie.cookieName.value}<hr/>

ID : <input type="text" name="id" value="${cookie.cookieName.value}"/>

</body>
</html>