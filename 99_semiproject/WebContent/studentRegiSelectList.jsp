<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>전체성적 조회 </title>
</head>
<body>
	<h1>  전체성적 조회  </h1>
	
	<table border="1">
		<thead>
			<tr>
				<th>과목코드</th>
				<th>학기</th>
				<th>점수</th>
				<th>성적</th>
				<th>과목 이름</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach var="vo" items="${list }">
				<tr>
					<td>${vo.sub_code }</td>
					<td>${vo.re_term }</td>
					<td>${vo.re_score }</td>
					<td>${vo.re_grade }</td>
					<td>${vo.sub_name }</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
</body>
</html>