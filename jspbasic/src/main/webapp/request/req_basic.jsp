<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%
	//request 객체에는 브라우저에 대한 정보, 사용자가 전달하는 많은 정보를 자동으로 저장한다.
	StringBuffer url = request.getRequestURL();
	String uri = request.getRequestURI();
	String path =request.getContextPath();
	String query = request.getQueryString();
	String addr = request.getRemoteAddr();
	
	
	
%>


<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>req_basic.jsp</title>
	</head>
	<body>
		url 주소 :
		<%=url %>
		<br> uri 주소 :
		<%=uri %>
		<br> 컨텍스트 경로 :
		<%=path %>
		<br> 쿼리값 :
		<%=query %>
		<br> 접속 경로 :
		<%=addr %>
		<br>
		<!-- 
			출력값
				url 주소 : http://localhost:8080/jspbasic/request/req_basic.jsp
				uri 주소 : /jspbasic/request/req_basic.jsp
				컨텍스트 경로 : /jspbasic
				쿼리값 : null
				접속 경로 : 0:0:0:0:0:0:0:1
			
			 -->
	</body>
</html>


























