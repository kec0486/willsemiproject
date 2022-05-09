<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>성적수정 ok</title>
</head>
<body>

	${list }

 	<table>
		<tr>
			<th>학생이름</th>
			<td>${vo.st_name}</td>
		</tr>
		<tr>
			<th>점수</th>
			<td>${vo.re_score}</td>

		</tr>
		<tr>
			<th>성적</th>
			<td>${vo.re_grade}</td>
		</tr>
	</table>
	
</body>
</html>