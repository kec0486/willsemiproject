<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ProStuRegiSelectList1.jsp</title>
</head>
<body>

	<h1>과목코드로 강의 수강자 리스트</h1>

	<table border = "1" >
			<thead>
     			 <tr>
						<th> 학번 </th>
						<th> 이름 </th>
						<th> 학년 </th>
						<th> 휴대폰</th>
						<th> 이메일</th>
						<th> 전공</th>
						<th> 점수</th>
						<th> 성적</th>
				</tr>
			</thead>
			<tbody>
			<c:forEach var="vo" items="${list }">
			<tr>
				<td><a href="proRegiInsert?st_id"> ${vo.st_id} </a></td>
				<td> ${vo.st_name} </td>
				<td> ${vo.st_level} </td>
				<td> ${vo.st_mobile} </td>
				<td> ${vo.st_email} </td>
				<td> ${vo.ma_code} </td>
				<td> ${vo.re_score} </td>
				<td> ${vo.re_grade} </td>
			</tr>
			</c:forEach>
			</tbody>
	
	<button type="button" onclick= "location.href='proRegiInsert.jsp'">학생성적 입력 </button> 
	
	<button type="button" onclick= "location.href='proRegiUpdate.jsp'">학생성적 수정</button> 
	
</body>
</html>