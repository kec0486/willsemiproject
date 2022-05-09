<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>prosessorUpdate.jsp</title>
<link href="../css/default.css" rel="stylesheet">
<link href="../js/default.js" rel="javascript">
<style>
.styled-table {
	border-collapse: collapse;
	margin: 25px 0;
	font-size: 0.9em;
	font-family: sans-serif;
	min-width: 400px;
	box-shadow: 0 0 20px rgba(0, 0, 0, 0.15);
}

.styled-table thead tr {
	background-color: #009879;
	color: #ffffff;
	text-align: left;
}

.styled-table th, .styled-table td {
	padding: 12px 15px;
}

.styled-table tbody tr {
	border-bottom: 1px solid #dddddd;
}

.styled-table tbody tr:nth-of-type(even) {
	background-color: #f3f3f3;
}

.styled-table tbody tr:last-of-type {
	border-bottom: 2px solid #009879;
}
</style>
</head>
<body>
	<!-- header -->
	<jsp:include page="header.jsp"></jsp:include>
	<!-- content -->
	<div class="container">
		<!-- aside -->
		<aside>
			<div class="aside">
				<h2>교수</h2>
				<h3>학생/교수 정보관리</h3>
				<ul>
					<li>개인정보 관리
						<ul>
							<li><a href="professorSelect.jsp">개인정보 조회 </a></li>
							<li><a href="professorUpdate.jsp">개인정보 수정 </a></li>
						</ul>
					</li>
					<li>강의정보 관리
						<ul>
							<li><a href="proLectureSelect.jsp">나의 강의 정보 조회</a></li>
							<li><a href="proRegiInsert.jsp">학생 성적 입력 </a></li>
							<li><a href="proRegiUpdate.jsp">학생 성적 수정 </a></li>
						</ul>
					</li>
				</ul>


			</div>
		</aside>

		<h1>교수 페이지</h1>
		<!-- section -->
		<section>
			<div class="section">
				<h1>교수 개인정보 수정</h1>
				<form action="professor?type=professorUpdateList" method="post">
					<table class="styled-table">

						<tbody>
							<tr>
								<th>아이디</th>
								<td><input type="text" name="id" value=" "></td>
								<!-- readonly -->
								<th>비밀번호</th>
								<td><input type="text" name="pwd"></td>
								<th>주민등록번호</th>
								<td><input type="text" name="ssn"
									value="${ProfessorVO.pro_ssn }"></td>
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
								<td><input type="text" name="email"></td>
								<th>주소</th>
								<td colspan="5"><input type="text" name="addr"></td>

							</tr>

						</tbody>

					</table>

					<input type="submit" value="개인정보 수정하기"> <input
						type="hidden" name="type" value="professorUpdateList">
				</form>
		</section>
	</div>

	<!-- footer -->
	<jsp:include page="footer.jsp"></jsp:include>


</body>
</html>