<%@page import="java.io.PrintWriter"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="user.UserDAO" %>
<%@page import="java.io.PrintWriter" %>
<% request.setCharacterEncoding("UTF-8"); %>
<jsp:useBean id="user" class="user.User" scope="page" />
<jsp:setProperty name="user" property="userID" />
<jsp:setProperty name="user" property="userPassword" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login</title>
</head>
<body>
<%
	UserDAO userDAO = new UserDAO();
	int result = userDAO.login(user.getUserID(), user.getUserPassword());
	if (result == 1){
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("alert('로그인성공')");
		script.println("location.href = '00index.jsp'");
		script.println("</script>");
	}
	else if (result == 0) {
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("alert('비밀번호가 틀립니다.')");
		script.println("history.back()"); // 이전 페이지로 회원을 돌려 보낸다.
		script.println("</script>");
	}
	else if (result == -1) {
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("alert('존재하지 않는 아이디 입니다.')");
		script.println("history.back()"); // 이전 페이지로 회원을 돌려 보낸다.
		script.println("</script>");
	}
	else if (result == -2) {
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("alert('DB 오류가 발생하였습니다.')");
		script.println("history.back()"); // 이전 페이지로 회원을 돌려 보낸다.
		script.println("</script>");
	}
%>


</body>
</html>


