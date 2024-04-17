<%@page import="com.myweb.util.PageVO"%>
<%@page import="com.myweb.board.model.BoardVO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%
	ArrayList<BoardVO> list = (ArrayList<BoardVO>)request.getAttribute("list");
	
%>    
    
<!DOCTYPE html>
<html>
	<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-idth, initial-scale=1">
   

    <title>Welcome to MyWorld</title>

    <!-- Bootstrap Core CSS -->
    <link href="../css/bootstrap.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="../css/business-casual.css" rel="stylesheet">

    <!-- Fonts -->
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Josefin+Slab:100,300,400,600,700,100italic,300italic,400italic,600italic,700italic" rel="stylesheet" type="text/css">
	
	 <!-- jQuery -->
    <script src="../js/jquery.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="../js/bootstrap.min.js"></script>

</head>
<body>

	<!-- include/header.jsp 포함되는곳 -->
	<%@ include file="../include/header.jsp" %>
    
	<div class="container">
	
		<div align="center">
		<h3>MyWeb 게시판</h3>
		</div>
		
		<table class="table table-bordered">
		
			<thead>
			
				<tr>	
					<th>글 번호</th>
					<th>작성자</th>
					<th>제목</th>
					<th>날짜</th>
					<th>조회수</th>
				</tr>
				
			</thead>

			<tbody>
			
				<c:forEach var="vo" items="${list }">
				<%--for(BoardVO vo : list) { --%>
				
				<tr>
					<td>${vo.num}<%--=vo.getNum() --%></td>
					<td>${vo.writer}<%--=vo.getWriter() --%></td>
					
					<td>
						<a href="content.board?num=${vo.num}&pageNum=${pageVO.pageNum}">${vo.title}</a><%--=vo.getNum() %>"><%=vo.getTitle() --%>
													<!-- 페이지 값을 유지한다..... -->				
					</td>
					
					<td>${vo.regdate}<%--=vo.getRegdate() --%></td>
					<td>${vo.hit}<%--=vo.getHit() --%></td>
				</tr>
				
				</c:forEach>
				<%-- } --%>
				
			</tbody>
			
		</table>
		
		<%-- PageVO pageVO = (PageVO)request.getAttribute("pageVO"); --%>
		
		<div align="center">
			<ul class="pagination pagination-sm">
			
				<!-- 2. 이전 버튼 활성화 여부 -->
				<c:if test="${pageVO.prev }">
				<li><a href="list.board?pageNum=${pageVO.startPage - 1 }">이전</a></li>
				</c:if>
				
				<!-- 1. 페이징 번호 처리... --> <!-- 현 지식으로 따라갈수없음 추가 공부 -->
				<c:forEach var="num" begin="${pageVO.startPage }" end="${pageVO.endPage}">
				<%-- for(int i = pageVO.getStartPage(); i <= pageVO.getEndPage(); i++){ --%>
				
				
				<li class="${num == pageVO.pageNum ? 'active':'' }">	
					<a href="list.board?pageNum=${num}">${num}</a> <%--=i %>"><%=i --%>
				</li>	
				
				</c:forEach>				
				<%--} --%>
				
				<!-- 2. 다음 버튼 활성화 여부 -->
				<c:if test="${pageVO.next }">
				<li><a href="list.board?pageNum=${pageVO.endPage + 1 }">다음</a></li>
				</c:if>
				
			</ul>
		</div>
	</div>

    <!-- footer 영역 -->
  	<%@ include file="../include/footer.jsp" %>
  	
	
</body>
</html>