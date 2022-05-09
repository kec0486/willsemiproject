<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>교수 나의 강의 목록 조회</title>
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
					<h1>교수 나의 강의 목록 조회</h1>
					<form action="professor" method="post" class="styled-table">
						교수 아이디 입력 : <input type="text" name="pro_id"> <input
							type="submit" value="아이디로 검색"> <input type="hidden"
							name="type" value="prolectureSelectList">
					</form>
			</div>
		</section>
	</div>

	<!-- footer -->
	<jsp:include page="footer.jsp"></jsp:include>

</body>
</html>