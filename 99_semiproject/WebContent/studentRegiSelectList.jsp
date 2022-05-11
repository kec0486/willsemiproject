<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>아이티윌대학교 포털</title>
<link href="css/default.css" rel="stylesheet">
<link href="js/default.js" rel="javascript">
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
	
	function check_go(st_id) {
		alert("check_go(st_id) 정상작동"); 
		//컨트롤러로 이동
		location.href = "tuition?type=tuitionCheck&st_id=" + st_id;
	}
	function student_go(st_id) {
			
			alert("student_go(st_id) 정상작동"); 
			//컨트롤러로 이동
			location.href = "student?type=studentSelectList&st_id=" + st_id;
	}
	
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
				
				<div class="aside-menu">
						<h3>개인정보</h3>
					<ul>
						<li><a
							href="student?type=studentSelectList&st_id=${list.st_id }">학생
								정보 조회 / 수정</a></li>
					</ul>
					<h3>성적정보</h3>
					<ul>
						<li><a
							href="student?type=stuSubjectList&st_id=${list.st_id }">학년별
								성적 확인 / 전체 성적확인</a></li>
					</ul>
					<h3>수강정보</h3>
					<ul>
						<li><a href="admin?tuition=insert">시간표 조회</a></li>
						<li class="ul-toggle">수강신청
							<ul class="ul-toggle-inner">
								<li><a href="admin?tuition=insert">수강신청내역</a></li>
								<li><a href="admin?tuition=insert">교과목 조회</a></li>
							</ul>
						</li>
					</ul>
					<h3>고지서/증명서 조회</h3>
					<ul>
						<li><a href="javascript:void(0);"
							onclick="check_go(${list.st_id});">증명서 발급</a></li>
					</ul>
				</div>

			</div>
		</aside>
		<!-- section -->
		<section>
			<div class="section">
				<div class="container">
					<h1>전체성적 조회</h1>

					<table class="styled-table">
						<thead>
							<tr>
								<th>과목코드</th>
								<th>과목 이름</th>
								<th>학점</th>
								<th>학기</th>
								<th>점수</th>
								<th>성적</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach var="vo" items="${rso }">
								<tr>
									<td>${vo.sub_code }</td>
									<td>${vo.sub_name }</td>
									<td>${vo.sub_credit }</td>
									<td>${vo.re_term }</td>
									<td>${vo.re_score }</td>
									<td>${vo.re_grade }</td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
				</div>





				<div class="footer-sub">
					<br> <img src="img/로고.png" alt="학교 로고사진" height=35px> <span
						class="font">&nbsp; 아이티윌 대학교</span>
					<p>
						<span> 서울특별시 강남구 테헤란로 124 4층 (역삼동, 삼원타워) &nbsp;|&nbsp; TEL
							: 02-6255-8002 &nbsp;|&nbsp; FAX : 02-569-8069 </span><br> <span>
							copyright ⓒ 2021 WILL UNIVERSITY All Rights Reserved.</span> <br> <br>
						<br>
					</p>
				</div>

			</div>


		</section>
	</div>
	<%-- 	<!-- footer -->
	<jsp:include page="footer.jsp"></jsp:include> --%>

</body>
</html>