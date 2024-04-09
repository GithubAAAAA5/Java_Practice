<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%
 	String id = request.getParameter("id");
 	String pw = request.getParameter("pw");
 	String checkID = request.getParameter("checkID");				// 1. 아이디와 비밀번호를 입력받는다.
 	
 	// 만약 아이디가              비밀번호가           이거라면,
 	if(id.equals("testid") && pw.equals("testpw")) {
 		// 로그인 성공
		Cookie userId = new Cookie("user_id", id); 
		userId.setMaxAge(60);
 		response.addCookie(userId);
 		
 		if (checkID != null) { //만약 checkID 박스가 선택되어 있다면 / nll 이 아니라면
 			Cookie check = new Cookie("checkID", id);
 			check.setMaxAge(3600);
 			response.addCookie(check);
 		}
 	// 로그인성공으로 웰컴페이지로 응답
 		response.sendRedirect("cookie_welcome_p.jsp");
		
 	// 로그인 실패한 경우
 	} else {
 		response.sendRedirect("cookie_login_p.jsp");
 	}
 %>   
    
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>cookie_login_pass.jsp</title>
	</head>
	<body>
		
	</body>
</html>