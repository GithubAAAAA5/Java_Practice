<%@page import="com.jdbc.domain.UserVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	
	// 아이디는 세션을 통해서
	String id = (String)session.getAttribute("user_id");

	UserVO vo = (UserVO)request.getAttribute("vo");
	
%>    
    
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>join.jsp</title>
	</head>
	<body>
		<h2>회원 정보 수정 연습</h2>
		<form action="UpdateOk" method="post">
		
			ID : <input type="text" name="id" size="10" value="<%=id %>" readonly><br>		<!-- readonly 말그대로 읽기만 가능하다 수정불가능 -->
			PW : <input type="password" name="pw" size="10" disabled><br>  <!-- disabled 사라짐 -->
			이름 : <input type="text" name="name" size="10" value="<%=vo.getName() %>"><br>
			
			<select name="phone1">
				<option <%=vo.getPhone1().equals("010") ? "selected" : "" %> >010</option>
				<option <%=vo.getPhone1().equals("010") ? "selected" : "" %> >011</option>
				<option <%=vo.getPhone1().equals("010") ? "selected" : "" %> >018</option>
			</select>
			
			-<input type="text" name="phone2" value="<%=vo.getPhone2() %> "><br>
			
			<%if (vo.getGender() == null || vo.getGender().equals("m")) {%>
			<input type="radio" name="gender" value="m"checked>남자
			<input type="radio" name="gender" value="w">여자
			<%}else{ %>
			<input type="radio" name="gender" value="m" >남자
			<input type="radio" name="gender" value="w" checked>여자
			<%} %>
			<br>
			
			<input type="submit" value="가입">
		
		</form>
		
	</body>
</html>