<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	String name = request.getParameter("name");
	String avg = request.getParameter("avg");
	
%>    
    
    
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>score_quiz04.jsp</title>
	</head>
	<body>
		<div align="center">
		<%=name %>님 평균 <%=avg %>점 불합격
		</div>
	</body>
</html>