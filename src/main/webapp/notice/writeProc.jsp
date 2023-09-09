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
			String title = request.getParameter("title");
			String content = request.getParameter("content");
			NoticeDTO dto = new NoticeDTO();
			dto.setTitle(title);
			dto.setContent(content);
			
			NoticeDAO dao = new NoticeDAO(application);
			int result = dao.insert(dto);
			dao.close();
			
			if(result == 1) { %>
				<script>alert('작성된 글이 성공적으로 게시되었습니다'); location.href = 'notice.jsp';</script>
			<% } else { %>
				<script>alert('글쓰기에 실패하였습니다.'); history.back();</script>			
			<% }
		%>
</body>
</html>