<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>error_trycatch.jsp</title>
	</head>
	<body>
		<div align="center">
		<% try { %>
		<%
			String num = request.getParameter("num");
			Integer.parseInt(num);
		%>
		<% }catch(Exception e) { %>
			<strong>num 값이 없습니다.</strong>
			<%} %>
		</div>
	</body>
</html>