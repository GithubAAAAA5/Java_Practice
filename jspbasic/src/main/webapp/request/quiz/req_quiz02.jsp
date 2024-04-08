<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>StudentNum</title>
	</head>
	<body>
		<h1>학생번호</h1>
		<%
			for(int stn=1; stn<=30; stn++) {
		%>		
			<a href="./StudentNum.jsp?stn=<%=stn%>"><%=stn %>번 학생</a><br>
		<%
		//if((i%10)==0)
			// out.println("<br>"))
			}
		%>
	</body>
</html>