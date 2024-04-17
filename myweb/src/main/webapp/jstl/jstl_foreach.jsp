<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>jstl_foreach.jsp</title>
	</head>
	<body>
	
	<%-- 
		<%
			// 1 ~ 100 까지 합
			int sum = 0;
			for (int i = 1; i <= 100; i++ ) {
				sum += i;
			}
		%>
		결과 : <%=sum %>
	--%>	
		
	<!-- jstl의 변수 선언 : <c:set> -->	
	<c:set var="sum" value="0" />
	
	<c:forEach var="i" begin="1" end="100" step="1">
		<c:set var="sum" value="${sum + i }" />
	</c:forEach>
	결과 : ${sum }
	<!-- 변수 출력 -->
	결과 : <c:out value="${sum }" />
	
	</body>
</html>