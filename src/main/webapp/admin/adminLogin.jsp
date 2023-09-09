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
		String adminId = request.getParameter("adminId");
		String adminPwd = request.getParameter("adminPwd");
		session.setAttribute("adminId", adminId);
		session.setAttribute("adminPwd", adminPwd);
		
		if (adminId.equals("admin") && adminPwd.equals("admin")) {
			response.sendRedirect("admin.jsp");
		} else {
			out.println("<script>alert('아이디 혹은 비밀번호가 일치하지 않습니다!'); history.back(); </script>");
		}
	%>
</body>
</html>