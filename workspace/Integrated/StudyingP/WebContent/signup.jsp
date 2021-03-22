<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<html>
<head>

  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">

  <title>sign up</title>

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
		<div class="container mt-4">
			<h2>회원 가입</h2>
		</div>
	</div>
	</div>
	
	<div class="container col-lg-12" align="center">
      <form style="background-color: white; color: black; border: 1px solid black; border-radius: 15px;
      margin: 30px auto; max-width: 550px; padding: 50px;" align="left">
      
        <div class="form-group">
          <label for="first-name">아이디</label>
          </div>
          <div class="form-group">
          <input type="text" name="mem_id" id="mem_id" style="border-radius: 5px; border: 1px solid gray;"
           size=50 placeholder="5~20자의 영문 소문자, 숫자만 가능"
          />
        </div>
        <br>
        <div class="form-group">
          <label for="last-name">비밀번호</label>
        </div>
          <div class="form-group">
          <input type="text" name="lastName" id="last-name" style="border-radius: 5px; border: 1px solid gray;"
          	size=50 placeholder="8~20자의 영문, 숫자, 특수문자 조합"
          />
          </div>
        <br>
        
        <div class="form-group">
          <label for="email">이름</label>
          </div>
          <div class="form-group">
          <input type="email" name="email" id="email" style="border-radius: 5px; border: 1px solid gray;"
          	size=50 placeholder="이름을 입력하세요."
          />
        </div>
        <br>
        <div class="form-group">
          <label for="password">전화번호</label>
          </div>
          <div class="form-group">
          <input type="password" name="password" id="password" style="border-radius: 5px; border: 1px solid gray;"
          	size=50 placeholder="숫자만 입력하세요."
          />
        </div>
        <br>
        <div class="form-group">
          <label for="password2">이메일</label>
        </div>
        <div class="form-group">
          <input type="password" name="pasword2" id="password2" style="border-radius: 5px; border: 1px solid gray;"
          	size=50 placeholder="이메일을 입력하세요."
          />
        </div>
        <br>
        <div class="form-group">
          <label for="password2">주소</label>
        </div>
        <div class="form-group">
          <input type="password" name="pasword2" id="password2" style="border-radius: 5px; border: 1px solid gray;"
          	size=50 placeholder="주소를 입력하세요."
          />
        </div>
        <br>
        <button class="btn btn-lg btn-primary btn-block" href="./join.jsp" style=" border: 2px solid; padding:14px 5px">
		가입하기</button>
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