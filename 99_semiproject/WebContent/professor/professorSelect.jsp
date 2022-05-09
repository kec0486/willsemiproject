<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>교수 개인정보 조회 페이지 </title>
</head>
<body>
	<h1>교수 개인정보 조회 </h1>
	<h1>professorSelect.jsp</h1>
	<form action="controller" method="post">
		교수 아이디  입력  : <input type="text" name="selectId">
		<input type="submit" value="아이디로 검색">
		<input type="hidden" name="type" value="professorSelectList">
	</form>
	
</body>
</html>