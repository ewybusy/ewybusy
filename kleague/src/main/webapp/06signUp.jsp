<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-gtEjrD/SeCtmISkJkNUaaKMoLD0//ElJ19smozuHV6z3Iehds+3Ulb9Bn9Plx0x4" crossorigin="anonymous"></script>
</head>
<body>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">

<body class="text-center" style="cursor: url(&quot;null&quot;), default;">

<main class="form-signin">

<h1 class="h3 mb-3 fw-normal">회원가입 페이지</h1>
	<form action ="06signUpPro.jsp" method="post">
	  
	<div class="form-floating">
		<input type="text" class="form-control" id="userID" name = "userID">
		<label for="userID">ID</label>
	</div>
	
	<div class="form-floating">
		<input type="text" class="form-control" id="userPassword" name = "userPassword">
		<label for="userPassword">PW</label>
	</div>
	
	<button class="w-100 btn btn-lg btn-primary" type="submit">회원가입</button>
	
	<p class="mt-5 mb-3 text-muted">©2022 ~ </p>
	</form>
</main>


</body>
</html>