<!DOCTYPE html>
<html lang="ko">
<head>

  <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">

  <title>Studying P</title>

  <!-- 부트스트랩 -->
  <link href="./resources/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="./resources/css/shop-homepage.css" rel="stylesheet">

  <!-- 폰트오썸 아이콘 -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.2/css/all.min.css"
    integrity="sha512-HK5fgLBL+xu6dm/Ii3z4xhlSUyZgTT9tuc/hSrtw6uzJOvgRr2a9jyxxT1ely+B+xFAmJKVSTbpM/CuL7qxO8w=="
    crossorigin="anonymous" />
    
</head>

<body>

<%@ include file="menu.jsp" %>

  <!-- Page Content -->
  <div class="container">

    <div class="row">

      <div class="col-lg-12">

        <div id="carouselExampleIndicators" class="carousel slide my-4" data-ride="carousel">
          <ol class="carousel-indicators">
            <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
            <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
            <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
            <li data-target="#carouselExampleIndicators" data-slide-to="3"></li>
          </ol>
          <div class="carousel-inner" role="listbox">
            <div class="carousel-item active">
            <a class="big_main" href="#">
              		<img class="d-block img-fluid" src="./resources/img/ITmain.png" alt="First slide">
            </a>
            </div>
            <div class="carousel-item">
            <a class="big_main" href="#">
              <img class="d-block img-fluid" src="./resources/img/ARTmain.png" alt="Second slide">
            </a>
            </div>
            <div class="carousel-item">
            <a class="big_main" href="#">
              <img class="d-block img-fluid" src="./resources/img/MUSICmain.png" alt="Third slide">
            </a>
            </div>
            <div class="carousel-item">
            <a class="big_main" href="#">
              <img class="d-block img-fluid" src="./resources/img/COOKmain.png" alt="Fourth slide">
            </a>
            </div>
          </div>
          <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="sr-only">Previous</span>
          </a>
          <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="sr-only">Next</span>
          </a>
        </div>

        <div class="row">

          <div class="col-lg-4 col-md-6 mb-4">
            <div class="card h-100">
              <a href="#"><img class="card-img-top" src="./resources/img/cook1.png" alt=""></a>
              <div class="card-body">
                <h4 class="card-title">
                  <a href="#" style="color: black">삶의 요령이 쌓이는 반찬 요리</a>
                </h4>
                <h5>240,380원</h5>
                <p class="card-text">입문자분들을 위한 채소를 남김없이 활용하는 반찬요리 클래스입니다.
                </p>
              </div>
              <div class="card-footer">
                <small class="text-muted">&#9733; &#9733; &#9733; &#9733; &#9733;</small>
              </div>
            </div>
          </div>

          <div class="col-lg-4 col-md-6 mb-4">
            <div class="card h-100">
              <a href="#"><img class="card-img-top" src="./resources/img/it1.png" alt=""></a>
              <div class="card-body">
                <h4 class="card-title">
                  <a href="#">파이썬 정복!</a>
                </h4>
                <h5>432,180원</h5>
                <p class="card-text">파이썬을 기초부터 하나씩 알려드리는 강좌. 초보자용 코스입니다.</p>
              </div>
              <div class="card-footer">
                <small class="text-muted">&#9733; &#9733; &#9733; &#9733; &#9734;</small>
              </div>
            </div>
          </div>

          <div class="col-lg-4 col-md-6 mb-4">
            <div class="card h-100">
              <a href="#"><img class="card-img-top" src="./resources/img/cook2.png" alt=""></a>
              <div class="card-body">
                <h4 class="card-title">
                  <a href="#">5성 호텔 쉐프가 알려주는 제빵 클래스</a>
                </h4>
                <h5>280,000원</h5>
                <p class="card-text">5성 라라호텔에 근무하던 쉐프 최라라씨가 하나씩 알려주는 디저트 만들기 팁을 전수해드립니다.
                </p>
              </div>
              <div class="card-footer">
                <small class="text-muted">&#9733; &#9733; &#9733; &#9733; &#9734;</small>
              </div>
            </div>
          </div>

          <div class="col-lg-4 col-md-6 mb-4">
            <div class="card h-100">
              <a href="#"><img class="card-img-top" src="./resources/img/music1.png" alt=""></a>
              <div class="card-body">
                <h4 class="card-title">
                  <a href="#">솨솨 선생님과 함께, 작곡 클래스</a>
                </h4>
                <h5>357,680원</h5>
                <p class="card-text">작곡이 취미가 되는 시간을 선사합니다.
                </p>
              </div>
              <div class="card-footer">
                <small class="text-muted">&#9733; &#9733; &#9733; &#9733; &#9734;</small>
              </div>
            </div>
          </div>

          <div class="col-lg-4 col-md-6 mb-4">
            <div class="card h-100">
              <a href="#"><img class="card-img-top" src="./resources/img/art1.png" alt=""></a>
              <div class="card-body">
                <h4 class="card-title">
                  <a href="#">손으로 그리고 만드는 수채화 클래스</a>
                </h4>
                <h5>567,000원</h5>
                <p class="card-text">재미있는 수채화 드로잉, 밑선 긋기부터 알려드려요!</p>
              </div>
              <div class="card-footer">
                <small class="text-muted">&#9733; &#9733; &#9733; &#9733; &#9734;</small>
              </div>
            </div>
          </div>

          <div class="col-lg-4 col-md-6 mb-4">
            <div class="card h-100">
              <a href="#"><img class="card-img-top" src="./resources/img/art2.png" alt=""></a>
              <div class="card-body">
                <h4 class="card-title">
                  <a href="#">리얼리티 아이패드 드로잉</a>
                </h4>
                <h5>530,000원</h5>
                <p class="card-text">아이패드로 그림을 그리기 위해 필요한 어플들과 그리는 팁들을 전수합니다.
                </p>
              </div>
              <div class="card-footer">
                <small class="text-muted">&#9733; &#9733; &#9733; &#9733; &#9734;</small>
              </div>
            </div>
          </div>

        </div>
        <!-- /.row -->

      </div>
      <!-- /.col-lg-9 -->

    </div>
    <!-- /.row -->

  </div>
  <!-- /.container -->

  <!-- Footer -->
<%@ include file="footer.jsp" %>

  <!-- Bootstrap core JavaScript -->
  <script src="./resources/vendor/jquery/jquery.min.js"></script>
  <script src="./resources/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

</body>

</html>