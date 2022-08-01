<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!-- 부트스트랩 사용하기 위해 -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<title>게시판 글쓰기 페이지</title>
</head>

<body>

<form method="post" action="03freeBoardwriteAction.jsp">

<div class="container">

  <h2>게시판 글쓰기</h2>            

  <table class="table table-hover">

    <tbody>

      <tr>

      	<td><input type="text" class="form-control" placeholder="글 제목" name="bbsTitle" maxlength="50"></td>

      </tr>

      <tr>

      	<td><textarea class="form-control" placeholder="글 내용을 작성하세요" name="bbsContent" maxlength="2048" style="height: 400px;"></textarea></td> <!-- textarea는 장문의 글을 작성시에 사용 -->

      </tr>

    </tbody>
  </table>

  <input type="submit" class="btn btn-primary pull-right" value="글쓰기">
  

</form>
</div>

</form>
</body>
</html>