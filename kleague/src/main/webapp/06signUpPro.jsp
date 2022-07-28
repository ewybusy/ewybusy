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
	if(user.getUserID() == null || user.getUserPassword() == null){
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("alert('입력이 안 된 사항이 있습니다.')");
		script.println("history.back()"); // 이전 페이지로 회원을 돌려 보낸다.
		script.println("</script>");
		
	} else{
		UserDAO userDAO = new UserDAO();
		int result = userDAO.join(user);
		if (result == -1){
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('이미 존재하는 아이디입니다.')");
			script.println("history.back()"); // 이전 페이지로 회원을 돌려 보낸다.
			script.println("</script>");
		}
		else  {
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("location.href = '00index.jsp'");
			script.println("</script>");
		}

	}
		

	/* String id = request.getParameter("id");
	String pw = request.getParameter("pw"); */ 
%>
	



</body>
</html>


