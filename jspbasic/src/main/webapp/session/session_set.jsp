<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	/*
		세선은 쿠키와 마찬가지로 인증번호를 유지하기 위해서 사용하는 JSP 내장 객체 이다.
		setAttribute("이름", 값) 으로 저장한다.
	*/
	
	session.setAttribute("id","kkk123");
	session.setAttribute("name","홍길동");
	
%>    
    
    
    
    
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>session_set.jsp</title>
	</head>
	<body>
		<a href="session_get.jsp">세션 확인 하기</a>
	</body>
</html>