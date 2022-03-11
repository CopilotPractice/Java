<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ page import="MethodTest.InstanceMethod" %>
<%
	InstanceMethod instanceMethod = new InstanceMethod();
	// request.setAttribute("usingMethod", "testdata");
	request.setAttribute("usingMethod", instanceMethod);
	// 내장객체.setAttribute() 메서드에 등록하는 데이터는
	// 데이터의 이름은 String이지만, 데이터의 값은 Object 타입이다.
	// 즉, 데이터의 값은 자바에 존재하는 모든 데이터타입을 저장할 수 있다.
	
%>
<html>
<body>
	<h3>
		instanceMethod 객체의 setData 메서드 사용<br/>
		${usingMethod.setData(10)} 메서드 호출 완료
		<!-- instanceMethod.setData(10); -->
	</h3><hr/>
	<h3>
		instanceMethod 객체의 getData 메서드 사용<br/>
		${usingMethod.getData()}<br/>
		<input type="text" value="${usingMethod.getData()}"/> 
	</h3><hr/>
	<h3>
		instanceMethod객치의 다중 입력 파라미터를 사용하는 getAddData 메서드 사용<br/>
		메서드 호출 결과 : ${usingMethod.getAddData(usingMethod.getData(), 3)}
	</h3>
	<h3>
		instanceMethod 객체의 배열 반환 getArrayData 메서드 사용<br/>
		메서드 호출 결과 : ${usingMethod.getArrayData(usingMethod.getData(), 3)}
	</h3>
	<h3>
		instanceMethod 객체의 getArrayData 메서드를 통해 반환된 배열 사용<br/>
		0번 인덱스 값 : ${usingMethod.getArrayData(usingMethod.getData(), 3)[0]}<br/>
		1번 인덱스 값 : ${usingMethod.getArrayData(usingMethod.getData(), 3)[1]}<br/>
		2번 인덱스 값 : ${usingMethod.getArrayData(usingMethod.getData(), 3)[2]}
	</h3>
</body>
</html>















