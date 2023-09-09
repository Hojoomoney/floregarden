<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<c:set var="flowers" value="flowers" />
		<c:set var="bouquet" value="bouquet" />
		<c:set var="basket" value="basket" />
		<c:set var="box" value="box" />
		<c:set var="plants" value="plants" />
		<c:set var="cactus" value="cactus" />
		<c:set var="air" value="air" />
		<c:set var="orchid" value="orchid" />
		<c:set var="special" value="special" />
		<c:set var="mothersday" value="mothersday" />
		<c:set var="gradu" value="gradu" />
		<c:set var="christ" value="christ" />
		<c:set var="etc" value="etc" />
	<aside class="col-md-3 sidebar margin-top-up"
								role="complementary">
								<div class="widget">
									<h3>Categories</h3>

									<ul id="category-widget">
										<li class="open"><a href="<%= request.getContextPath() %>/product/category.pro?category=${ flowers }">FLOWERS <span
												class="category-widget-btn"></span></a>
											<ul>
												<li><a href="<%= request.getContextPath() %>/product/category.pro?category=${ bouquet }">꽃다발</a></li>
												<li><a href="<%= request.getContextPath() %>/product/category.pro?category=${ basket }">꽃바구니</a></li>
												<li><a href="<%= request.getContextPath() %>/product/category.pro?category=${ box }">플라워 박스</a></li>
											</ul></li>
										<li class="open"><a href="<%= request.getContextPath() %>/product/category.pro?category=${ plants }">PLANTS <span class="category-widget-btn"></span></a>
											<ul>
												<li><a href="<%= request.getContextPath() %>/product/category.pro?category=${ cactus }">다육이/선인장</a></li>
												<li><a href="<%= request.getContextPath() %>/product/category.pro?category=${ air }">공기정화식물</a></li>
												<li><a href="<%= request.getContextPath() %>/product/category.pro?category=${ orchid }">서양난/동양난</a></li>
											</ul></li>
										<li class="open"><a href="<%= request.getContextPath() %>/product/category.pro?category=${ special }">SPECIAL DAY <span
												class="category-widget-btn"></span></a>
											<ul>
												<li><a href="<%= request.getContextPath() %>/product/category.pro?category=${ mothersday }">어버이날/스승의날</a></li>
												<li><a href="<%= request.getContextPath() %>/product/category.pro?category=${ gradu }">졸업/입학</a></li>
												<li><a href="<%= request.getContextPath() %>/product/category.pro?category=${ christ }">크리스마스</a></li>
											</ul></li>
										<li><a href="<%= request.getContextPath() %>/product/category.pro?category=${ etc }">화병/소품</a>
											
											
									</ul>
								</div>
								<!-- End .widget -->
							</aside>
</body>
</html>