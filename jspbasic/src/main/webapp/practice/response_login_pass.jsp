<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	
	if (id.equals("AAAAA5")) {
		if (pw.equals("testpw")){
			response.sendRedirect("response_login_success.jsp");
		} else {
			response.sendRedirect("response_pw_fail.jsp");
		}
	} else {
		response.sendRedirect("response_id_fail.jsp");
	}
%>    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>response_login_pass</title>
</head>
<body>

</body>
</html>