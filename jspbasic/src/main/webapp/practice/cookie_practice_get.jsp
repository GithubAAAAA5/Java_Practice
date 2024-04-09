<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%

	// 쿠키 사용하기
	// 쿠키 요청시 자동으로 전송되며 request에 자동저장
	Cookie[] arr = request.getCookies();

	if(arr != null) {			// 만약. 쿠키가 null 이 아니라면 / 쿠키값이 존재한다면
		for (int i = 0 ; i < arr.length ; i++) {
			out.println(arr[i].getName() + "<br>");		// 쿠키 이름			// br 로 쿠키이름 값 나눠줌
			out.println(arr[i].getValue() + "<br>");	// 해당 값			// br 로 다음값과의 줄을 나눔
		}
	}
%>    
    
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>cookie_practice_get.jsp</title>
	</head>
	<body>
	<hr>
		값
		<hr>
	</body>
</html>