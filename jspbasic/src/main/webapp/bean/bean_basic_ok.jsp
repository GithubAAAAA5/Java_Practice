<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	request.setCharacterEncoding("utf-8");

	/*
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	String name = request.getParameter("name");
	String email = request.getParameter("email");
	*/
	
%>    
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>bean_basic_ok</title>
	</head>
	<body>
		<jsp:useBean id="u1" class="com.bean.User" scope="page" />
		<jsp:setProperty property="*" name="u1"/>

		<%-- 액션태그를 통한 빈 사용
			id	: 사용할 객체 변수명
			class	: 실제 경로
			scope	: 빈의 사용범위		
		 --%>
		 
		 <%-- setProperty는 setter 메서드를 사용한다. 
		 <jsp:setProperty property="id" name="u1" value="<%=id %>" /><br>
		 <jsp:setProperty property="pw" name="u1" value="<%=pw %>" /><br>
		 <jsp:setProperty property="name" name="u1" value="<%=name %>" /><br>
		 <jsp:setProperty property="email" name="u1" value="<%=email %>" /><br>
		 --%>
		 
		 <%-- getProperty는 getter 메서드를 사용한다. --%>
		 아이디	: <jsp:getProperty property="id" name="u1" /><br>
		 비밀번호	: <jsp:getProperty property="pw" name="u1" /><br>
		 이름		: <jsp:getProperty property="name" name="u1" /><br>
		 이메일	: <jsp:getProperty property="email" name="u1" /><br>
		 
	</body>
</html>