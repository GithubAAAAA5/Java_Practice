<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	String num = request.getParameter("num");
	Integer select = Integer.parseInt(num);
%>    
    
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>request_video_get.jsp</title>
	</head>
	<body>
		<%
		if (num == null) {
		%>
		
		잘못된 접근입니다.
		
		<%
		}else if(select == 1) {
		%>
		
		<div align="center">
			<h2>코딩이란 무엇인가</h2>
			<p>코딩에 대하여..</p>
			<hr>
			<iframe width="640" height="360" src="https://www.youtube.com/embed/qspWEqvsJ5I" title="코딩이란 무엇인가? 우리는 왜 코딩을 해야 하는가!!" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe>		
			
		</div>
		
		<%
		}else if(select ==2){
		%>
		
		<div align="center">
			<h2>사하라사막 방문기</h2>
			<p>사막 방문 첫날..</p>
			<hr>
			<iframe width="640" height="360" src="https://www.youtube.com/embed/wu3L0IvK4N8" title="튀니지에서 진심으로 죽을 뻔한 사하라사막에서 6박7일 대모험 (풀버전)- 세계여행 🇹🇳" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe>		
			
		</div>
			
		
		
		<%
		}else if(select == 3){
		%>
		
		<div align="center">
		
			<h2>T1 VS GENG</h2>
			<p>명경기</p>
			<hr>
			<iframe width="640" height="360" src="https://www.youtube.com/embed/kIQAbAUkTag" title="T1 vs. GEN | 매치 67 하이라이트 | 03.09 | 2024 LCK 스프링 스플릿" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe>		
			
		</div>
		
		<%
		}
		%>
		
	</body>
</html>