<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>path_quiz</title>
	</head>
	<body>
		<!-- a 태그를 이용하여 경로 이동 -->
		<!--  ../../../  상위 폴더로 이동하는것을 의미한다.  -->
		<!-- 1. jspbasic 폴더 03.expression.jsp 파일로 접근 / 상대&절대 경로로 접근하기 -->
		<a href="../../jspbasic/03.expression.jsp">03.expression.jsp 파일로 상대 경로</a>
		<a href="/jspbasic/jspbasic/03.expression.jsp">03.expression.jsp 파일로 절대 경로</a>
		<br>
		
		<!-- 2. TestServlet 서블릿 페이지로 상대/절대 경로로 접근하기 -->
		<a href="../../TestServlet">서블릿으로 상대 경로 접근</a>
		<a href="/jspbasic/TestServlet">서블릿으로 절대 경로 접근</a>
		<br>
		
		<!-- 3. images 폴더에 있는 이미지 파일에 상대 경로로 접근하기 -->
		<img src="../../../HTML/images/Predator.png" width="100">
		<br>
		<img src="/HTML/images/Predator.png" width="500">
		<br>
	</body>
</html>