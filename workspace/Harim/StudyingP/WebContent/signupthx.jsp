<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="Config.SqlSessionManager" %>
<%@ page import="org.apache.ibatis.session.SqlSessionFactory" %>
<%@ page import="org.apache.ibatis.session.SqlSession" %>
<%@ page import="java.util.*" %>
<%@ page import="dto.MemberDTO" %>
<%@ page import="dto.BoardDTO" %>
<%@ page import="dto.ClassDTO" %>
<%@ page import="dto.OrderDTO" %>
<html>
<head>

  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">

  <title>thanks</title>

  <!-- Bootstrap core CSS -->
  <link href="resources/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

  <!-- Custom styles for this template -->
  <link href="resources/css/shop-homepage.css" rel="stylesheet">
  
   <!-- 폰트오썸 아이콘 -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.2/css/all.min.css"
   integrity="sha512-HK5fgLBL+xu6dm/Ii3z4xhlSUyZgTT9tuc/hSrtw6uzJOvgRr2a9jyxxT1ely+B+xFAmJKVSTbpM/CuL7qxO8w=="
    crossorigin="anonymous"/>
    
</head>

<body style="background-color: #f4f4f4;">
<%@ include file="menu.jsp" %>

      
      
  <div class="container" align="center">

    <div class="row">
      <div class="col-lg-12 mt-5">
	</div>
	</div>
	
	<div class="container col-lg-12" align="center">
      <form style="background-color: white; color: black; border: 1px solid black; border-radius: 15px;
      margin: 30px auto; max-width: 550px; padding: 50px;" align="left">
      
      	<div class="container mt-4">
			<h3> Studying P 가입을 축하합니다.</h3>
		</div>
        
        <br>
        <button class="btn btn-lg btn-primary btn-block" onclick="location.href='login.jsp'" style=" border: 2px solid; padding:14px 5px">
		로그인 페이지로 돌아가기</button>
        <p class="space"></p>
      </form>
    </div>
  </div>
</body>



	
		 <!-- Footer -->
<%@ include file="footer.jsp" %>


  <!-- Bootstrap core JavaScript -->
  <script src="resources/vendor/jquery/jquery.min.js"></script>
  <script src="resources/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
	
</body>
</html>