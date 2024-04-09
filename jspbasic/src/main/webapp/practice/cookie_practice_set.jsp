<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	// 쿠키 객체를 생성하고 / 생성자 매개변수로 쿠키의 이름과 쿠키에 해당하는 값을 넣어준다.
	Cookie ckid = new Cookie("user_id", "testid1234");			// 쿠키 설정 해당 변수(?) 이름 user id 해당하는 값 testid1234
	Cookie ckname = new Cookie("user_name", "고길동");
	Cookie cknum = new Cookie("user_num", "99");
	
	// 해당 쿠키가 값을 가지고 있는 시간 설정하기
	ckid.setMaxAge(10);		//기본값  second
	ckname.setMaxAge(15);
	cknum.setMaxAge(25);
	
	/*
	쿠키에 사용가능한 여러 명령어
	
	Secure (보안): 이 속성이 설정된 쿠키는 HTTPS 연결을 통해만 전송됩니다. 
	따라서 중요한 정보를 저장하는 쿠키에는 Secure 속성을 사용하여 보안을 강화할 수 있습니다.

	HttpOnly (HTTP 전용): 이 속성이 설정된 쿠키는 JavaScript를 통해 액세스할 수 없습니다. 
	이는 쿠키를 훔치는 XSS(Cross-site Scripting) 공격을 방지하는 데 도움이 됩니다.

	Max-Age 또는 Expires (유효 기간): 이 속성은 쿠키의 유효 기간을 지정합니다. 
	Max-Age는 쿠키의 수명을 초 단위로 지정하고, Expires는 쿠키의 만료 날짜를 UTC 형식으로 지정합니다.

	Domain (도메인): 이 속성은 쿠키가 전송될 수 있는 도메인을 지정합니다. 
	보안을 강화하기 위해 필요한 경우 쿠키를 특정 도메인에만 제한할 수 있습니다.

	Path (경로): 이 속성은 쿠키가 전송될 수 있는 URL 경로를 지정합니다. 
	이를 통해 특정 경로에서만 쿠키를 사용할 수 있도록 제한할 수 있습니다.
	*/
	ckname.setHttpOnly(true);
	
	
	// 3. 응답객체에 쿠키 탑재
	response.addCookie(ckid);
	response.addCookie(ckname);
	response.addCookie(cknum);
	
	
%>    
    
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>cookie_practice_set.jsp</title>
	</head>
	<body>]
		<div align="center">
		<a href="cookie_practice_get.jsp">쿠키확인하기</a>
		</div>
	</body>
</html>