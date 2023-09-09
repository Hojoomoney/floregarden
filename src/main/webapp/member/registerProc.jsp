<%@page import="com.util.www.MemberDAO"%>
<%@page import="com.util.www.MemberDTO"%>
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

	<% 	request.setCharacterEncoding("utf-8"); 
		String userId = request.getParameter("userId");
		String userPwd = request.getParameter("userPwd");
		String userName = request.getParameter("userName");
		String email = request.getParameter("email");
		String telephone = request.getParameter("telephone");
		String address = request.getParameter("address");
		MemberDTO dto = new MemberDTO();
		dto.setUserId(userId);
		dto.setUserPwd(userPwd);
		dto.setUserName(userName);
		dto.setEmail(email);
		dto.setTelephone(telephone);
		dto.setAddress(address);
		MemberDAO dao = new MemberDAO(application);
		int result = dao.insert(dto);
		dao.close();
		
		if(result == 1) { %>
			<script>alert('회원가입이 완료되었습니다.'); location.href = '/Floregarden/member/login.jsp';</script>
		 <% }  else {%>
			<script>alert('회원가입에 실패했습니다.'); history.back();</script>
		<% } 
		
	%>
		
</body>
</html>