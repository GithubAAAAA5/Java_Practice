<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   
<%

	request.setCharacterEncoding("utf-8");

	String name = request.getParameter("name");
	double height = Double.parseDouble(request.getParameter("height"));
	double weight = Double.parseDouble(request.getParameter("weight"));

	// BMI 공식 => kg / (cm/100 * cm/100)
	double BMI = weight / (height/100*height/100);
	
	//소수점 2자리 까지만 구하기
	BMI = (int)(BMI*100) / 100.0;

%>  

<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>req_quiz01_result</title>
	</head>
	<body>
	
		이름 :	<%=name %><br>
		신장 :	<%=height %><br>
		몸무게 :	<%=weight %><br>
		BMI :	<%=BMI %><br>
      
      	<%
      	if (BMI > 25) {
      	%>
      	과체중입니다.
      	
      	<%
      	}else if(BMI < 18) {
      	%>
      	저체중입니다.
      	
      	<%
      	}else {
      	%>
      	정상입니다.
      	
      	<%
      	}
      	%>
      
	</body>
</html>