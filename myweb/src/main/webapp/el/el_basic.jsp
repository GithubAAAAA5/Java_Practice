<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>el_basic.jsp</title>
	</head>
	<body>
		<%--
			EL(Expression Language)
			- EL 이란 JSP 에서 저장객체를 출력할 때 스크립팅을 전혀 쓰지 않을 수 있는 기술이다.
			- 표현식을 대체할 수 있다.
			ex) 표현식 <%=value %> 을 ${value} 로 대체할 수 있다.
			
			- EL 내부의 연산자
			> 산술 : + - * / %
			> 관계 : == != < <= > >=
			> 조건 : a ? b : c ( a 가 참이면 b이고 거짓이면 c)
			> 논리 : && ||
			
		 --%>
	
			표현식
			<%=1+2  %><br>
			<%="안녕" %><br>
			<%= 1 > 2 || 1 == 2 %><br>
			-------------------------<br>
			
			<b>EL</b><br>
			${1+2 }<br>
			${'안녕' }<br>
			${ 1 < 2 || 1 == 2 }<br>
			${ 1 > 2 or 1 == 2 }<br>
			
			${ 1 < 2 && 1 == 2 }<br>
			${ 1 < 2 and 1 == 2 }<br>
			
			${'홍길동' == '홍길동' }<br>
			${'홍길동' eq '홍길동' }<br>
			
			${ 1 == 2 ? "같음": "다름" }<br>
			
	</body>
</html>