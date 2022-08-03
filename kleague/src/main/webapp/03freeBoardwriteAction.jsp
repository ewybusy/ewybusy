<%@page import="java.io.PrintWriter"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="bbs.BbsDAO" %>
<%@page import="java.io.PrintWriter" %>
<% request.setCharacterEncoding("UTF-8"); %>
<jsp:useBean id="bbs" class="bbs.Bbs" scope="page" />
<jsp:setProperty name="bbs" property="bbsTitle" />
<jsp:setProperty name="bbs" property="bbsContent" />
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
String userID=null;
if(session.getAttribute("userID") != null){
userID = (String) session.getAttribute("userID"); 
}

if (userID == null){
	PrintWriter script = response.getWriter();
	script.println("<script>");
	script.println("alert('로그인을 하세요.')");
	script.println("location.href = '05login.jsp'");
	script.println("</script>");
}else{
	if(bbs.getbbsTitle() == null || bbs.getbbsContent() == null){
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("alert('입력이 안 된 사항이 있습니다.')");
		script.println("history.back()"); // 이전 페이지로 회원을 돌려 보낸다.
		script.println("</script>");
		
	} else{
		BbsDAO bbsDAO = new BbsDAO();
		int result = bbsDAO.write(bbs.getbbsTitle(), userID, bbs.getbbsContent());
		if (result == -1){
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('글쓰기에 실패했습니다.')");
			script.println("history.back()"); // 이전 페이지로 회원을 돌려 보낸다.
			script.println("</script>");
		}
		else  {
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("location.href = '03freeBoard.jsp'");
			script.println("</script>");
		}
	}
}
		
	/* String id = request.getParameter("id");
	String pw = request.getParameter("pw"); */ 
%>




</body>
</html>
