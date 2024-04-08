<%@page import="java.util.Arrays"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	String name = request.getParameter("name");
	String age = request.getParameter("age");
	String address = request.getParameter("address");
	String phnum = request.getParameter("phnum");

	String major = request.getParameter("major");
	String gender = request.getParameter("gender");
	
	String[] arr = request.getParameterValues("interest");

%>    
    
    
    
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>request_get_form.jsp</title>
	</head>
	<body>
		아이디	:	<%=id %><br>
		비밀번호	:	<%=pw %><br>
		이름		:	<%=name %><br>
		성별		:	<%=gender %><br>
		나이		:	<%=age %><br>
		주소		:	<%=address %><br>
		전공		:	<%=major %><br>
		취미		:	<%=Arrays.toString(arr) %><br>
		전화번호	:	<%=phnum %><br>
		
	</body>
</html>