<%@page import="java.util.Arrays"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>


<%
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	
	String name = request.getParameter("name");
	String address = request.getParameter("address");
	
	//checkbox 는 values 메서드를 이용하여 처리한다. 그 이유는 같은 변수로 여러 값을 받기때문인것같다
	String[] arr = request.getParameterValues("intro");
	
	
	String major = request.getParameter("major");
	String phone = request.getParameter("phone");
	
%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>req_getParameter.jsp</title>
	</head>
	<body>
	
		아이디 :		<%=id %><br> 
		비밀번호 : 	<%=pw %><br> 
		이름 :		<%=name %><br> 
		주소 :		<%=address %><br> 
		관심분야 :		<%=Arrays.toString(arr) %><br> 
		전공 :		<%=major %><br> 
		통신사 :		<%=phone %><br>
	
	</body>
</html>