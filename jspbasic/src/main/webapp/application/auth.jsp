<%@page import="java.util.Arrays"%>
<%@page import="java.util.UUID"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	// 자바 uuid 중복되지 않는 16bit 값 생성
	UUID uuid = UUID.randomUUID();
	System.out.println(uuid);
	// split 은 특정 문자열을 기준으로 자르는 메서드
	String struuid = uuid.toString();
	String[] arr = struuid.split("-");
	System.out.println(Arrays.toString(arr));
	
	session.setAttribute("auth", arr[1]);
	
%>    
    
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>auth.jsp</title>
	</head>
	<body>
		<h2>인증페이지</h2>
		<hr>
		<form action="auth_ok.jsp">
		<h3>인증 문자 : <del><%=arr[1] %></del></h3>
		위 문자열을 입력하세요 : <input type="text" name="code" size="8">
		<input type="submit" value="인증">
		
		<a href="auth_ok.jsp"></a>
		</form>
	</body>
</html>

