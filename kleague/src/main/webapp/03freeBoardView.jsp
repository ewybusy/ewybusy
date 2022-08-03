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
<!-- 파비콘(타이틀 왼쪽 그림) -->
<link href="https://media.cdnandroid.com/item_images/920521/imagen-k-league-k-ee-e-0thumb.jpeg" rel="shortcut icon" type="image/x-icon">
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
<div class="row">
</div>
<table class="table table-striped" style="text-align:center; border: 1px solid #dddddd"> 

<thead>
	<tr>
	<th colspan="2" style="background-color: eeeeee; text-align: center; font-size:40px;">게시판 글보기</th> 
	</tr>
</thead>

<tbody>
<tr>
<td style="width: 20%; font-size:20px;">글 제목</td>
<td colspan="2" style="font-size:20px;"><%= bbs.getbbsTitle().replaceAll(" ", "&nbsp;").replaceAll("<", "&lt;").replaceAll(">", "&lt;") %></td>
</tr>

<tr>
<td style="font-size:20px;">작성자</td>
<td colspan="2" style="font-size:20px;"><%= bbs.getuserID() %></td>
</tr>

<tr>
<td style="font-size:20px;">작성일자</td>
<td colspan="2" style="font-size:20px;"><%= bbs.getbbsDate().substring(0, 11) + bbs.getbbsDate().substring(11, 13) + "시" +
		bbs.getbbsDate().substring(14, 16) + "분" %></td>
</tr>

<tr>
<td style="font-size:20px;">내용</td>
<td colspan="2" style="height: 500px; font-size:20px;"><%= bbs.getbbsContent().replaceAll(" ", "&nbsp;").replaceAll("<", "&lt;").replaceAll(">", "&lt;").replaceAll("\n", "<br>") %></td>

</tr>
</tbody>
</table>

<a href="03freeBoard.jsp" class="btn btn-primary " style="font-size : 20px;">목록</a>
<%
	if(userID != null && userID.equals(bbs.getuserID())){
%>
		<a href="03freeBoardUpdate.jsp?bbsID=<%= bbsID %>" class="btn btn-primary" style="font-size : 20px;">수정</a>
		<a onclick="return confirm('정말로 삭제하시겠습니까?')" href="03freeBoardDeleteAction.jsp?bbsID=<%= bbsID %>" class="btn btn-primary" style="font-size : 20px;">삭제</a>
		<%
	}
		%>
</div>
</tbody>


<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
</body>
</html>