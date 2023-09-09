<%@page import="com.util.www.FaqDTO"%>
<%@page import="com.util.www.FaqDAO"%>
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
   
						<form action = "faq_writeProc.jsp" method = "post">
							<table border = "1" width = "1000px">
								<tr>
									<th style = "color : black"><input type = "text" name = "title" placeholder = "제목을 입력하세요" style = "width : 90%"></th>
								</tr>
								<tr>
									<td><textarea name = "content" placeholder ="내용을 입력하세요" style = "width : 90%; height : 300px"></textarea></td>
								</tr>
								<tr>
									<td align = "center"><input type = "submit" class= "btn btn-success" value ="작성 완료"></td>
								</tr>
							</table>
						</form>
  </body>
</html>