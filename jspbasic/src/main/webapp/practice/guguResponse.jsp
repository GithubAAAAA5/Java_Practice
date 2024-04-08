<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//a태그로 데이터 받기
	int dan = Integer.parseInt(request.getParameter("dan"));
%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>guguResponse.jsp</title>
	</head>
	<body>
	<h1><%=dan%>단</h1>
		<table>
		<%
			for(int i=1; i<=9; i++){  // 2*1, 2*2, ...
		%>
			<tr>
				<td><%=dan%> * <%=i%> = <%=dan*i%></td>
			</tr>
		<%
			}
		%>		
		</table>
	</body>
</html>