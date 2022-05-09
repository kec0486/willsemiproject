<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>proRegiInsert.jsp</title>
</head>
<body>
	<h1>proRegiInsert.jsp</h1>
	<h1>학생성적 입력</h1>
	<table>
		<caption>학생성적입력</caption>
		
		<form action="controller" method="post">
		과목  : <input type="text" name="sub_code">
		학생 이름  : <input type="text" name="st_name">
		점수  : <input type="text" name="re_score">
		성적  : <input type="text" name="re_grade">
		<input type="submit" value="성적입력">
		<input type="hidden" name="type" value="proRegiInsert_ok">
		
	</form>
		
</body>
</html>