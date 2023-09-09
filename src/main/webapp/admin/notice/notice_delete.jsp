<%@page import="com.util.www.NoticeDTO"%>
<%@page import="com.util.www.NoticeDAO"%>
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
		String bno = request.getParameter("bno");
		NoticeDAO dao = new NoticeDAO(application);
		int result = dao.delete(Integer.parseInt(bno));
		
		if (result == 1) { %>
			<script>alert('삭제되었습니다!'); location.href = '/Floregarden/admin/admin.jsp';</script>
		<% }  else { %>
			<script>alert('오류발생'); history.back();</script>
		<% } %>
	
</body>
</html>