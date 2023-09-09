<%@page import="com.util.www.FaqDTO"%>
<%@page import="com.util.www.FaqDAO"%>
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
		String faqno = request.getParameter("faqno");
		FaqDAO dao = new FaqDAO(application);
		int result = dao.delete(Integer.parseInt(faqno));
		
		if (result == 1) { %>
			<script>alert('삭제되었습니다!'); location.href = '/Floregarden/admin/faq.jsp';</script>
		<% }  else { %>
			<script>alert('오류발생'); history.back();</script>
		<% } %>
	
</body>
</html>