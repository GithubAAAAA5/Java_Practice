<%@page import="java.util.Random"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<% 
	Random rannum = new Random();
	int numran = rannum.nextInt(10);
 %>    
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>todaysnum</title>
	</head>
	<body>
		오늘의 숫자 : <%=numran %><br>
	</body>
</html>