<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>prosessorUpdate.jsp</title>
</head>
<body>
	<h1>prosessorUpdate.jsp</h1>
	<h1>교수 개인정보 수정</h1>
	<form action="controller?type=professorUpdateList" method="post">
		<table border="1">
		
			<tbody>
				<tr>
					<th>아이디</th>
					<td><input type="text" name="id"></td> <!-- readonly -->
					<th>비밀번호</th>
					<td><input type="text" name="pwd"></td>
					<th>주민등록번호</th>
					<td><input type="text" name="ssn"  value="${ProfessorVO.pro_ssn }"></td>
					</tr>
					
					<tr>
					<th>직책</th>
					<td><input type="text" name="position"></td>
					<th>연구실</th>
					<td><input type="text" name="office"></td>
					<th>학사코드</th>
					<td><input type="text" name="maCode"></td>
				</tr>
				<tr>
					
					<th>전화번호</th>
					<td><input type="text" name="mobile"></td>
					<th>핸드폰</th>
					<td><input type="text" name="phone"></td>
				</tr>
				<tr>
					<th>이메일</th>
					<td ><input type="text" name="email"></td>
					<th >주소</th>
					<td colspan="5"><input type="text" name="addr"></td>
					
				</tr>

			</tbody>
			
		</table>
		
		<input type="submit" value="개인정보 수정하기"> 
		<input type="hidden" name="type" value="professorUpdateList">
	</form>
	


</body>
</html>