<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>10번째 방문자 체크</title>
</head>
<body>
    <%-- 세션에 방문자 수를 추적하기 위해 방문자 수를 1씩 증가시킴 --%>
    <% 
        // 세션을 얻어옴
        HttpSession hs = request.getSession();
        
        // 방문자 수를 세션에 저장하고, 처음 방문 시 방문자 수를 1로 초기화
        Integer visitorCount = (Integer) hs.getAttribute("visitorCount");
        if (visitorCount == null) {
            visitorCount = 1;
        } else {
            visitorCount++;
        }
        hs.setAttribute("visitorCount", visitorCount);
    %>
    
    <%-- 10번째 방문자인 경우 "당첨되셨습니다" 출력 --%>
    <% if (visitorCount%10==0) { %>
        <p>당첨되셨습니다!</p>
        
	<a href = "https://www.youtube.com/watch?v=y8iV3CW_E6w"> 당첨 </a>
    <% } else { %>  
    	<p> 방문자수 : <%=visitorCount %> </p>
      <% } %>
</body>
</html>