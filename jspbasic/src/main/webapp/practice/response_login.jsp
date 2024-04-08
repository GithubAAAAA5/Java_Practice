<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>response_login.jsp</title>
		<style type="text/css">
			.wrap {
				width:257px;
				margin:0 auto;
				text-align:center;
			}
			
			.button {
				width:60px;
				height:50px;
				background-color:fuchsia;
			}
			
			table {
				border-collapse:collapse;
				border:3px solid black;
			}
		</style>
	</head>
	<body>
		<div class="wrap">
		<h2>로그인 화면</h2>
		<hr>
		<form action="response_login_pass.jsp" method="post">
			<table>
				<tr>
					<td><input type="text" name="id" placeholder="아이디"></td>
					<td rowspan="2"><input type="submit" value="로그인" class="button"></td>
				</tr>
				
				<tr>
					<td><input type="password" name="pw" placeholder="비밀번호"></td>
				</tr>
			</table>
		</form>
		</div>
	</body>
</html>