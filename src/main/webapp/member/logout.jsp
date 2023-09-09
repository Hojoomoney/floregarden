<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		session.removeAttribute("userId");	
		session.removeAttribute("userPwd");	
	%>
	
	<script>alert('로그아웃 되었습니다. 홈페이지로 이동합니다.'); location.href = '/Floregarden/index.jsp';</script>
</body>
</html>