<%@page import="com.util.www.FaqDAO"%>
<%@page import="com.util.www.FaqDTO"%>
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
				FaqDAO dao = new FaqDAO(application);
				FaqDTO dto = dao.read(Integer.parseInt(faqno));
				dao.close();
		%>
		<jsp:include page="/admin/sidebar.jsp" />
	<main id="pgmain">
					
					<h3>수정하기</h3>
						<hr>
						<form action = "faq_modifyProc.jsp" method = "post">
							<input type="hidden" name="faqno" value="<%= dto.getFaqno() %>">
							<table border = "1" width = "100%">
								<tr>
									<th style = "color : black"><input type = "text" name = "title" value = "<%= dto.getTitle() %>" style = "width : 90%"></th>
								</tr>
								<tr>
									<td><textarea name = "content" style = "width : 90%; height : 300px"><%= dto.getContent() %></textarea></td>
								</tr>
								<tr>
									<td align = "center"><input type = "submit" value ="작성 완료"></td>
								</tr>
							</table>
						</form>
	</main>
</body>
</html>