
<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Random"%>
<%@page import="java.util.HashMap"%>
<%@page import="java.util.Map"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<% 
	List<String> list = new ArrayList<>();
	
	list.add("홍길동");
	list.add("홍길순");
	
	Map<Integer, String> map = new HashMap<>();
	map.put(1, "홍길동");
	map.put(2, "홍길순");
	
	Random ran = new Random();
	int num = ran.nextInt(10);   // 0~9 사이의 랜덤 수
			
	Date date = new Date();
	
	SimpleDateFormat sdft = new SimpleDateFormat();
	String now = sdft.format(date);

%>    
    
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>05.directive</title>
	</head>
	<body>
		리스트의 크기 : <%=list.size() %> <br>
		리스트의 형태 : <%=list.toString() %><br>
		
		맵의 크기 : <%=map.size() %><br>
		맵의 형태 : <%=map.toString() %><br>
	
		랜덤 값 : <%=num %><br>
		날짜 : <%=now %><br>
	</body>
</html>