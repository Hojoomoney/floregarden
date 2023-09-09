<%@page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<title>플로어가든 관리자</title>
<meta charset="utf-8">

<meta name="robots" content="noindex">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.5">
<link rel="stylesheet" href='/Floregarden/admin/admin.css'>
</head>


<body>


	<jsp:include page="/admin/sidebar.jsp" />

	<!-- (B) MAIN -->

	<main id="pgmain">
		<form action="<%= request.getContextPath() %>/product/insert.pro"
			method="post" enctype="multipart/form-data">
			<table width="100%">
				<tr>
					<th>개 요</th>
					<th>내 역</th>
				</tr>
				<tr>
					<td width="200px">상품명</td>
					<td align="left"><input type="text" name="pName"
						placeholder="상품 이름" size="40"></td>
				</tr>

				<tr>

					<td>개요</td>
					<td><textarea name="description"
							style="width: 100%; height: 150px;"></textarea></td>
				</tr>
				<tr>
					<td>상세설명</td>
					<td><textarea name="description2"
							style="width: 100%; height: 400px;"></textarea></td>
				</tr>
				<tr>
					<td>썸네일(270*340)  </td>
					<td><input type="file" name="fileName"></td>

				</tr>
				<tr>
					<td>대표이미지1(670*844)  </td>
					<td><input type="file" name="fileName2"></td>
				</tr>
				<tr>

					<td>대표이미지2(670*844) </td>
					<td><input type="file" name="fileName3"></td>
				</tr>
				<tr>
					<td>상세설명 이미지(850*) </td>
					<td><input type="file" name="fileName4"></td>
				</tr>

				<tr>
					<td>상품번호</td>
					<td><input type="text" name="pno" size="40"></td>
				</tr>
				<tr>
					<td>SKU :</td>
					<td><input type="text" name="sku" size="40"></td>
				</tr>
				<tr>
					<td>가격</td>
					<td><input type="text" name="price" size="40"></td>
				</tr>
				<tr>
					<td>재고수량</td>
					<td><input type="text" name="stock" size="40"></td>
				</tr>
				<tr>
					<td>무게</td>
					<td><input type="text" name="weight" size="40"></td>
				</tr>
				<tr>
					<td>크기</td>
					<td><input type="text" name="dimensions" size="40"></td>
				</tr>
				<tr>
					<td>배송비</td>
					<td><input type="text" name="shipping_price" size="40"></td>
				</tr>
				<tr>
					<td>카테고리</td>
					<td><select name="category" id="category">
							<option value="Flowers_">Flowers</option>
							<option value="Flowers_Bouquet">--꽃다발</option>
							<option value="Flowers_Basket">--꽃바구니</option>
							<option value="Flowers_Box">--플라워 박스</option>
							<option value="Plants_">Plants</option>
							<option value="Plants_Cactus">--다육이/선인장</option>
							<option value="Plants_Air">--공기정화식물</option>
							<option value="Plants_Orchid">--서양난/동양난</option>
							<option value="Special_Day_">Special Day</option>
							<option value="Special_Day_mothersday">--어버이날/스승의날</option>
							<option value="Special_Day_gradu">--졸업/입학</option>
							<option value="Special_Day_christ">--크리스마스</option>
							<option value="etc">화병/소품</option>
					</select></td>
				</tr>
			</table>
			<input type="submit" class="button-blue" value="제품 등록">
		</form>
	</main>


</body>
</html>