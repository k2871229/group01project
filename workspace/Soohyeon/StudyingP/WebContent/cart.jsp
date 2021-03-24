<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page import="java.util.ArrayList" %>
<%@ page import="dto.ClassDTO" %>
<%@ page import="dto.MemberDTO" %>
<%@ page import="dto.OrderDTO" %>
<%@ page import="dao.OrderDAOImpl" %>

<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
  	<meta charset="UTF-8" />
  	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  	<meta name="description" content="">
  	<meta name="author" content="">

  	<title>StudyingP 장바구니</title>

  	<!-- 부트스트랩 -->
  	<link href="./resources/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  	<link href="./resources/css/shop-homepage.css" rel="stylesheet">

  	<!-- 폰트오썸 아이콘 -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.2/css/all.min.css"
    integrity="sha512-HK5fgLBL+xu6dm/Ii3z4xhlSUyZgTT9tuc/hSrtw6uzJOvgRr2a9jyxxT1ely+B+xFAmJKVSTbpM/CuL7qxO8w=="
    crossorigin="anonymous" />
    
    <%
    
    	String cartId = session.getId();
    
    %>
</head>
<script type="text/javascript">
function goOrdersheet(){
	var itemForm = document.item;
	itemForm.method = "post";
	itemForm.action = "order";
	itemForm.submit();
}
</script>
<body>
	<jsp:include page="menu.jsp"/>
	<div style="background: white;">
		<!-- 위쪽 공간 -->
		<div class="pt-5 pb-2"></div>
	
		<!-- 장바구니 타이틀 -->
		<div class="pt-5 pb-1">
			<div class="container" align="center">
				<h2>장바구니</h2>
			</div>
		</div>
	
		<!-- 01 장바구니 바 -->
		<div class="py-5">
			<div class="container">
				<div class="d-flex justify-content-center">
					<div class="py-2 px-5 bg-primary text-white" style="border-radius: 10px;">01 장바구니</div>
					<div class="py-2 px-5 bg-secondary text-white" style="border-radius: 10px;">02 주문서작성</div>
					<div class="py-2 px-5 bg-secondary text-white" style="border-radius: 10px;">03 결제완료</div>
					<div class="py-2 px-5 bg-secondary text-white" style="border-radius: 10px;">04 주문완료</div>
				</div>
			</div>	
		</div>
	
		<!-- 주문 목록 테이블 -->
		<div class="py-3">
			<div class="container">
				<table class="table">
					<thead>
						<tr>
							<th scope="col"><input type="checkbox"></th>
							<th scope="col" class="text-center">이미지</th>
							<th scope="col" class="text-center">강의명</th>
							<th scope="col" class="text-center">가격</th>
							<th scope="col" class="text-center">선택</th>
						</tr>
					</thead>
					<tbody>
					<form name="item" method="post">
						<tr>
							<th scope="row" class="align-middle"><input type="checkbox"></th>
							<th class="align-middle text-center">강의 이미지</th>
							<th class="align-middle text-center">요알못도 쉽게 따라 할 수 있는 쿠킹 클래스</th>
							<th class="align-middle text-center">400,000원</th>
							<th>
								<div class="d-flex flex-column">
									<div class="py-2 px-5 my-1 text-white btn btn-secondary" align="center" style="border-radius: 10px;" onclick="goOrdersheet()">주문하기</div>
									<div class="py-2 px-5 my-1 text-black btn btn-light" align="center" style="border-radius: 10px;">삭제</div>
								</div>
							</th>
						</tr>
						</form>
						
						<tr style="border-top: 2px solid silver !important; border-bottom: 2px solid silver !important;">
							<th></th>
							<th></th>
							<th></th>
							<th></th>
							<th>
								<div class="text-primary text-center" style="font-size: 20px !important;">합계: 400,000원</div>
							</th>
						</tr>
					</tbody>
				</table>
			</div>
		</div>
		
		<!-- 총 상품 금액, 결제 예정 금액 -->
		<div class="py-3">
			<div class="container">
				<table class="table">
					<thead>
						<tr>
							<th scope="col" class="py-4 text-center" style="background-color: gainsboro !important; border: 2px solid silver; font-size: 20px;">총 상품금액</th>
							<th scope="col" class="py-4 text-center" style="background-color: gainsboro !important; border: 2px solid silver; font-size: 20px;">결제예정금액</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<th class="py-4 text-center" style="border: 2px solid silver; font-size: 25px;">400,000원</th>
							<th class="py-4 text-center text-primary" style="border: 2px solid silver; font-size: 25px;">400,000원</th>
						</tr>
					</tbody>
				</table>
			</div>
		</div>
	
		<!-- 전체상품 주문, 선택상품 주문 -->
		<div class="py-3">
			<div class="container">
				<div class="row">
					<table align="center">
						<tr>
							<td>
								<a href="#" class="btn btn-primary text-white py-3 px-5 mr-3">전체상품 주문</a>
							</td>
							<td>
								<a href="#" class="btn btn-secondary text-white py-3 px-5 ml-3">선택상품 주문</a>
							</td>
						</tr>
					</table>
				</div>
			</div>
		</div>
		
	</div>
		
		<jsp:include page="footer.jsp"/>

</body>
</html>