<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>교수님 아이디 조회 목록</title>
<link href="../css/default.css" rel="stylesheet">
<link href="../js/default.js" rel="javascript">
<script>
	function go_update() {
		lacation.href = "professor?type=professorUpdate";
	}
</script>
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
.styled-table th,
.styled-table td {
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
				<table class="styled-table">
					<thead>
						<tr>
							<th>아이디</th>
							<th>비번</th>
							<th>이름</th>
							<th>직책</th>
							<th>연구실</th>
							<th>휴대폰 번호</th>
							<th>집전화 번호</th>
							<th>집주소</th>
							<th>이메일</th>
							<th>주민등록번호</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach var="vo" items="${list }">
							<tr>
								<td>${vo.pro_id }</td>
								<td>${vo.pro_pwd }</td>
								<td>${vo.pro_name }</td>
								<td>${vo.pro_position }</td>
								<td>${vo.pro_office }</td>
								<td>${vo.pro_mobile }</td>
								<td>${vo.pro_phone }</td>
								<td>${vo.pro_addr }</td>
								<td>${vo.pro_email }</td>
								<td>${vo.pro_ssn }</td>

							</tr>
						</c:forEach>
					</tbody>
				</table>
				<button type="button" onclick="location.href='professorUpdate.jsp'">개인정보
					수정</button>
				<button type="button" onclick="location.href='professor.jsp'">목록으로
					돌아가기</button>
			</div>
		</section>
		</div>
	
	<!-- footer -->
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>











