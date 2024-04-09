<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	Date now = new Date();		 // 현재 시간을 가져와서 포맷을 지정하여 문자열로 변환
	SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
	
	
	Cookie show = new Cookie("show" , sdf.format(now));	// 쿠키 객체 생성 후 현재 날짜 값을 show  에 저장
	
	show.setMaxAge(30);			// 쿠키의 유효 시간 설정 (60초)
	
	response.addCookie(show);	// 응답에 쿠키 추가

	
%>    
    
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title> cookie01_practice.jsp</title>
	</head>
	<body>
		<a href ="cookie02_practice.jsp"> 쿠키에 저장된 값 확인하기.</a>
	</body>
</html>