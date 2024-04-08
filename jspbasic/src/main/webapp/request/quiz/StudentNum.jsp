<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	Integer stn = Integer.parseInt(request.getParameter("stn"));
%>    
    
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>StudentNum</title>
	</head>
	<body>
		<%=stn %>번 학생 번호 출력
	</body>
</html>