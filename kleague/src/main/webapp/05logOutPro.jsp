<%@page import="java.io.PrintWriter"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
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


