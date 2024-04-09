<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>auth_reserve.jsp</title>
	</head>
	<body>
		<div align="center">
		<h1>콘서트 예약</h1><br>
		<h2>예약할 좌석을 선택하세요</h2>
		<hr >
		<h3>좌석 배치도</h3><br>
		
		A B C D E F G H I J K L M N O P Q R S T U V W X Y Z
		<%
		for (int i = 1; i <= 6; i++) {
		%>
			<%=i %>
		<%
			 for (int y = 1; y <= 26; y++){
		%>
				
				<input type="checkbox">
		<%
		if((y % 26)==0)
			 out.println("<br>");
		%>

		
		<%
			}
		%>
		
		<%
			if ((i % 3)==0)
				out.println("<br>");
		%>
		<%
		}
		%>
		
		
		<br>
		

		
		<br>
		
		<input type="submit" value="예약">
		<input type="submit" value="취소">
		
		
		</div>
	</body>
</html>