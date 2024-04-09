<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<% 
	// 쿠키 배열 가져오기
	Cookie[] cookies = request.getCookies();

	// 쿠키에 저장된 날짜를 저장할 변수 선언
	String date = null;
	
	// 쿠키 배열이 null이 아닌 경우 반복문을 실행한다.
	if(cookies != null)	{
		
		for(int i = 0; i < cookies.length; i++) { 
			
			// 쿠키의 이름이 show 인 경우 해당하는 값을  date 에 저장한다.
			if(cookies[i].getName().equals("show")) {
				
				date = cookies[i].getValue();
			}
		}
	}

%>    


    
    
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>cookie02_practice.jsp</title>
	</head>
	<body>
	
		<!-- date 변수가 null 인 경우에는 쿠키값이 존재하지 않음을 표시한다. -->
		
		<% if(date == null) { %>
		
		쿠키값이 존재하지 않습니다.
		
		<% }else{ %>
		
		마지막 접속 날짜 : <%=date %>
		
		<%} %>
	</body>
</html>