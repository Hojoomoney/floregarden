<%@page import="com.util.www.MemberDAO"%>
<%@page import="com.util.www.MemberDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>수정</title>
</head>
<body>
		<%
			String uno = request.getParameter("uno");
			String userPwd = request.getParameter("userPwd");
			String userName = request.getParameter("userName");
			String email = request.getParameter("email");
			String telephone = request.getParameter("telephone");
			String address = request.getParameter("address");
			
			MemberDTO dto = new MemberDTO();
			
			dto.setUno(Integer.parseInt(uno));
			dto.setUserPwd(userPwd);
			dto.setUserName(userName);
			dto.setEmail(email);
			dto.setTelephone(telephone);
			dto.setAddress(address);
			MemberDAO dao = new MemberDAO(application);
			int result = dao.modify(dto);
			dao.close();
			if (result == 1) { %>
				<script>alert('수정이 완료 되었습니다. 홈페이지로 이동합니다.'); location.href = '/Floregarden/index.jsp';</script>
			<% } else {
				out.println("<script>alert('수정 실패'); history.back();</script>");
			}
			
		%>
</body>
</html>