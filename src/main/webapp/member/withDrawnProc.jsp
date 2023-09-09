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
		String userId = (String) session.getAttribute("userId");
		String userPwd = (String) session.getAttribute("userPwd");		
		MemberDAO dao = new MemberDAO(application);
		
		if (userPwd.equals(request.getParameter("userPwd"))) {
			
			int result = dao.delete(userId);
			dao.close();
			if (result == 1) { 
				session.removeAttribute("userId");	
				session.removeAttribute("userPwd");	
			%>
				<script>alert('탈퇴가 정상적으로 처리되었습니다.'); location.href = '/Floregarden/index.jsp';</script>
			<% } else {
				out.println("<script>alert('다시 시도해주세요'); history.back(); </script>");
			}
			
		} else {
			out.println("<script>alert('비밀번호 일치하지 않습니다!'); history.back(); </script>");
		}
		
		
		
	%>
</body>
</html>