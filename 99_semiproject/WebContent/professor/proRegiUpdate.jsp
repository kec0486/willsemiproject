<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>proRegiUpdate.jsp</title>
<link href="../css/default.css" rel="stylesheet">
<link href="../js/default.js" rel="javascript">

<script>
	var selectGrade = function(value) {
		console.log("성적 : " + value);
		$('#re_grade').val(value);
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
				<h1>학생성적 수정</h1>
				<table class="styled-table">
					<caption>학생성적수정</caption>

					<form action="professor" method="post">
						과목 코드 : <input type="text" name="sub_code" value='${vo.sub_code }' />
						학생 학번 : <input type="text" name="st_id" value="${vo.st_id }" />
						점수 : <input type="text" name="re_score" /> 성적 : <input
							type="text" name="re_grade" /> <select id="re_grade"
							onchange="selectGrade(this.val);">
							<option>=== 선택 ===</option>
							<option value="A+">A</option>
							<option value="A">A</option>
							<option value="B+">B+</option>
							<option value="B">B</option>
							<option value="C+">C+</option>
							<option value="C">C</option>
							<option value="D">D</option>
							<option value="F">F</option>
						</select> <input type="submit" value="성적수정"> <input type="hidden"
							name="type" value="proRegiUpdate_ok">

					</form>
				</table>
			</div>
		</section>
		<!-- footer -->
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>