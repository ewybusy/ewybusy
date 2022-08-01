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
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
<title>게시판 내용</title>
</head>
<body>

<%
	String userID = null;
if (session.getAttribute("userID") != null){
	userID = (String) session.getAttribute("userID");
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
Bbs bbs = new BbsDAO().getbbs(bbsID);
%>

<div class="container">
<table class="table table-striped" style="text-align:center; border: 1px solid #dddddd"> 
<thead>
	<tr>
	<th colspan="10" style="background-color: eeeeee; text-align: center;">게시판 글보기 양식</th> 
	</tr>
</thead>

<tbody>
<tr>
<td>글 제목</td>
<td colspan="2"><%= bbs.getbbsTitle() %></td>
</tr>

<tr>
<td>작성자</td>
<td colspan="2"><%= bbs.getuserID() %></td>
</tr>

<tr>
<td>작성일자</td>
<td colspan="2"><%= bbs.getbbsDate().substring(0, 11) + bbs.getbbsDate().substring(11, 13) + "시" +
		bbs.getbbsDate().substring(14, 16) + "분" %></td>
</tr>

<tr>
<td>내용</td>
<td colspan="2" style="min-height: 200px; text-align: left;"><%= bbs.getbbsContent().replaceAll(" ", "&nbsp;").replaceAll("<", "&lt;").replaceAll(">", "&lt;") %></td>
</tr>
</tbody>
</table>

<a href="03freeBoard.jsp" class="btn btn-primary">목록</a>
<%
	if(userID != null && userID.equals(bbs.getuserID())){
%>
		<a href="update.jsp?bbsID=<%= bbsID %>" class="btn btn-primary">수정</a>
		<a href="deleteAction.jsp?bbsID=<%= bbsID %>" class="btn btn-primary">삭제</a>
		<%
	}
		%>
</div>
</tbody>


<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
</body>
</html>