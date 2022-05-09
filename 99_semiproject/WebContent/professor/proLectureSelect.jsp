<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>교수 나의 강의 목록 조회  </h1>
	<h1>proLectureSelect.jsp</h1>
	<form action="controller" method="post">
		교수 아이디  입력  : <input type="text" name="pro_id">
		<input type="submit" value="아이디로 검색">
		<input type="hidden" name="type" value="prolectureSelectList">
	</form>
</body>
</html>