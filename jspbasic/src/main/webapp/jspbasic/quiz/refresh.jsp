<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Page Refresh Counter</title>
</head>
<body>
    <%-- 선언: 페이지를 새로고침할 때마다 증가할 변수 선언 --%>
    <%!
        int refreshCount = 0;
    %>
    
    <%-- 스크립트릿: 페이지를 새로고침할 때마다 변수를 1씩 증가시키고 출력 --%>
    <% 
        refreshCount++; // 변수를 1씩 증가
    %>
    
    <h1>Page Refresh Counter</h1>
    <p>페이지를 새로고침할 때마다 숫자가 1씩 증가합니다.</p>
    <p>현재 새로고침 횟수: <%= refreshCount %></p>
</body>
</html>