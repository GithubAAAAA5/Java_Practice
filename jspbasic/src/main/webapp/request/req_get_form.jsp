<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>req_get_form.jsp</title>
	</head>
	<body>
		<form action="req_get_parameter.jsp">
			<!--  action 속성은 form 데이터를 전달할 에플리케이션을 지정한다.  -->
	
			아이디 : <input type="text" size="10" name="id"><br> 비밀번호 :
			<input type="password" size="10" name="pw"><br>
			<hr>
	
			관심분야 : <input type="checkbox" name="intro" value="자바">자바 <input
				type="checkbox" name="intro" value="JSP">JSP <input
				type="checkbox" name="intro" value="DataBase">DataBase
			<hr>
	
			전공 : <input type="radio" name="major" value="컴공">컴공 <input
				type="radio" name="major" value="디자인">디자인 <input type="radio"
				name="major" value="경영">경영
			<hr>
	
			통신사 : <select name="phone">
				<option>SKT</option>
				<option>LGU+</option>
				<option>KT</option>
			</select>
			<hr>
	
			이름 : <input type="text" size="10" name="name"> <br>
			<hr>
			주소 : <input type="text" size="50" name="address"> <br>
			<hr>
			<br> <input type="submit" value="가입"> <br>
	
		</form>
	</body>
</html>
