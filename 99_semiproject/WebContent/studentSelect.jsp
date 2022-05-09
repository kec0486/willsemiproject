<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> 학생 개인정보 조회 페이지 </title>
</head>
<body>
	<h1>학생 개인정보 조회 </h1>
	<form action="student?type=studentSelectList" method="post">
		학번  입력  : <input type="text" name="selectId">
		<input type="submit" value="학번으로 검색">
		<input type="hidden" name="type" value="studentSelectList">
	</form>
	
</body>
</html>