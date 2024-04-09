<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 
<%
	// 1. 리스트 2개를 생성(예약 좌석을 저장해두는 리스트)(사본을 저장할 리스트)
	List<String> list = new  ArrayList<>();
	List<String> temp = new  ArrayList<>();
	
	// 2. application 객체에 예약 현황이 있는 경우 원본 리스트를 저장
	if (application.getAttribute("seats") != null) {			// 만약 , 너가 선택한 seats 가 null (비어있지 않다면)
		list = (List<String>)application.getAttribute("seats");
	}
	
	// 3. 앞에서 넘어온 값 처리하기
	String[] arr = request.getParameterValues("seat");
	
	// 4. arr에 저장된 값이 list 에 포함되어 있는지 확인 contains(값)
	for (String s : arr) {
		if(list.contains(s)) {		// 해당 좌석이 예약이 되어 있다면.
			break;					// 중단한다.
		}else {						// 해당 좌석이 예약되지 않은 경우
			temp.add(s);			// add한다.
		}
	}
	
	// 5. arr 길이와 temp 길이 체크, 같다면 중복된 좌석이 없는 경우.  예약 현황 (list) 에 추가한다.
	if (arr.length == temp.size()) {		//	선택값과 저장값을 비교 같다면
		list.addAll(temp);					//	add한다.	
	}
	
	// 6. application에 저장하기
	application.setAttribute("seats", list);
	
	
	
%>
    
    
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>auth_reserve_ok.jsp</title>
	</head>
	<body>
		<div align="center">
			<h2>예약 신청 결과</h2>
			<p>
				<b>선택한 좌석</b>
				
				<% for (String s : arr){ %>
					[<%=s %>]
				<%} %>	
				
				<b>예약 신청 결과</b>
				
				<%= arr.length == temp.size() ? "성공":"실패" %>
				
				<br>
				
				<% if(arr.length != temp.size()) {%>
					이미 예약된 좌석입니다.
					
				<%} %>	
			</p>
		
	
			
			<a href="auth_reserve.jsp">다시 예약하기</a>
		</div>
	</body>
</html>