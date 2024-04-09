<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
 <%

	/* checkID 쿠키를 찾아서 checkID 쿠키가 있다면 해당값을 얻어 id 안에 미리 값을 가지게 작성하는 코드*/
	Cookie[] cooks = request.getCookies(); // 현재 요청에 대한 모든 쿠키를 가져와 배열에 저장.
	String id = ""; // 쿠키에서 checkID라는 이름을 가진 쿠키의 값을 저장할 변수를 선언하고 초기화한다. 비어있는 이유는 쿠키의 값이 없을 경우를 대비함이다.
	
	if (cooks != null) {									// 쿠키 배열이 null이 아닌지 확인하고 null이면 쿠키가 전송되지 않은것임.
		
		for (int i = 0; i < cooks.length; i++) {	//쿠키 배열 반복
			
			if (cooks[i].getName().equals("checkID")) {	// 현재 반복중인 배열중 checkID 를 확인하고  확인 되는 경우 
				
				id = cooks[i].getValue();	// id 변수에 저장한다.
				
				// checkId 를 확인해 > 어 선택했네? 그럼 지금 입력한 값을 저장해 다음에 다시 불러와 인것같다
			}
		}
	}

%>    
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>cookie_login_p.jsp</title>
	</head>
	<body>
		<h2>쿠키 사용 하기</h2>
		
		<form action="cookie_login_pass.jsp" method="post">
		
			아이디 :	<input type="text" name="id" value="<%=id %>"><br>
			
			비밀번호 :	<input type="password" name="pw"><br>
			
			<input type="submit" value="로그인">
			<input type="checkbox" name="checkid" value="y">아이디 기억하기
			
		</form>
	</body>
</html>