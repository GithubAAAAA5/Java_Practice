<%@page import="com.bean.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	/*
		1. 앞에서 넘어온 form 값을 받아서 처리한다.
		
		2. pw 와 pw_check 가 같다면 
		   User 객체에 form 에서 넘어온 id, pw 를 저장하고,
		   User 객체를 quiz03.jsp로 넘겨준다. 
		   "화면에 id 님의 회원 가입을 축하합니다. 비밀번호는 xxxx 입니다."
		   
		3. pw 와 pw_check 가 다르다면
		   quiz04.jsp로 넘어가서 "회원가입에 실패했습니다." 를 출력한다.
	*/
	
	request.setCharacterEncoding("utf-8");

	
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	String pw_check = request.getParameter("pw_check");
	
	if(pw.equals(pw_check)) {		// (user.getPw().equals(pw_check)){
		User user = new User();
		user.setId(id);
		user.setPw(pw);
		
		request.setAttribute("user" , user);
		
		RequestDispatcher dp = request.getRequestDispatcher("quiz03.jsp");
		dp.forward(request, response);
		
		/* 액션태그를 사용한 경우
		<jsp.useBean id ="user" class="com.bean.User" scope="request" />
		<jjsp : setProperty property="*" name="user" .>
		<jsp : forward page="quiz03.jsp" />
		*/
	}else{
	
		response.sendRedirect("quiz04.jsp");
	}
%>    
    
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>quiz02.jsp</title>
	</head>
	<body>
		<jsp:useBean id="user1" class="com.bean.User" scope="page" />
		<jsp:setProperty property="*" name="user1"/>
		
		<jsp:setProperty property="id" name="user1"	value="<%=id %>"/><br>
		<jsp:setProperty property="pw" name="user1" value=<%=pw %>/><br>
		<jsp:setProperty property="pw_check" name="user1" value<%=pw_check %>/><br>
		
		ID			: <jsp:getProperty property="id" name="user1"/><br>
		PW			: <jsp:getProperty property="id" name="user1"/><br>
		PW_CHECK	: <jsp:getProperty property="id" name="user1"/><br>
		
	</body>
</html>