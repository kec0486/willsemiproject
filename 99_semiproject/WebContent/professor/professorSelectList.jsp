<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>교수님 아이디 조회 목록</title>
<script>
	function go_update(){
		lacation.href="controller?type=professorUpdate";
	}

</script>
</head>
<body>
	<h1>교수님 아이디 조회 목록 [professorSelectList.jsp]</h1>
	
		<table border = "1" >
			<thead>
     			 <tr>
						<th> 아이디</th>
						<th> 비번</th>
						<th> 이름</th>
						<th> 직책</th>
						<th> 연구실</th>
						<th> 휴대폰 번호</th>
						<th> 집전화 번호</th>
						<th> 집주소</th>
						<th> 이메일</th>
						<th> 주민등록번호</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="vo" items="${list }">
				<tr>
				<td> ${vo.pro_id } </td>
				<td> ${vo.pro_pwd }</td>
				<td> ${vo.pro_name }</td>
				<td> ${vo.pro_position }</td>
				<td> ${vo.pro_office }</td>
				<td> ${vo.pro_mobile }</td>
				<td> ${vo.pro_phone } </td>
				<td> ${vo.pro_addr }</td>
				<td> ${vo.pro_email }</td>
				<td> ${vo.pro_ssn } </td>
				<!--  <td> ${vo.ma_code }</td>-->
					
					</tr>
				</c:forEach>
			</tbody>
		</table>
		<button type="button" onclick= "location.href='professorUpdate.jsp'">개인정보 수정</button>
		<button type="button" onclick= "location.href='professor.jsp'">목록으로 돌아가기</button>
	
	
</body>
</html>











