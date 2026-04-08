<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>게시글 만들기</h1>
<form action="./create" method="post">

  <div class="form-row">
    <div class="form-group col-md-2">
      <label for="numNumber">작성번호</label>
      <input type="text" name="numNumber" class="form-control" id="numNumber">
    </div>
    <div class="form-group col-md-2">
      <label for="name">작성자</label>
      <input type="text" class="form-control" id="name">
    </div>
  </div>
  <div class="form-group">
    <label for="title">제목</label>
    <input type="text" class="form-control" id="title" placeholder="제목을 입력하세요">
  </div>
  <div class="form-row">
    <div class="form-group col-md-6">
      <label for="contents">내용</label>
      <textarea name="contents" class="form-control" id="contents"></textarea>
    </div>
    <div class="form-group col-md-4">
      <label for="star">별점</label>
      <select id="star" class="form-control">
        <option selected>Choose...</option>
        <option value="1">중요도 1</option>
        <option value="2">중요도 2</option>
        <option value="3">중요도 3</option>
        <option value="4">중요도 4</option>
        <option value="5">중요도 5</option>
      </select>
    </div>
  </div>
  <div class="form-group">
    <label for="date">작성날짜</label>
    <input type ="date" name="date" class="form-control" id="date">
  </div>
  <button type="submit" class="btn btn-primary">등록하기</button>
</form>

</body>
</html>