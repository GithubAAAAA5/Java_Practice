<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	// 세션을 이용하지 않은 사람들을 로그인페이지로 이동
	if(session.getAttribute("user_id") == null) { 
		response.sendRedirect("login.jsp");
	}
	String id = (String)session.getAttribute("user_id");
	String pw = (String)session.getAttribute("user_pw");
	String name = (String)session.getAttribute("user_name");
	String phone1 = (String)session.getAttribute("user_phone1");
	String phone2 = (String)session.getAttribute("user_phone2");
	String gender = (String)session.getAttribute("user_gender");
%>    
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>mypage.jsp</title>
	</head>
	<body>
		<h2><%=id %>님 환영합니다.</h2><br>
		<hr>
		<h3>가입 정보</h3>
		<p>ID: <%=id %></p>
		<p>Password: <%=pw %></p>
		<p>Name: <%=name %></p>
		<p>Phone: <%=phone1 %>-<%=phone2 %></p>
		<p>Gender: <%=gender %></p>
		<hr>
		
		
		
		<a href="logout.jsp">로그아웃</a>
		
		<!-- 객체를 불러와서 수정 update.jsp 를 사용해서 수정 값을 보여주고 수정하고 수정완료된 내용을 update ok 로 수정완료후 mypage로 이동 -->
		<a href="modify_ok.jsp">정보수정</a>	
		
		<!-- 정보의 삭제 / 삭제하기 전 보안을 위해 정보를 확인하는 절차를 가짐 -->
		<a href="delete_ok.jsp">회원탈퇴</a>
	</body>
</html>