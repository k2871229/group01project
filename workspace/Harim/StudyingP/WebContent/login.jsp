<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="ko">

<head>

  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">

  <title>login</title>

  <!-- Bootstrap core CSS -->
  <link href="resources/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

  <!-- Custom styles for this template -->
  <link href="resources/css/shop-homepage.css" rel="stylesheet">
  
   <!-- 폰트오썸 아이콘 -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.2/css/all.min.css"
   integrity="sha512-HK5fgLBL+xu6dm/Ii3z4xhlSUyZgTT9tuc/hSrtw6uzJOvgRr2a9jyxxT1ely+B+xFAmJKVSTbpM/CuL7qxO8w=="
    crossorigin="anonymous"/>
</head>
<body>

<!-- 네비바 -->
  		<nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
   		 <div class="container">
   		   <a class="navbar-brand" href="./main.jsp"><img width="100px" src="./resources/img/mlog.png"></a>
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive"
        aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      
       
           <!-- 드롭다운 메뉴-->
          <li class="nav-item dropdown navbar-dark" style="list-style:none;">
            <a class="nav-link dropdown-toggle" href="#" data-toggle="dropdown" style="color: #fff">
              	강의
            </a>
            <div class="dropdown-menu">
              <a class="dropdown-item" href="#">음악</a>
              <a class="dropdown-item" href="#">미술</a>
              <a class="dropdown-item" href="#">요리</a>
              <a class="dropdown-item" href="#">IT</a>
            </div>
          </li>
          <li class="nav-item dropdown navbar-dark" style="list-style:none;">
            <a class="nav-link dropdown-toggle" href="#" data-toggle="dropdown" style="color: #fff">
              	게시판
            </a>
            <div class="dropdown-menu">
              <a class="dropdown-item" href="#">공지</a>
              <a class="dropdown-item" href="#">리뷰</a>
              <a class="dropdown-item" href="#">Q&A</a>
              <a class="dropdown-item" href="#">자유</a>
            </div>
          </li>

      <div class="collapse navbar-collapse" id="navbarResponsive" style="text:center">
        <ul class="navbar-nav ml-auto">
          <li class="nav-item active">
            <a class="nav-link" href="#">로그인
              <span class="sr-only">(current)</span>
            </a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#">회원가입</a>
          </li>
          <li class="nav-item dropdown navbar-dark" style="list-style:none;">
            <a class="nav-link dropdown-toggle" href="#" data-toggle="dropdown" style="color: #fff">
              	<i class="fas fa-user-circle"></i>
            </a>
            <div class="dropdown-menu">
              <a class="dropdown-item" href="#">회원 정보 수정</a>
              <br>
              <a class="dropdown-item" href="#">장바구니</a>
              <a class="dropdown-item" href="#">수강 정보</a>
            </div>
          </li>
        </ul>
      </div>
    </div>
  </nav>
	
		<div class="jumbotron">
		<div class="container">
			<h1 class="display-3">로그인</h1>
		</div>
	</div>
	<div class="container" align="center">
		<div class="col-md-4 col-md-offset-4">
			<h3 class="form-signin-heading">Please sign in</h3>
			<br>
			<%
				String error = request.getParameter("error");
				if (error != null) {
					out.println("<div class='alert alert-danger'>");
					out.println("아이디와 비밀번호를 확인해 주세요");
					out.println("</div>");
				}
			%>
			
			<form class="form-signin" action="j_security_check" method="post">
				<div class="form-group">
					<label for="inputUserName" class="sr-only">User Name</label>
					<input type="text" class="form-control" placeholder="아이디" name='j_username' required autofocus>
				</div>
				<div class="form-group">
					<label for="inputPassword" class="sr-only">Password</label> 
					<input	type="password" class="form-control" placeholder="비밀번호" name='j_password' required>
				</div>
				</form>
				<button style="color: white; background:black" class="btn btn-lg btn-block" type="submit">로그인</button>
				 <br>
				 <p>아직 계정이 없으신가요? </p>
				  <button class="btn btn-lg btn-primary btn-block" href="#">회원가입</button>
		</div>
	</div>

	<br><br><br><br><br>
	

	
	 <!-- Footer -->
<%@ include file="footer.jsp" %>


  <!-- Bootstrap core JavaScript -->
  <script src="resources/vendor/jquery/jquery.min.js"></script>
  <script src="resources/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
	
</body>
</html>