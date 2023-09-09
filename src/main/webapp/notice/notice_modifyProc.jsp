<%@page import="com.util.www.NoticeDAO"%>
<%@page import="com.util.www.NoticeDTO"%>
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
		String title = request.getParameter("title");
		String content = request.getParameter("content");
		
		NoticeDTO dto = new NoticeDTO();
		dto.setContent(content);
		dto.setTitle(title);
		dto.setBno(Integer.parseInt(bno));
		
		NoticeDAO dao = new NoticeDAO(application);
		
		int result = dao.modify(dto);
		
		if(result == 1) { %>
			<script>alert('수정이 완료 되었습니다!'); location.href = 'notice.jsp';</script>
		<% } else { %>
		<script>alert('수정실패!!'); history.back();</script>
	<% } %>
</body>
</html>