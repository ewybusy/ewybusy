<%@page import="bbs.Bbs"%>
<%@page import="bbs.BbsDAO"%>
<%@page import="java.util.ArrayList"%>
<%@ page import = "java.io.PrintWriter" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!-- 부트스트랩 사용하기 위해 -->
<mete charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
??
<!-- 파비콘(타이틀 왼쪽 그림) -->
<link href="https://media.cdnandroid.com/item_images/920521/imagen-k-league-k-ee-e-0thumb.jpeg" rel="shortcut icon" type="image/x-icon">
<title>자유게시판</title>
</head>
<body>

<%
	String userID = null;
if(session.getAttribute("userID") != null){
	userID = (String)session.getAttribute("userID");
}
int pageNumber = 1; // 기본 1페이지
if(request.getParameter("pageNumber") != null){
	pageNumber = Integer.parseInt(request.getParameter("pageNumber"));
}
%>

<div class="container">
<form method="post" action="03freeBoardPro.jsp">

  <h2>자유게시판</h2>          

  <table class="table table-hover">
    <thead>
      <tr>
        <th>번호</th>
        <th>제목</th>
        <th>글쓴이</th>
        <th>작성일</th>
      </tr>
    </thead>

<tbody>

<%
	BbsDAO bbsDAO = new BbsDAO();
	ArrayList<Bbs> list = bbsDAO.getList(pageNumber);
	for(int i=0; i<list.size(); i++){
%>
 <tr>
       <td><%= list.get(i).getbbsID() %></td>

       <!-- 제목을 눌렀을때 해당 게시물로 이동, 해당번호에 맞는 페이지 나올 수 있게 -->
       <td><a href="03freeBoardView.jsp?bbsID=<%= list.get(i).getbbsID() %>"><%= list.get(i).getbbsTitle().replaceAll(" ", "&nbsp;").replaceAll("<", "&lt;").replaceAll(">", "&lt;") %></a>

       </td> 

       <td><%= list.get(i).getuserID() %></td> 
       <td><%= list.get(i).getbbsDate().substring(0, 11) + list.get(i).getbbsDate().substring(11, 13) + "시" +
        list.get(i).getbbsDate().substring(14, 16) + "분"%></td> 
   </tr>
   <%
       }
   %>
   
    </tbody>
   
</table>


 <!-- 페이지 이동 -->
<%
   if(pageNumber!=1) { //현재 페이지가 있는지, 버튼 생성	  
%>
  <a href = "03freeBoard.jsp?pageNumber=<%=pageNumber-1 %>" class="btn btn-success btn-arraw-left"> 
      이전
  </a>
<%
  } if(bbsDAO.nextPage(pageNumber+1)) { //다음 페이지가 존재하는지
%>
  <a href = "03freeBoard.jsp?pageNumber=<%=pageNumber+1 %>" class="btn btn-success btn-arraw-left">
      다음                
  </a>
<% 
  }
%>

	<a href="00index.jsp" class="btn btn-primary pull-left">메인이동</a>
  <a href="03freeBoardPro.jsp" class="btn btn-primary pull-right">글쓰기</a> 
        </div>
    </div>               

</body>  