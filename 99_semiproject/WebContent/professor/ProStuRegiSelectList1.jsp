<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>아이티윌대학교 포털</title>
<link href="../css/default.css" rel="stylesheet">
<link href="../js/default.js" rel="javascript">
<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
<script>
	$(function() {
		$('h3').click(function() {
			$('.aside-menu ul').hide();
			$(this).next().show();
		});

		$('.ul-toggle').click(function() {
			$('.ul-toggle-inner').show();
		});
	});
</script>
</head>
<body>

	<!-- header -->
	<jsp:include page="header.jsp"></jsp:include>

	<!-- content -->
	<div class="container study-manage">
		<!-- aside -->
		<aside>
			<div class="aside">
				<h2>교수</h2>
				<div class="aside-menu">
					<h3>개인정보관리</h3>
					<ul>
						<li><a href="professorSelect.jsp">개인정보 조회</a></li>
						<li><a href="professorUpdate.jsp">개인정보 수정</a></li>
					</ul>
					<h3>강의정보</h3>
					<ul>
						<li class="ul-toggle">강의 관리
							<ul class="ul-toggle-inner">
								<li><a href="proLectureSelect.jsp"> 강의 정보 조회 </a></li>
								<li><a href="proRegiInsert.jsp"> 학생 성적 입력 </a></li>
								<li><a href="proRegiUpdate.jsp"> 학생 성적 수정 </a></li>
							</ul>
					</ul>
				</div>
			</div>
		</aside>
		<!-- section -->
		<section>
			<div class="section">
				<div class="container">
					<h1>과목코드로 강의 수강자 리스트</h1>

					<table border="1">
						<thead>
							<tr>
								<th>학번</th>
								<th>이름</th>
								<th>학년</th>
								<th>휴대폰</th>
								<th>이메일</th>
								<th>전공</th>
								<th>점수</th>
								<th>성적</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach var="vo" items="${list }">
								<tr>
									<td><a href="proRegiInsert?st_id= ${vo.st_id}">${vo.st_id}</a></td>
									<td>${vo.st_name}</td>
									<td>${vo.st_level}</td>
									<td>${vo.st_mobile}</td>
									<td>${vo.st_email}</td>
									<td>${vo.ma_code}</td>
									<td>${vo.re_score}</td>
									<td>${vo.re_grade}</td>
								</tr> 
							</c:forEach>
						</tbody>

						<button type="button" onclick="location.href='proRegiInsert.jsp'">학생성적
							입력</button>

						<button type="button" onclick="location.href='proRegiUpdate.jsp'">학생성적
							수정</button>
				</div>
				

			</div>
		</section>
	</div>
	<!-- footer -->
	<jsp:include page="footer.jsp"></jsp:include>

	<%-- <!-- footer -->
	<jsp:include page="footer.jsp" ></jsp:include> --%>

</body>
</html>