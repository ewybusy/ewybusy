<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!-- 파비콘(타이틀 왼쪽 그림) -->
<link href="https://media.cdnandroid.com/item_images/920521/imagen-k-league-k-ee-e-0thumb.jpeg" rel="shortcut icon" type="image/x-icon">
<title>로그인 페이지</title>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-gtEjrD/SeCtmISkJkNUaaKMoLD0//ElJ19smozuHV6z3Iehds+3Ulb9Bn9Plx0x4" crossorigin="anonymous"></script>

</head>
<body>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">
<link href="stylesheet" href="/resources/css/bootstrap.css">
<script type="text/javascript" src="/resource/js/bootstrap.js"></script>


<body class="text-center" style="cursor: url(&quot;null&quot;), default;">

<main class="form-signin">
  <form action="05loginPro.jsp" method="post">
<div class="modal-content rounded-5 shadow">
      <div class="modal-header p-5 pb-4 border-bottom-0">
        <!-- <h5 class="modal-title">Modal title</h5> -->
        <h2 class="fw-bold mb-0">로그인 페이지</h2>
        <!-- <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button> -->
      </div>

      <div class="modal-body p-5 pt-0">
        <form class="">
          <div class="form-floating mb-3">
            <input type="text" class="form-control rounded-4" id="userID" placeholder="ID" name ="userID">
            <label for="userID">ID</label>
          </div>
          
          <div class="form-floating mb-3">
            <input type="password" class="form-control rounded-4" id="userPassword" placeholder="PW" name="userPassword">
            <label for="userPassword">PW</label>
          </div>
          
          <button class="w-100 mb-2 btn btn-lg rounded-4 btn-primary" type="submit">Login</button>
          
          <hr class="my-4">
         
        </form>
      </div>
    </div>

</body>
</html>