<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	Cookie[] arr = request.getCookies();
	String id = "";
	
	if (arr != null ) {
		for (Cookie c : arr) {
			if ( c.getName().equals("user_id")) {
				id = c.getValue();
			}
		}
	}
%>    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>cookie_welcome_p.jsp</title>
</head>
<body>
	로그인 성공<br>
	<%=id %> 님 환영합니다.
</body>
</html>