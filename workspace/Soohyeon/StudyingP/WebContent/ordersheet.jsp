<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page import="java.util.ArrayList" %>
<%@ page import="dto.ClassDTO" %>
<%@ page import="dto.MemberDTO" %>
<%@ page import="dao.MemberDAO" %>
<%@ page import="dao.MemberDAOImpl" %>
<%@ page import="dto.OrderDTO" %>
<%@ page import="dao.OrderDAO" %>
<%@ page import="dao.OrderDAOImpl" %>
<%@ page import="dao.ClassDAO" %>
<%@ page import="dao.ClassDAOImpl" %>

<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
  	<meta charset="UTF-8" />
  	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  	<meta name="description" content="">
  	<meta name="author" content="">

  	<title>StudyingP 주문서작성</title>

  	<!-- 부트스트랩 -->
  	<link href="./resources/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  	<link href="./resources/css/shop-homepage.css" rel="stylesheet">

  	<!-- 폰트오썸 아이콘 -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.2/css/all.min.css"
    integrity="sha512-HK5fgLBL+xu6dm/Ii3z4xhlSUyZgTT9tuc/hSrtw6uzJOvgRr2a9jyxxT1ely+B+xFAmJKVSTbpM/CuL7qxO8w=="
    crossorigin="anonymous" />
    
    <%
    	// 현재 세션에 있는 cls_code를 받아옴
    	session = request.getSession();
    	int clsCode;
    	ClassDAOImpl clsDaoImpl = new ClassDAOImpl();
    	ClassDTO clsDto = new ClassDTO();
    	ClassDTO selectedCls = new ClassDTO();
    	int memCode;
    	MemberDAOImpl memDaoImpl = new MemberDAOImpl();
    	MemberDTO memDto = new MemberDTO();
    	MemberDTO selectedMem = new MemberDTO();
    	
    	// getAttribute로 받아오는 값이 있어야 동작
    	if(session.getAttribute("AddedClsCode") != null){
    		clsCode = Integer.valueOf((String)session.getAttribute("AddedClsCode"));
        	
    		// ClassDTO 인스턴스를 만들어서 cls_code를 할당
        	clsDto.setCls_code(clsCode);
        	// 제대로 cls_code가 들어갔는지 체크
        	//System.out.println(clsDto.toString());
        	// cls_code를 이용해 ClassMapper로 부터 class 데이터를 받아옴
        	selectedCls = clsDaoImpl.selectClassOne(clsDto);
        	//System.out.println(selectedCls.toString());
        	
        	memCode = Integer.valueOf((String)session.getAttribute("AddedMemCode"));
        	memDto.setMem_code(memCode);
        	selectedMem = memDaoImpl.selectMemberOne(memDto);
    	}

    %>
    
</head>
<script type="text/javascript">
function goOrderCompleted() {
	var completedForm = document.completed;
	completedForm.method = "post";
	completedForm.action = "OrderCompleted"
	completedForm.submit();
}
</script>
<body>
	<jsp:include page="menu.jsp"/>
	<div style="background: white;">
		<!-- 위쪽 공간 -->
		<div class="pt-5 pb-2"></div>
	
		<!-- 주문서작성 타이틀 -->
		<div class="pt-5 pb-1">
			<div class="container" align="center">
				<h2>주문서작성</h2>
			</div>
		</div>
	
		<!-- 02 주문서작성 바 -->
		<div class="py-5">
			<div class="container">
				<div class="d-flex justify-content-center">
					<div class="py-2 px-5 bg-secondary text-white" style="border-radius: 10px;">01 장바구니</div>
					<div class="py-2 px-5 bg-primary text-white" style="border-radius: 10px;">02 주문서작성</div>
					<div class="py-2 px-5 bg-secondary text-white" style="border-radius: 10px;">03 결제완료</div>
					<div class="py-2 px-5 bg-secondary text-white" style="border-radius: 10px;">04 주문완료</div>
				</div>
			</div>	
		</div>
		
		<!-- 신청 내역 -->
		<div class="py-5">
			<div class="container">
				<h3>신청 내역</h3>
				<table class="table">
					<thead style="background: #f4f4f4">
						<tr>
							<th scope="col" class="text-center">상품명</th>
							<th scope="col" class="text-center">수강기간</th>
							<th scope="col" class="text-center">판매자</th>
						</tr>
					</thead>
					<tbody>
						<tr style="border-bottom: 2px solid silver !important;">
							<th scope="row" class="text-center"><% out.print(selectedCls.getCls_name()); %></th>
							<th class="text-center">180일</th>
							<th class="text-center"><% out.print(String.valueOf(selectedCls.getCls_price()) + "원"); %></th>
						</tr>
					</tbody>
				</table>
			</div>
		</div>
		
		<!-- 쿠폰 할인 -->
		
		<!-- 구매자 정보 -->
		<div class="py-5">
			<div class="container">
				<h3>구매자 정보</h3>
				<table class="table">
					<thead style="background: #f4f4f4">
						<tr>
							<th scope="col" class="text-center">주문자</th>
							<th scope="col" class="text-center">전화번호</th>
							<th scope="col" class="text-center">이메일</th>
						</tr>
					</thead>
					<tbody>
						<tr style="border-bottom: 2px solid silver !important;">
							<th scope="row" class="text-center"><% out.print(selectedMem.getMem_name()); %></th>
							<th class="text-center"><% out.print(selectedMem.getMem_phone()); %></th>
							<th class="text-center"><% out.print(selectedMem.getMem_email()); %></th>
						</tr>
					</tbody>
				</table>
			</div>
		</div>
		
		<!-- 최종 결제 정보 -->
		<div class="py-5">
			<div class="container">
				<h3>최종 결제 정보</h3>
				<div class="d-flex justify-content-around" style="border-top: 2px solid silver; border-bottom: 2px solid silver">
					<div class="py-5 px-5 text-center" style="font-size: 20px;">주문 금액<br><% out.print(String.valueOf(selectedCls.getCls_price()) + "원"); %></div>
					<div class="py-5 px-5 align-self-center"><i class="fas fa-minus"></i></div>
					<div class="py-5 px-5 text-center" style="font-size: 20px;">총 할인 금액<br>0원</div>
					<div class="py-5 px-5 align-self-center"><i class="fas fa-equals"></i></div>
					<div class="py-5 px-5 text-center align-self-center" style="font-size: 20px;">최종 결제 금액</div>
					<div class="py-5 px-5 text-center align-self-center text-danger" style="font-size: 30px; font-weight: bold;"><% out.print(String.valueOf(selectedCls.getCls_price()) + "원"); %></div>
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
							<th><div class="btn btn-white" style="border: 1px solid black !important;">무통장입금</div> </th>
							<th></th>
							<th></th>
							<th></th>
						</tr>
						<tr style="border-top: 1px solid grey !important; border-bottom: 1px solid grey !important;">
							<th class="align-middle text-center bg-light">입금 은행 선택</th>
							<th> <div class="btn btn-white" style="border: 1px solid black !important;">국민은행</div>
							<div class="btn btn-white" style="border: 1px solid black !important;">우리은행</div>
							<div class="btn btn-white" style="border: 1px solid black !important;">신한은행</div>
							<div class="btn btn-white" style="border: 1px solid black !important;">하나은행</div> </th>
							<th></th>
							<th></th>
							<th></th>
						</tr>
						<tr>
							<th class="align-middle text-center bg-light">결제 안내</th>
							<th> <div class="btn btn-white" style="border: 1px solid black !important;">무통장입금 안내</div> </th>
							<th></th>
							<th></th>
							<th></th>
						</tr>
					</table>
					<form name="completed" method="post">
						<div class="px-5 mx-5" style="border-top: 2px solid silver !important">
							<div class="px-5 pt-3 pb-2 text-center text-nowrap" style="font-size: 15px;">최종 결제 금액</div>
							<div class="px-5 pt-3 pb-4 text-center text-nowrap text-danger" style="font-size: 30px; font-weight: bold;"><% out.print(String.valueOf(selectedCls.getCls_price()) + "원"); %></div>
							<div class="btn btn-danger text-white btn-block" onclick="goOrderCompleted()">구매하기</div>
						</div>
					</form>
				</div>
			</div>
		</div>
		
	</div>
	
	<jsp:include page="footer.jsp"/>
	
</body>
</html>