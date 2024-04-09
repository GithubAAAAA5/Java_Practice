<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	// 예약 현황이 있다면 예약 좌석에 대한 값을 꺼내서 처리하는방법
	List<String> list = new ArrayList<>();
	if (application.getAttribute("seats") != null) {
		list = (List<String>)application.getAttribute("seats");		//generic 을 사용한다고 적었는데 형안전성을 확보하지 못하기 때문에 밑줄
	}

%>
 
    
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>auth_reserve.jsp</title>
	</head>
	<body>
		<div align="center">
		<h2>콘서트 예약</h2><br>
		<h4>예약할 좌석을 선택하세요</h4>
		<hr >
		
		<form action="auth_reserve_ok.jsp">
		<b>좌석 배치도</b><br>&nbsp;&nbsp;
		<% for(char c = 'A'; c <= 'Z'; c++) {%>
		<small><%=c %></small>&nbsp;&nbsp;
		<% } %>
		<br>
		
		<% for (int i = 1; i <= 6; i++) { %>
		
			<%=i %>
			
			<% for(char c = 'A'; c <= 'Z'; c++) { %>
			
				<% if(list.contains(c + "-" + i)) {%>
				
					<input type="checkbox" name="seat" value="<%=c %>-<%=i %>" disabled>		<!-- disabled 비활성화 시킴 -->
				
			<% } else { %>
			
					<input type="checkbox" name="seat" value="<%=c %>-<%=i %>">
					
			<% } %>
	
		<% } %>
		
		<br>
		
			<% if (i == 3) {	%> <br>
		
			<% } %>
			
		<% } %>
		
		<br>
		
		<input type="submit" value="예약">
		<input type="reset" value="취소">
		
		</form>
		</div>
	</body>
</html>