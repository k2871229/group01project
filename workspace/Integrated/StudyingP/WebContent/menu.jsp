<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
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
            <a class="nav-link" href="#">GUEST님
              <span class="sr-only">(current)</span>
            </a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#">로그아웃</a>
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