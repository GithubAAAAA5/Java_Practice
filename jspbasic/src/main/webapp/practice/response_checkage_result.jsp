<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	String age = request.getParameter("age");
	int result = Integer.parseInt(age);
	
	if(result >= 20) {
		response.sendRedirect("response_checkage_pass.jsp");
	} else {
		response.sendRedirect("response_checkage_fail.jsp");
	}
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>response_checkage_result.jsp</title>
</head>
<body>

</body>
</html>