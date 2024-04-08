<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	/*
	login.jsp 페이지로부터 넘어온 id, pw를 받아 처리한다.
	id가 testid123 이고, 비밀번호가 password456 이라면 로그인 성공이라고 한다.
	login_welcome 페이지로 리다이렉트
	
	id가 틀린 경우 login_id_fail.jsp 페이지로 리다이렉트한다.
	pw가 틀린 경우 login_pw_fail.jsp 페이지로 리다이렉트한다.
	*/
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	
	if (id.equals("testid123")) {
		if (pw.equals("password456")) {
			// 로그인 성공
			response.sendRedirect("login_welcome.jsp");
		} else {
			// 비밀번호 오류
			response.sendRedirect("login_pw_fail.jsp");
		} 
	} else {
			// 아이디 오류
			response.sendRedirect("login_id_fail.jsp");
		}
	// 입력 순서가 아이디가 맞은경우 비밀번호를 확인 비밀번호가 맞을경우 로그인 완료 페이지, 비밀번호가 틀린 경우 비밀번호 오류 페이지,// 아이디에서 틀린경우 비밀번호로 가지않고 아이디 오류 페이지 
%>    
    
    
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>res_login_ok.jsp</title>
	</head>
	<body>
		
		
	</body>
</html>