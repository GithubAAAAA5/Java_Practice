<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>guguRequest</title>
	</head>
	<body>
		<%
			for(int dan=2; dan<=9; dan++){  // 2단부터 9단까지
		%>
				<!-- a태그로 데이터 받기 --> 
				<a href="./guguResponse.jsp?dan=<%=dan%>"><%=dan%>단</a>
		<%
			}
		%>
	</body>
</html>