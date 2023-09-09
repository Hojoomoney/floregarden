<%@page import="com.util.www.MemberDAO"%>
<%@page import="java.sql.*"%>
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
		request.setCharacterEncoding("utf-8"); 
		String userId = request.getParameter("userId");
		String userPwd = request.getParameter("userPwd");

		MemberDAO dao = new MemberDAO(application);
		ResultSet rs = dao.login(userId);
		
		if (!rs.next()) {
			out.println("<script>alert('회원정보가 없습니다!'); history.back(); </script>");
		} else if (userId.equals(rs.getString(1)) && userPwd.equals(rs.getString(2))) {
			session.setAttribute("userId", userId);
			session.setAttribute("userPwd", userPwd);
			
			%> <script>location.href = '/Floregarden/index.jsp';</script> <%
		} else {
			out.println("<script>alert('비밀번호가 일치하지 않습니다!'); history.back(); </script>");
		}

	%>
</body>
</html>