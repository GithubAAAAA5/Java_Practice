<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>page</title>
	</head>
	<body>
		<%!
			int count = 0;
		%>
		<%
			count++;
		%>
		
		페이지 누적 요청 : <%=count %>
		<br>
		<p><a href="<%= request.getRequestURI() %>">페이지 새로고침</a></p>
		<br>
		<%@ include file="todaysnum.jsp" %>
	</body>
</html>