<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core"%>    
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>jstl_choose.jsp</title>
	</head>
	<body>
		<!-- choose는 자식으로 c:when, c:otherwise 를 가질 수 있다. -->
		<c:choose>
			<c:when test="${param.name eq '홍길동' }">
				이름이 홍길동 입니다.
			</c:when>	
			<c:when test="${param.name == '이순신' }">
				이름이 이순신 입니다.
			</c:when>	
			<c:when test="${param.age >= 20 }">
				성인 입니다.
			</c:when>
			<c:otherwise>
				홍길동도, 이순신도 아니고, 성인도 아닙니다.
			</c:otherwise>	
		<!-- 결과창 출력시 위에서부터 차례로 홍길동 이순신 성인 홍,이,성 으로 내려온다 이떄 해당하는 값이 출력되며 입력값이 홍길동 22 이어도 이름이 홍길동인 값만 출력되고 성인의 여부는 출력되지않는다. -->		
		</c:choose>
	</body>
</html>