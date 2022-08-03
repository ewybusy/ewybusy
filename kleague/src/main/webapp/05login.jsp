<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login</title>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-gtEjrD/SeCtmISkJkNUaaKMoLD0//ElJ19smozuHV6z3Iehds+3Ulb9Bn9Plx0x4" crossorigin="anonymous"></script>

</head>
<body>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">
<link href="stylesheet" href="/resources/css/bootstrap.css">
<script type="text/javascript" src="/resource/js/bootstrap.js"></script>



<body class="text-center" style="cursor: url(&quot;null&quot;), default;">
    
<main class="form-signin">
  <form action="05loginPro.jsp" method="post">
    <h1 class="h3 mb-3 fw-normal">로그인 페이지</h1>

    <div class="form-floating">
      <input type="text" class="form-control" id="userID" name = "userID">
      <label for="userID">ID</label>
    </div>
    
    <div class="form-floating">
      <input type="password" class="form-control" id="userPassword" name="userPassword">
      <label for="userPassword">PW</label>
    </div>

    <button type="submit" button class="w-100 btn btn-lg btn-primary">로그인</button>
    
    <p class="mt-5 mb-3 text-muted">©2022 ~ </p>
  </form>
</main>

</body>

</body>
</html>


