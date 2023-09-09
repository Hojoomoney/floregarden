<%@page import="com.util.www.FaqDTO"%>
<%@page import="com.util.www.FaqDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
    <meta name="robots" content="noindex">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.5">
    <link rel="stylesheet" href='/Floregarden/admin/admin.css'>
    <link rel="stylesheet" href="/Floregarden/css/style.css">
<title>Insert title here</title>
</head>
  <style>
  	button.login {
  		width : 100px;
  		height : 50px;
  		background: greenyellow;
  		color : black;
  		display: block;
  		margin: auto;
  	}
  	button.logout {
  		width : 100px;
  		height : 50px;
  		background: orangered;
  		color : black;
  		display: block;
  		margin: auto;
  	}
  </style>
<body>
		<%
		String faqno = request.getParameter("faqno");
				String title = request.getParameter("title");
				String content = request.getParameter("content");
				
				FaqDTO dto = new FaqDTO();
				dto.setContent(content);
				dto.setTitle(title);
				dto.setFaqno(Integer.parseInt(faqno));
				
				FaqDAO dao = new FaqDAO(application);
				
				int result = dao.modify(dto);
				
				if(result == 1) {
		%>
			<script>alert('수정이 완료 되었습니다!'); location.href = '/Floregarden/admin/faq.jsp';</script>
		<% } else { %>
		<script>alert('수정실패!!'); history.back();</script>
	<% } %>
</body>
</html>