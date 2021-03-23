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

  	<title>StudyingP 주문완료</title>

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
<body>
	<jsp:include page="menu.jsp"/>
	
	<div style="background: white;">
		<!-- 위쪽 공간 -->
		<div class="pt-5 pb-2"></div>
	
		<!-- 주문완료 타이틀 -->
		<div class="pt-5 pb-1">
			<div class="container" align="center">
				<h2>주문완료</h2>
			</div>
		</div>
		
		<!-- 04 주문완료 바 -->
		<div class="py-5">
			<div class="container">
				<div class="d-flex justify-content-center">
					<div class="py-2 px-5 bg-secondary text-white" style="border-radius: 10px;">01 장바구니</div>
					<div class="py-2 px-5 bg-secondary text-white" style="border-radius: 10px;">02 주문서작성</div>
					<div class="py-2 px-5 bg-secondary text-white" style="border-radius: 10px;">03 결제완료</div>
					<div class="py-2 px-5 bg-primary text-white" style="border-radius: 10px;">04 주문완료</div>
				</div>
			</div>	
		</div>
		
		<!-- 결제 정보 -->
		<div class="py-5">
			<div class="container">
				<h3>결제 정보</h3>
				<div class="d-flex">
					<table class="table">
						<tr style="border-top: 2px solid silver;">
							<th class="align-middle text-center bg-light">결제 선택</th>
							<th><div>무통장입금</div> </th>
							<th></th>
							<th></th>
							<th></th>
						</tr>
						<tr>
							<th class="align-middle text-center bg-light">입금 은행</th>
							<th><div>국민은행</div></th>
							<th></th>
							<th></th>
							<th></th>
						</tr>
						<tr>
							<th class="align-middle text-center bg-light">계좌 번호</th>
							<th><div>812121-00-034345</div> </th>
							<th></th>
							<th></th>
							<th></th>
						</tr>
						<tr style="border-bottom: 2px solid silver;">
							<th class="align-middle text-center bg-light">예금주</th>
							<th><div>(주)StudyingP</div> </th>
							<th></th>
							<th></th>
							<th></th>
						</tr>
					</table>
					<div class="px-5 mx-5" style="border-top: 2px solid silver !important;">
						<div class="px-5 pt-4 pb-3 text-center text-nowrap" style="font-size: 15px;">계좌 입금액</div>
						<div class="px-5 pt-3 pb-4 text-center text-nowrap text-danger" style="font-size: 30px; font-weight: bold;">200,000원</div>
					</div>
				</div>
				<div class="my-2 py-2" style="border-top: 1px solid silver;">일주일 내에 입금 확인이 되지 않으면 주문이 자동 취소됩니다. 입금인 이름과 수강생 이름은 동일해야 합니다.</div>
				<div class="my-2 py-2" style="border-bottom: 1px solid silver;">수강은 입금 확인 이후 가능합니다.</div>
			</div>
		</div>
		
		
	</div>
	
	<jsp:include page="footer.jsp"/>
	
</body>
</html>