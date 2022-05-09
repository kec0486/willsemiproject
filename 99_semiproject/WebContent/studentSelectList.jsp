<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>학생 아이디 조회 목록</title>
<script>
	function go_update(){
		lacation.href="#";
	}

</script>
</head>
<body>
	<h1>학생 아이디 조회 목록 [professorSelectList.jsp]</h1>
	
		<table border = "1" >
			<thead>
     			 <tr>
						<th> 학번(아이디)</th>
						<th> 비번</th>
						<th> 이름</th>
						<th> 주민등록번호</th>
						<th> 학년</th>
						<th> 휴대폰 번호</th>
						<th> 집전화 번호</th>
						<th> 이메일</th>
						<th> 집주소</th>
						<th> 학과코드</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="vo" items="${list }">
				<tr>
				<td> ${vo.st_id } </td>
				<td> ${vo.st_pwd }</td>
				<td> ${vo.st_name }</td>
				<td> ${vo.st_ssn }</td>
				<td> ${vo.st_level }</td>
				<td> ${vo.st_mobile }</td>
				<td> ${vo.st_phone } </td>
				<td> ${vo.st_email }</td>
				<td> ${vo.st_addr }</td>
				<td> ${vo.ma_code } </td>
				<!--  <td> ${vo.ma_code }</td>-->
					
					</tr>
				</c:forEach>
			</tbody>
		</table>
		<button type="button" onclick= "location.href='professorUpdate.jsp'">개인정보 수정</button>
		<button type="button" onclick= "location.href='professor.jsp'">목록으로 돌아가기</button>
	
	
</body>
</html>











