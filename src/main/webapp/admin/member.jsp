<%@page import="com.util.www.MemberDAO"%>
<%@page import="com.util.www.MemberDTO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html>
  <head>
    <title>플로어가든 관리자</title>
    <meta charset="utf-8">
    <meta name="robots" content="noindex">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.5">
    <link rel="stylesheet" href='/Floregarden/admin/admin.css'>
    <link rel="stylesheet" href="/Floregarden/css/style.css">
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



		<jsp:include page="/admin/sidebar.jsp" />

    <!-- (B) MAIN -->
    <% 
			ArrayList<MemberDTO> list = new ArrayList<MemberDTO>();
			MemberDAO dao = new MemberDAO(application);
			dao.getList(list);
			dao.close();
		%>
    <main id="pgmain">
    		<%	if(session.getAttribute("adminId") != null) { %>
    		<div style="width: 100%; margin: 0 auto;">
      				<form>
					<table style="width: 100%;">
						<tr>
							<th>번호</th>
							<th>아이디</th>
							<th>비밀번호</th>
							<th>이름</th>
							<th>이메일</th>
							<th>전화번호</th>
							<th>주소</th>
							<th>가입일</th>
						</tr>
					<% for(MemberDTO dto : list) { %>
						<tr>
							<td><a href = "/Floregarden/admin/member/member_read.jsp?uno=<%= dto.getUno() %>"><%= dto.getUno() %></a></td>
							<td><a href = "/Floregarden/admin/member/member_read.jsp?uno=<%= dto.getUno() %>"><%= dto.getUserId() %></a></td>
							<td><%= dto.getUserPwd() %></td>
							<td><%= dto.getUserName() %></td>
							<td><%= dto.getEmail() %></td>
							<td><%= dto.getTelephone() %></td>
							<td><%= dto.getAddress() %></td>
							<td><%= dto.getRegDate() %></td>
						</tr>
					<% } %>	

					</table>
					</form>
				</div>	
      	<% } %>
      
    </main>
  </body>
</html>