<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.io.PrintWriter" %>
<%@ page import = "bbs.Bbs" %>
<%@ page import = "bbs.BbsDAO" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!-- 부트스트랩 사용하기 위해 -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<!-- 파비콘(타이틀 왼쪽 그림) -->
<link href="https://media.cdnandroid.com/item_images/920521/imagen-k-league-k-ee-e-0thumb.jpeg" rel="shortcut icon" type="image/x-icon">
<title>게시판 글수정 페이지</title>
</head>

<body>
<%
	String userID = null;
if (session.getAttribute("userID") != null){
	userID = (String) session.getAttribute("userID");
}
if(userID == null){
	PrintWriter script = response.getWriter();
	script.println("<script>");
	script.println("alert('로그인하세요.')");
	script.println("location.href = '05login.jsp'");
	script.println("</script>"); 
}
int bbsID = 0;
if(request.getParameter("bbsID") != null){
	bbsID = Integer.parseInt(request.getParameter("bbsID"));
}
 if (bbsID == 0){
	PrintWriter script = response.getWriter();
	script.println("<script>");
	script.println("alert('유효하지 않은 글입니다.')");
	script.println("location.href = '03freeBoard.jsp'");
	script.println("</script>"); 
 }
 Bbs bbs  = new BbsDAO().getbbs(bbsID);
 if (!userID.equals(bbs.getuserID())){
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("alert('권한이 없습니다.')");
		script.println("location.href = '03freeBoard.jsp'");
		script.println("</script>"); 
 }
%>


<div class="container">
<form method="post" action="03freeBoardUpdateAction.jsp?bbsID=<%= bbsID %>">
  <table class="table table-hover">
  <h2>게시판 글수정</h2>            

    <tbody>

      <tr>

      	<td><input type="text" class="form-control" placeholder="글 제목" name="bbsTitle" maxlength="50" value="<%= bbs.getbbsTitle() %>"></td>

      </tr>

      <tr>

      	<td><textarea class="form-control" placeholder="글 내용을 작성하세요" name="bbsContent" maxlength="2048" style="height: 400px;"><%= bbs.getbbsContent() %></textarea></td> <!-- textarea는 장문의 글을 작성시에 사용 -->

      </tr>

    </tbody>
  </table>

  <input type="submit" class="btn btn-primary pull-right" value="글수정">

</form>
</div>

</form>
</body>
</html>