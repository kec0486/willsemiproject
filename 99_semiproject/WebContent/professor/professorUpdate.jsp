<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>아이티윌대학교 포털</title>
<link href="../css/default.css" rel="stylesheet">
<link href="../js/default.js" rel="javascript">
<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
<
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
					<h1>container</h1>
					<h1>교수 개인정보 수정</h1>
					<form action="professor?type=professorUpdateList" method="post">
						<table class="styled-table">

							<tbody>
								<tr>
									<th>아이디</th>
									<td><input type="text" name="id" value="${list.pro_id } vodffd" readonly="readonly"></td>
									<th>비밀번호</th>
									<td><input type="text" name="pwd"></td>
									<th>주민등록번호</th>
									<td><input type="text" name="ssn"
										value="" readonly="readonly"></td>
								</tr>

								<tr>
									<th>직책</th>
									<td><input type="text" name="position"></td>
									<th>연구실</th>
									<td><input type="text" name="office"></td>
									<th>학사코드</th>
									<td><input type="text" name="maCode" readonly="readonly"></td>
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
					</form>


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