<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>proRegiUpdate.jsp</title>
</head>
<body>
	<h1>proRegiUpdate.jsp</h1>
	<h1>학생성적 수정</h1>
	<table>
		<caption>학생성적수정</caption>
		
		<form action="controller" method="post">
		과목 코드  : <input type="text" name="sub_code">
		학생 학번  : <input type="text" name="st_id">
		
		점수  : <input type="text" name="re_score">
		성적  : <input type="text" name="re_grade">
		<input type="submit" value="성적수정">
		<input type="hidden" name="type" value="proRegiUpdate_ok">
		
	</form>
	</table>
		
</body>
</html>