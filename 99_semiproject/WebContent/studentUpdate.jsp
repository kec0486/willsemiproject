<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
//0. 전달받은 데이터 확인(session에 있는 데이터)
//System.out.print(">> update.jsp session guestbookVO : " + session.getAttribute("guestbookVO"));
%>
<link rel="stylesheet" type="text/css" href="">

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>학생 개인정보 수정</title>
<script>
	
</script>
</head>
<body>
	<h2>학생 개인정보 수정</h2>
	<form action="student?type=studentUpdateList" method="post">
		<table border="1">

			<tbody>
				<tr>
					<th>아이디</th>
					<td><input type="text" name="st_id"></td>
					<th>이름</th>
					<td><input type="text" name="st_name"></td>
					<th>비밀번호</th>
					<td><input type="text" name="st_pwd"></td>
					<th>주민등록번호</th>
					<td><input type="text" name="st_ssn" value=""></td>
				</tr>
				<tr>
					<th>전화번호</th>
					<td><input type="text" name="st_mobile"></td>
					<th>핸드폰</th>
					<td><input type="text" name="st_phone"></td>
				</tr>
				<tr>
					<th>이메일</th>
					<td><input type="text" name="st_email"></td>
					<th>주소</th>
					<td colspan="5"><input type="text" name="st_addr"></td>
				</tr>
				<tr>
					<th>학년</th>
					<td><input type="text" name="st_level" value=""></td>
					<th>학과코드</th>
					<td><input type="text" name="st_maCode"></td>
				</tr> 
			</tbody>
		</table>

		<input type="submit" value="개인정보 수정하기"> <input type="hidden"
			name="type" value="studentUpdateList">
	</form>



</body>
</html>

