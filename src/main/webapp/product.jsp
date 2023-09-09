<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>

<html>
<head>
<meta charset="utf-8">
        <title>상품 설명</title>
        <meta name="description" content="Granada is a premium, responsive and bootstrap based ecommerce template">

        <!--[if IE]> <meta http-equiv="X-UA-Compatible" content="IE=edge"> <![endif]-->
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        
        <link rel="stylesheet" href="/Floregarden/css/bootstrap.min.css">
        <link rel="stylesheet" href="/Floregarden/css/style.css">
        <link rel="stylesheet" href="/Floregarden/css/responsive.css">
        
        <!-- Favicon and Apple Icons -->
        <link rel="icon" type="image/png" href="/Floregarden/images/icons/icon.png">
        <link rel="apple-touch-icon" sizes="57x57" href="/Floregarden/images/icons/apple-icon-57x57.png">
        <link rel="apple-touch-icon" sizes="72x72" href="/Floregarden/images/icons/apple-icon-72x72.png">

        <!--- jQuery -->
        <script src="//ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
        <script>window.jQuery || document.write('<script src="/Floregarden/js/jquery-2.1.1.min.js"><\/script>')</script>
</head>
<body>
<div id="wrapper">
	<jsp:include page="/header.jsp"/>
	
	<section id="content" role="main">
            <div id="product-single-container" class="light">
                <div class="breadcrumb-container absolute">
                    <div class="container">
                        <div class="row">
                            <div class="col-sm-12">
                            </div><!-- End .col-md-12 -->
                        </div><!-- End .row -->
                    </div><!-- End .container -->
                </div><!-- End .breadcrumb-container -->
                
                <div class="sidebg left"></div><!-- End .sidebg.left -->
                <div class="sidebg middle visible-sm"></div><!-- End .sidebg.middle -->
                <div class="sidebg right"></div><!-- End .sidebg.right -->

                <div class="carousel-container">
                    <div class="container">
                        <div class="row">
                            <div class="col-sm-6">
                                <div class="product-single-carousel">
                                    <div class="slide"><img src="<%= request.getContextPath() %>/upload/${ detail.fileName2 }" alt="product 1" class="img-responsive"></div><!-- End .slide -->
                                    <div class="slide"><img src="<%= request.getContextPath() %>/upload/${ detail.fileName3 }" class="img-responsive"></div><!-- End .slide -->
                                    <div class="slide"><img src="<%= request.getContextPath() %>/upload/${ detail.fileName2 }" class="img-responsive"></div><!-- End .slide -->
                                </div><!-- End. product-single-carousel -->
                            </div><!-- End .col-sm-6 -->
                        </div><!-- End .row -->
                    </div><!-- End .container -->
                </div><!-- End .carousel-contaienr -->
                
                <div class="md-margin2x visible-sm visible-xs"></div><!-- space -->

                <div class="product-single-meta-container">
                    <div class="container">
                        <div class="col-md-6 col-md-push-6 product-single-meta">
                            <h2 class="product-name">${ detail.pName }</h2>
                            <div class="clearfix">
                                <div class="product-price-container pull-left">
                                    <span class="product-price"><fmt:formatNumber type="number" maxFractionDigits="3" value="${ detail.price}" />원</span>
                                    
                                </div><!-- End .product-price-container -->

                                
                            </div>
                            <div class="xs-margin"></div><!-- space -->
                            <p class="hidden-md">
      								${ detail.description }
                            </p>
                            <hr/>
                                    <ul>
                                    	<li>재고량 : ${ detail.stock }개</li>
                                    	<li>무게 : ${ detail.weight }</li>
                                    	<li>크기 : ${ detail.dimensions }</li>
                                    	<li>배송비 : ${ detail.shipping_price }원</li>
                                    </ul>

                            

                            <div class="product-action-container clearfix">
                                <div class="product-action-content clearfix">
                                <form name = "addForm" action="<%= request.getContextPath() %>/product/addCart.pro?pno=${ detail.pno }">
                                	<table>
                                    <tr><td><!-- <input type="text" class="product-amount-input" value="1" name="count"> --></td>
                                    <td> <a href="<%= request.getContextPath() %>/product/addCart.pro?pno=${ detail.pno}&index=3" title="Add to Cart" class="btn btn-danger btn-lg" onclick="addToCart()">
                                        장바구니 담기
                                    </a></td>
                                </div>
                                <div class="product-action-inner">
                                	<td><a href="<%= request.getContextPath() %>/product/moveCart.pro?pno=${ detail.pno}" title="Add to Cart" class="btn btn-success btn-lg" onclick="moveToCart()">
                                        바로 구매
                                    </a>
                                    </td>
                                    </tr>
                                    </table>
                                  </form> 
                                </div><!-- End .product-action-right -->
                            </div><!-- End .product-action-container -->

                            
                        </div><!-- End .col-sm-6 -->
                    </div><!-- End .container -->
                </div><!-- end .product-singe-meta-container -->
                
            </div><!-- End #product-single-container -->
            
         		<section id="content" role="main">

			<div class="container">
				<div class="row">
					<div class="col-sm-12">
						<div class="lg-margin"></div>
						<h3><b>상세 설명</b></h3>
						<div class="row">
			<!-- 베너 공간 -->
							<div class="col-md-9 padding-right-lg">
								<div id="category-filter-bar" class="clearfix">
									<div class="pull-left clearfix"> 
									<hr>
										<div>
								            <img src = "<%= request.getContextPath() %>/upload/${ detail.fileName4 }">
										</div>
										<div>
											<img src = "/Floregarden/images/description.jpg">
										</div>
										<div>
											<img src = "/Floregarden/images/delivery.gif">
										</div>
										<div>
											<img src = "/Floregarden/images/notice.gif">
										</div>
																	
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>



</section>
            
        </section><!-- End #content -->
	<jsp:include page="/footer.jsp"/>
	</div>
<%-- 	<script type="text/javascript">
		function addToCart() {
			if(confirm("상품을 장바구니에 추가하시겠습니까?")){
				var countInput = document.querySelector(".product-amount-input");
	            var count = countInput.value.trim();

	            if (count !== "" && count !== null) {
	                var url = "<%= request.getContextPath() %>/product/addCart.pro?pno=${ detail.pno }&count=" + count;
	                window.location.href = url;
	            } else {
	                alert("구매 수량을 입력해주세요.");
	            }
			} else {
				document.addForm.reset();
			}
		}
	</script> --%>
	<script type="text/javascript">
		function addToCart() {
			if(confirm("상품을 장바구니에 추가하시겠습니까?")){
				document.addForm.submit();
			} else {
				document.addForm.reset();
			}
		}
		function moveToCart() {
			if(confirm("바로 구매하시겠습니까?")){
				document.addForm.submit();
			} else {
				document.addForm.reset();
			}
		}
	</script>
	<script src="/Floregarden/js/bootstrap.min.js"></script>
    <script src="/Floregarden/js/smoothscroll.js"></script>
    <script src="/Floregarden/js/waypoints.js"></script>
    <script src="/Floregarden/js/waypoints-sticky.js"></script>
    <script src="/Floregarden/js/jquery.debouncedresize.js"></script>
    <script src="/Floregarden/js/retina.min.js"></script>
    <script src="/Floregarden/js/jquery.placeholder.js"></script>
    <script src="/Floregarden/js/jquery.hoverIntent.min.js"></script>
    <script src="/Floregarden/js/owl.carousel.min.js"></script>
    <script src="/Floregarden/js/jquery.selectbox.min.js"></script>
    <script src="/Floregarden/js/jquery.nouislider.min.js"></script>
    <script src="/Floregarden/js/jflickrfeed.min.js"></script>
    <script src="/Floregarden/js/twitter/jquery.tweet.min.js"></script>
    <script src="/Floregarden/js/jquery.bxslider.min.js"></script>
    <script src="/Floregarden/js/main.js"></script>

</body>
</html>