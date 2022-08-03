<%@page import="java.io.PrintWriter"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!-- 파비콘(타이틀 왼쪽 그림) -->
<link href="https://media.cdnandroid.com/item_images/920521/imagen-k-league-k-ee-e-0thumb.jpeg" rel="shortcut icon" type="image/x-icon">
<title>Login</title>
</head>
<body>


<%
	session.invalidate(); // session을 빼앗기도록 설정 (로그아웃)
%>
	<script>
	location.href = '00index.jsp';
	</script>
	



</body>
</html>


