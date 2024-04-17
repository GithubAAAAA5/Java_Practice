<%@page import="com.myweb.board.model.BoardVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
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
	
		<%@ include file="../include/header.jsp" %>
		
		
		<section>
			<div align="center">
			
				<%-- BoardVO vo = (BoardVO)request.getAttribute("vo"); --%>
			
				<form name="regform" action="update.board?pageNum=${param.pageNum }" method="post">
					<h2>게시판 글 수정 페이지</h2>
					<hr>
					<table border="1" style="width:500px">
						<tr>
							<td>글번호</td>
							<td><input type="text" name="num" value="${vo.num}"<%--=vo.getNum() --%> readonly></td>
						</tr>
						<tr>
							<td>작성자</td>
							<td><input type="text" name="writer" value="${vo.writer}"<%--=vo.getWriter() --%> readonly></td>
						</tr>
						<tr>
							<td>글제목</td>
							<td><input type="text" name="title" value="${vo.title}"<%--=vo.getTitle() --%>></td>
						</tr>
						<tr>
							<td>글내용</td>
							<td><textarea name="content" rows="10" style="width:100%">${vo.content}<%--=vo.getContent() --%></textarea></td>
						</tr>
						<tr>
							<td colspan="2" align="center">
								<input type="button" value="수정하기" onclick="modifyCheck()">
								<input type="button" value="목록" onclick="location.href='list.board?pageNum=${param.pageNum }'">
								<input type="button" value="삭제하기" onclick="location.href='delete.board?num=${vo.num}'"><%--=vo.getNum() --%><!-- 삭제하려면 게시글 번호가 잇어야 하니까 getnum으로 넘겨주는거 -->
							</td>
						</tr>
						</table>
				</form>
			</div>
		</section>
		
		    <%@include file="../include/footer.jsp" %>
		
		
			<script type="text/javascript">
			function modifyCheck() {
				// 글제목에 공백 확인, 공백이 아니라면 submit() 처리

				if(document.regform.title.value == "") {
					alert("제목을 입력하세요");
					return;
				} else if(confirm("게시글을 수정하시겠습니까?")) {
					document.regform.submit();
				}
			}
		</script>
	</body>
</html>