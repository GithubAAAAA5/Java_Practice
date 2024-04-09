<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
	</head>
	<body>
		<%--
		액션 태그 : jsp 안에서 특정 동작을 지시하는 태그이다.
		액션 태그는 여는 태그가 있고 닫는 태그가 존재한다.
		추가적으로 종속된 태그가 없다면 끝부분을 "/>"로 닫기 처리한다.
		
		<jsp:forward = page""/>
		
		
		 --%>
	
		<jsp:horwaard page="forward_ex02.jsp" />
		
	</body>
</html>