<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>교수 개인정보를 조회</title>
<link href="../css/default.css" rel="stylesheet">
<link href="../js/default.js" rel="javascript">
<script>
	function pro_select(pro_id) { //교수 아이디 입력화면으로 가기 
		location.href = "professor?type=list";
	}
	function pro_update() {
		location.href = "professor?type=professorUpdate";
	}
	function lec_select() {
		location.href = "professor?type=prolectureSelect";
	}
</script>
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
							<li><a href="proRegiInsert.jsp">학생 성적 입력  </a></li>
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
				<h1>container</h1>
				<button onclick="pro_select(pro_id)">개인정보 조회</button>
				<button onclick="pro_update()">개인정보 수정</button>
				<button onclick="lec_select()">강의정보 조회</button>
				
			</div>
		</section>
	</div>
	<!-- footer -->
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>