<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<!-- 부트스트랩(프레임워크) 가져오기 -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<head>
<meta charset="UTF-8">
<link rel="shortcut icon" href="/favicon.ico" type="image/x-icon">
<link rel="icon" href="/favicon.ico" type="image/x-icon">
<title>KLeague Data Center</title>
</head>
<body>

<!-- 홈페이지 제목-->
<h1 align="center">KLeague Data Center</h1>
<hr />


<!-- 네비게이션 부분 -->
<div class="container">
    <header class="d-flex flex-wrap align-items-center justify-content-center justify-content-md-between py-3 mb-4 border-bottom">
      <a href="/" class="d-flex align-items-center col-md-3 mb-2 mb-md-0 text-dark text-decoration-none">
        <svg class="bi me-2" width=50" height="32" role="img" aria-label="Bootstrap"><use xlink:href="#bootstrap"></use></svg>
      </a>

      <ul class="nav col-12 col-md-auto mb-2 justify-content-center mb-md-0">
        <li><a href="00index.jsp" class="nav-link px-2 link-secondary">메 인 페 이 지</a></li>
        <li><a href="01teamRanking.jsp" class="nav-link px-2 link-dark">팀 순 위</a></li>
        <li><a href="02playerRanking.jsp" class="nav-link px-2 link-dark">선 수 순 위</a></li>
        <li><a href="03freeBoard.jsp" class="nav-link px-2 link-dark">자 유 게 시 판</a></li>
        <li><a href="04qnaBoard.jsp" class="nav-link px-2 link-dark">Q & A 게 시 판</a></li>
      </ul>

      <div class="col-md-3 text-end">

<button type="button" class="btn btn-outline-primary me-2" onclick="location.href='05login.jsp'">로그인</button>

 
<button type="button" class="btn btn-primary" onclick="location.href='06signUp.jsp'">회원가입</button>
      </div>
    </header>
  </div>


<!--  메인페이지 부분 -->
<div class="container">

      <div class="row row-cols-1 row-cols-sm-2 row-cols-md-3 g-3">
      
        <div class="col">
          <div class="card shadow-sm" style="height:auto; width:auto%; border:2px solid black ">
            <!--  <svg class="bd-placeholder-img card-img-top" alt="col image" style="width:100%"width="100%" height="225" xmlns="http://www.w3.org/2000/svg" role="img" aria-label="Placeholder: Thumbnail" preserveAspectRatio="xMidYMid slice" focusable="false" style="background-image: url('http://file3.instiz.net/data/file3/2021/02/13/2/e/7/2e7ad74bac9c1c62a2252a2640412508.jpg');">-->
            <title>1위팀</title>
       		<img class="bd-placeholder-img card-img-top" src="https://www.kleague.com/assets/images/mobile/emblem/emblem_K01.png" alt="col image" width="225" height="225">
            <rect width="100%" height="100%" fill="#55595c"></rect>
            <text x="50%" y="50%" fill="#eceeef" dy=".3em" ></text></svg>
            <div class="card-body">
              <p class="card-text">1위팀 울산현대</p>
              <div class="d-flex justify-content-between align-items-center">
                <div class="btn-group">
                  <button type="button" class="btn btn-sm btn-outline-secondary"  onclick="window.open('http://www.uhfc.tv')" >홈페이지 이동 >></button> 
                </div>
                <small class="text-muted">1위팀</small>
              </div>
            </div>
          </div>
        </div>
        
        
        <div class="col">
          <div class="card shadow-sm" style="height:auto; width:100%; border:2px solid black ">
            <!-- <svg class="bd-placeholder-img card-img-top" width="100%" height="225" xmlns="http://www.w3.org/2000/svg" role="img" aria-label="Placeholder: Thumbnail" preserveAspectRatio="xMidYMid slice" focusable="false"> -->
            <title>2위팀</title><rect width="100%" height="100%" fill="#55595c"></rect>
            <img class="bd-placeholder-img card-img-top" src="https://www.kleague.com/assets/images/mobile/emblem/emblem_K05.png" alt="col image" width="225" height="225">
            <text x="50%" y="50%" fill="#eceeef" dy=".3em"></text></svg>
		
            <div class="card-body">
              <p class="card-text">2위팀 전북현대</p>
              <div class="d-flex justify-content-between align-items-center">
                <div class="btn-group">
                  <button type="button" class="btn btn-sm btn-outline-secondary"  onclick="window.open('http://www.hyundai-motorsfc.com')" >홈페이지 이동 >></button>
                </div>
                <small class="text-muted">2위팀</small>
              </div>
            </div>
          </div>
        </div>
        
        <div class="col">
          <div class="card shadow-sm" style="height:auto; width:100%; border:2px solid black ">
            <!--  <svg class="bd-placeholder-img card-img-top" width="100%" height="225" xmlns="http://www.w3.org/2000/svg" role="img" aria-label="Placeholder: Thumbnail" preserveAspectRatio="xMidYMid slice" focusable="false">-->
            <title>3위팀</title><rect width="100%" height="100%" fill="#55595c"></rect>
            <img class="bd-placeholder-img card-img-top" src="https://www.kleague.com/assets/images/mobile/emblem/emblem_K03.png" alt="col image" width="225" height="225">
            <text x="50%" y="50%" fill="#eceeef" dy=".3em"></text></svg>
            <div class="card-body">
              <p class="card-text">3위팀 포항스틸러스</p>
              <div class="d-flex justify-content-between align-items-center">
                <div class="btn-group">
                  <button type="button" class="btn btn-sm btn-outline-secondary"  onclick="window.open('https://www.steelers.co.kr/')" >홈페이지 이동 >></button>
                </div>
                <small class="text-muted">3위팀</small>
              </div>
            </div>
          </div>
        </div>

        <div class="col">
          <div class="card shadow-sm" style="height:auto; width:100%; border:2px solid black ">
           <!-- <svg class="bd-placeholder-img card-img-top" width="100%" height="225" xmlns="http://www.w3.org/2000/svg" role="img" aria-label="Placeholder: Thumbnail" preserveAspectRatio="xMidYMid slice" focusable="false"> -->
           <title>4위팀</title><rect width="100%" height="100%" fill="#55595c"></rect>
           <img class="bd-placeholder-img card-img-top" src="https://www.kleague.com/assets/images/mobile/emblem/emblem_K04.png" alt="col image" width="225" height="225">
			<text x="50%" y="50%" fill="#eceeef" dy=".3em"></text></svg>
            <div class="card-body">
              <p class="card-text">4위팀 제주유나이티드</p>
              <div class="d-flex justify-content-between align-items-center">
                <div class="btn-group">
                  <button type="button" class="btn btn-sm btn-outline-secondary"  onclick="window.open('https://www.jeju-utd.com/')" >홈페이지 이동 >></button>                
                </div>
                <small class="text-muted">4위팀</small>
              </div>
            </div>
          </div>
        </div>
        
        <div class="col">
          <div class="card shadow-sm" style="height:auto; width:100%; border:2px solid black ">
            <!-- <svg class="bd-placeholder-img card-img-top" width="100%" height="225" xmlns="http://www.w3.org/2000/svg" role="img" aria-label="Placeholder: Thumbnail" preserveAspectRatio="xMidYMid slice" focusable="false"> -->
            <title>5위팀</title><rect width="100%" height="100%" fill="#55595c">
            <img class="bd-placeholder-img card-img-top" src="https://www.kleague.com/assets/images/mobile/emblem/emblem_K18.png" alt="col image" width="225" height="225">
            </rect><text x="50%" y="50%" fill="#eceeef" dy=".3em"></text></svg>
            <div class="card-body">
              <p class="card-text">5위팀</p>
              <div class="d-flex justify-content-between align-items-center">
                <div class="btn-group">
                  <button type="button" class="btn btn-sm btn-outline-secondary"  onclick="window.open('https://www.incheonutd.com/main/index.php')" >홈페이지 이동 >></button>
                </div>
                <small class="text-muted">5위팀</small>
              </div>
            </div>
          </div>
        </div>
        
        <div class="col">
          <div class="card shadow-sm" style="height:auto; width:100%; border:2px solid black ">
            <!-- <svg class="bd-placeholder-img card-img-top" width="100%" height="225" xmlns="http://www.w3.org/2000/svg" role="img" aria-label="Placeholder: Thumbnail" preserveAspectRatio="xMidYMid slice" focusable="false"> -->
            <title>6위팀</title><rect width="100%" height="100%" fill="#55595c"></rect>
            <img class="bd-placeholder-img card-img-top" src="https://www.kleague.com/assets/images/mobile/emblem/emblem_K29.png" alt="col image" width="225" height="225">
            <text x="50%" y="50%" fill="#eceeef" dy=".3em"></text></svg>
            <div class="card-body">
              <p class="card-text">6위팀</p>
              <div class="d-flex justify-content-between align-items-center">
                <div class="btn-group">
                  <button type="button" class="btn btn-sm btn-outline-secondary"  onclick="window.open('https://suwonfc.com/')" >홈페이지 이동 >></button>
                </div>
                <small class="text-muted">6위팀</small>
              </div>
            </div>
          </div>
        </div>

        <div class="col">
          <div class="card shadow-sm" style="height:auto; width:100%; border:2px solid black ">
            <!-- <svg class="bd-placeholder-img card-img-top" width="100%" height="225" xmlns="http://www.w3.org/2000/svg" role="img" aria-label="Placeholder: Thumbnail" preserveAspectRatio="xMidYMid slice" focusable="false"> -->
            <title>7위팀</title><rect width="100%" height="100%" fill="#55595c"></rect>
            <img class="bd-placeholder-img card-img-top" src="https://www.kleague.com/assets/images/mobile/emblem/emblem_K21.png" alt="col image" width="225" height="225">
            <text x="50%" y="50%" fill="#eceeef" dy=".3em"></text></svg>
            <div class="card-body">
              <p class="card-text">7위팀</p>
              <div class="d-flex justify-content-between align-items-center">
                <div class="btn-group">
                  <button type="button" class="btn btn-sm btn-outline-secondary"  onclick="window.open('https://gangwon-fc.com/')" >홈페이지 이동 >></button>
                </div>
                <small class="text-muted">7위팀</small>
              </div>
            </div>
          </div>
        </div>
        
        <div class="col">
          <div class="card shadow-sm" style="height:auto; width:100%; border:2px solid black ">
            <!-- <svg class="bd-placeholder-img card-img-top" width="100%" height="225" xmlns="http://www.w3.org/2000/svg" role="img" aria-label="Placeholder: Thumbnail" preserveAspectRatio="xMidYMid slice" focusable="false"> -->
            <title>8위팀</title><rect width="100%" height="100%" fill="#55595c"></rect>
            <img class="bd-placeholder-img card-img-top" src="https://www.kleague.com/assets/images/mobile/emblem/emblem_K17.png" alt="col image" width="225" height="225">
            <text x="50%" y="50%" fill="#eceeef" dy=".3em"></text></svg>

            <div class="card-body">
              <p class="card-text">8위팀</p>
              <div class="d-flex justify-content-between align-items-center">
                <div class="btn-group">
                  <button type="button" class="btn btn-sm btn-outline-secondary"  onclick="window.open('https://daegufc.co.kr/main/')" >홈페이지 이동 >></button>
                </div>
                <small class="text-muted">8위팀</small>
              </div>
            </div>
          </div>
        </div>
        
        <div class="col">
          <div class="card shadow-sm" style="height:auto; width:100%; border:2px solid black ">
            <!-- <svg class="bd-placeholder-img card-img-top" width="100%" height="225" xmlns="http://www.w3.org/2000/svg" role="img" aria-label="Placeholder: Thumbnail" preserveAspectRatio="xMidYMid slice" focusable="false"> -->
            <title>9위팀</title><rect width="100%" height="100%" fill="#55595c"></rect>
            <img class="bd-placeholder-img card-img-top" src="https://www.kleague.com/assets/images/mobile/emblem/emblem_K09.png" alt="col image" width="225" height="225">
            <text x="50%" y="50%" fill="#eceeef" dy=".3em"></text></svg>
            <div class="card-body">
              <p class="card-text">9위팀</p>
              <div class="d-flex justify-content-between align-items-center">
                <div class="btn-group">
                  <button type="button" class="btn btn-sm btn-outline-secondary"  onclick="window.open('https://www.fcseoul.com/')" >홈페이지 이동 >></button>
                </div>
                <small class="text-muted">9위팀</small>
              </div>
            </div>
          </div>
        </div>
        
        <div class="col">
          <div class="card shadow-sm" style="height:auto; width:100%; border:2px solid black ">
            <!-- <svg class="bd-placeholder-img card-img-top" width="100%" height="225" xmlns="http://www.w3.org/2000/svg" role="img" aria-label="Placeholder: Thumbnail" preserveAspectRatio="xMidYMid slice" focusable="false"> -->
            <title>10위팀</title><rect width="100%" height="100%" fill="#55595c"></rect>
            <img class="bd-placeholder-img card-img-top" src="https://www.kleague.com/assets/images/mobile/emblem/emblem_K35.png" alt="col image" width="225" height="225">
            <text x="50%" y="50%" fill="#eceeef" dy=".3em"></text></svg>
            <div class="card-body">
              <p class="card-text">10위팀</p>
              <div class="d-flex justify-content-between align-items-center">
                <div class="btn-group">
                  <button type="button" class="btn btn-sm btn-outline-secondary"  onclick="window.open('http://gimcheonfc.com/')" >홈페이지 이동 >></button>
                </div>
                <small class="text-muted">10위팀</small>
              </div>
            </div>
          </div>
        </div>
        
        <div class="col">
          <div class="card shadow-sm" style="height:auto; width:100%; border:2px solid black ">
            <!-- <svg class="bd-placeholder-img card-img-top" width="100%" height="225" xmlns="http://www.w3.org/2000/svg" role="img" aria-label="Placeholder: Thumbnail" preserveAspectRatio="xMidYMid slice" focusable="false"> -->
            <title>11위팀</title><rect width="100%" height="100%" fill="#55595c"></rect>
            <img class="bd-placeholder-img card-img-top" src="https://www.kleague.com/assets/images/mobile/emblem/emblem_K02.png" alt="col image" width="225" height="225">
            <text x="50%" y="50%" fill="#eceeef" dy=".3em"></text></svg>
            <div class="card-body">
              <p class="card-text">11위팀</p>
              <div class="d-flex justify-content-between align-items-center">
                <div class="btn-group">
                  <button type="button" class="btn btn-sm btn-outline-secondary"  onclick="window.open('http://www.bluewings.kr/')" >홈페이지 이동 >></button>
                </div>
                <small class="text-muted">11위팀</small>
              </div>
            </div>
          </div>
        </div>
        
        <div class="col">
          <div class="card shadow-sm" style="height:auto; width:100%; border:2px solid black ">
           <!--  <svg class="bd-placeholder-img card-img-top" width="100%" height="225" xmlns="http://www.w3.org/2000/svg" role="img" aria-label="Placeholder: Thumbnail" preserveAspectRatio="xMidYMid slice" focusable="false"> -->
            <title>12위팀</title><rect width="100%" height="100%" fill="#55595c"></rect>
            <img class="bd-placeholder-img card-img-top" src="https://upload.wikimedia.org/wikipedia/ko/f/f3/%EC%84%B1%EB%82%A8_FC_%EB%A1%9C%EA%B3%A0.png" alt="col image" width="225" height="225">
            <text x="50%" y="50%" fill="#eceeef" dy=".3em"></text></svg>
            <div class="card-body">
              <p class="card-text">12위팀</p>
              <div class="d-flex justify-content-between align-items-center">
                <div class="btn-group">
                  <button type="button" class="btn btn-sm btn-outline-secondary"  onclick="window.open('https://www.seongnamfc.com/')" >홈페이지 이동 >></button>
                </div>
                <small class="text-muted">12위팀</small>
              </div>
            </div>
          </div>
        </div>
       </div>
    </div>


<div class="container">
  <footer class="row row-cols-5 py-5 my-5 border-top">
    <div class="col">      
    </div>

    <div class="col">
      <h5>*기 준*</h5>
      <ul class="nav flex-column">
        <li class="nav-item mb-2"><a href="#" class="nav-link p-0 text-muted">*2022년 07월*</a></li>
      </ul>
    </div>
    
    <div class="col">
      <h5>이 름</h5>
      <ul class="nav flex-column">
        <li class="nav-item mb-2"><a href="#" class="nav-link p-0 text-muted">엄 우 용</a></li>
      </ul>
    </div>

    <div class="col">
      <h5>이 메 일</h5>
      <ul class="nav flex-column">
        <li class="nav-item mb-2"><a href="#" class="nav-link p-0 text-muted">ewybusy@gmail.com</a></li>
      </ul>
    </div>

    <div class="col">
      <h5>연 락 처</h5>
      <ul class="nav flex-column">
        <li class="nav-item mb-2"><a href="#" class="nav-link p-0 text-muted">010-1234-5678</a></li>
      </ul>
    </div>
    
  </footer>
</div>



<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
</body>
</html>