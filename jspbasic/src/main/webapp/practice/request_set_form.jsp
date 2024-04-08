<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- 
	   button
       text
       password
       checkbox : 여러값을 선택가능
       radio : 동일한 이름을 가진것들 중에서 하나만 선택가능
       submit : form에서 기술한 내용을 웹서버로 전송
       reset : form에서 기술한 내용을 초기값으로 변경
       hidden : 화면에 안보이는 값을 웹서버에 전달
       file : 파일 선택창 나타남
 -->    
    
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>request_set_form.jsp</title>
	</head>
	<body>
		<form action="request_get_form.jsp">
			아이디 : 	<input type="text" name="id"><br>
			<hr>
			비밀번호 :	<input type="password" name="pw"><br>
			<hr>
			이름 : 	<input type="text" name="name"><br>
			<hr>
			성별 : 	<input type="radio" name="gender" value="남">남
					<input type="radio" name="gender" value="여">여<br>
					<hr>
			나이 : 	<input type="text" name="age"><br>
			<hr>
			주소 : 	<input type="text" name="address"><br>
			<hr>
			전공 : 	<input type="radio" name="major" value="사회학">사회학
					<input type="radio" name="major" value="인문학">인문학
					<input type="radio" name="major" value="이공계">이공계<br>
			<hr>
			취미 : 	<input type="checkbox" name="interest" value="독서">독서
					<input type="checkbox" name="interest" value="음악감상">음악감상
					<input type="checkbox" name="interest" value="운동">운동
					<input type="checkbox" name="interest" value="맛집탐방">맛집탐방
					<input type="checkbox" name="interest" value="여행">여행<br>
			
			<hr>
			전화번호 : <input type="text" name="phnum"><br>
			<hr>
			<input type="submit" value="입력"><br>
		</form>
	</body>
</html>