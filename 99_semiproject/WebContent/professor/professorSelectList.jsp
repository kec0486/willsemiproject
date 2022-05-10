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
<style>

</style>
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
					<br>
					<br>
					
					<h1>개인정보 조회</h1>
					
					<table class="styled-table">
						<thead style="text-align: center;">
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
								<tr>
									<td>${pvo.pro_id }</td>
									<td>${pvo.pro_pwd }</td>
									<td>${pvo.pro_name }</td>
									<td>${pvo.pro_position }</td>
									<td>${pvo.pro_office }</td>
									<td>${pvo.pro_mobile }</td>
									<td>${pvo.pro_phone }</td>
									<td>${pvo.pro_addr }</td>
									<td>${pvo.pro_email }</td>
									<td>${pvo.pro_ssn }</td>
								</tr>
							
						</tbody>
					</table>
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