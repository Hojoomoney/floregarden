<%@page import="com.util.www.MemberDAO"%>
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
			String userId = request.getParameter("userId");
			MemberDAO dao = new MemberDAO(application);
			int result = dao.delete(userId);
			
			if (result == 1) { %>
			<script>alert('탈퇴가 정상적으로 처리되었습니다.'); location.href = '/Floregarden/admin/member/member.jsp';</script>
			<% } else {
				out.println("<script>alert('다시 시도해주세요'); history.back(); </script>");
			}
			%>
</body>
</html>