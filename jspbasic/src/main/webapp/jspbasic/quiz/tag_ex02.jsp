<%@page import="java.util.Random"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%!
	int total = 0;

	public int randomNum() {
		Random ran = new Random();
		int num = ran.nextInt(8)+2;    // 0 1 2 3 4 5 6 7 + 2
		return num;
	}
%>    
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
	</head>
	<body>
		<%
			total++;
			int ran = randomNum();
		%>
		<p>
			페이지 누적 요쳥 : <%=total %><br>
			매 10번째 방문자에게 기프티콘을 드립니다.
			<!-- 10번째 방문자가 접속시 "당첨되셨습니다" 를 출력 -->
		<%
			if(total % 10 == 0) {%>
				<strong> 당첨되었습니다!! </strong>
				<a href = "https://search.pstatic.net/sunny/?src=https%3A%2F%2Fi.pinimg.com%2F736x%2F9f%2F7d%2F31%2F9f7d31c4f2fcecd71ffaf37c07e700ea.jpg&type=sc960_832">당첨페이지로 이동하기</a>
			<%	}	%>	
			
			
		</p>
		<hr>
		<!-- 2부터 9 사이의 임의의 구구단을 출력하는 코드를 작성하시오 -->
		<h2>랜덤 구구단 <%=ran %></h2>
		이번에 출력할 구구단 <%=ran %>단 입니다.<br>
		<%
			for(int i = 1; i <= 9 ; i++){
				int re = ran*i;	
			
		%>
			<%=ran %> x <%=i %> = <%=re %> <br>
		<%
				}
		%>
		
		
	</body>
</html>