<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>request_video.jsp</title>
	</head>
	<body>
		<div align="center">
			<table>
				<tr>
					<th>썸네일</th>
					<th>장르</th>
					<th>제목</th>
					<th>등록일</th>
				</tr>
				
				<tr>
					<td>
						<a href="request_video_get.jsp?num=1">
							<img alt="1st video" src="../images/testimg.png" width="50" height="50">
						</a>
					</td>
					<td>교육</td>
					<td>코딩이란 무엇인가?</td>
					<td>24.04.08</td>
				</tr>
				
				<tr>
					<td>
						<a href="request_video_get.jsp?num=2">
							<img alt="2nd video" src="../images/testimg.png" width="50" height="50">
						</a>
					</td>
					<td>여행</td>
					<td>사하라사막 방문</td>
					<td>24.04.08</td>
				</tr>
				
				<tr>
					<td>
						<a href="request_video_get.jsp?num=3">
							<img alt="3rd video" src="../images/testimg.png" width="50" height="50">
						</a>
					</td>
					<td>대회</td>
					<td>T1 VS GENG</td>
					<td>24.04.08</td>
				</tr>
			</table>
		</div>
	
	</body>
</html>