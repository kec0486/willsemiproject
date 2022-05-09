<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1> 교수  강의 목록 </h1>
	<table border = "1" >
			<thead>
     			 <tr>
						<th> 과목코드</th>
						<th> 과목명</th>
						<th> 학년</th>
						<th> 학점</th>
						<th> 강의요일</th>
						<th> 강의시간</th>
						<th> 강의실</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="vo" items="${list }">
				<tr>
				<td> ${vo.sub_code } </td>
				<td> ${vo.sub_name }</td>
				<td> ${vo.sub_level }</td>
				<td> ${vo.sub_credit }</td>
				<td> ${vo.sub_day }</td>
				<td> ${vo.sub_time }</td>
				<td> ${vo.sub_class } </td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
		<button type="button" onclick= "location.href='proStuRegi.jsp'">학생성적관리</button> 
</body>
</html>