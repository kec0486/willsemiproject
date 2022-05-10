<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
		
		//윈도우 팝업창으로 게시물 띄우기
		//window.open("tuition?type=tuitionCheck&st_id=" + st_id,"등록금조회", "_blank").resizeTo(400,500);
		
		//컨트롤러로 이동
		location.href = "tuition?type=tuitionCheck&st_id=" + st_id;
	}
	function student_go(st_id) {
			
			alert("student_go(st_id) 정상작동"); 
			
			//윈도우 팝업창으로 게시물 띄우기
			//window.open("tuition?type=tuitionCheck&st_id=" + st_id,"등록금조회", "_blank").resizeTo(400,500);
			
			//컨트롤러로 이동
			location.href = "student?type=list&st_id=" + st_id;
	}
	function go_stu(st_id) {
		alert("check_go(st_id} 정상작동");
		location.href = "student?type=studentSelectList&pro_id=" + pro_id;
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
				<!-- <h2>학생</h2> -->
				<!-- <div class="aside-search">
					<input type="text" placeholder="메뉴, 공지사항 검색...">
				</div> -->
				<div class="aside-menu">
					<h3>개인정보</h3>
					<ul>
						<li><a
							href="student?type=studentSelectList&st_id=${list.st_id }">학생
								정보 조회 / 수정</a></li>
					</ul>
					<h3>성적정보</h3>
					<ul>
						<li><a href="student/studentlist.jsp">학년별 성적 확인 / 전체 성적확인</a></li>
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
					<h1>학생 아이디 조회 목록</h1>

					<table class="styled-table">
						<thead style="text-align: center;">
							<tr>
								<th>학번(아이디)</th>
								<th>비번</th>
								<th>이름</th>
								<th>주민등록번호</th>
								<th>학년</th>
								<th>휴대폰 번호</th>
								<th>집전화 번호</th>
								<th>이메일</th>
								<th>집주소</th>
								<th>학과코드</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td><a href="#">${svo.st_id }</a></td>
								<td>${svo.st_pwd }</td>
								<td>${svo.st_name }</td>
								<td>${svo.st_ssn }</td>
								<td>${svo.st_level }</td>
								<td>${svo.st_mobile }</td>
								<td>${svo.st_phone }</td>
								<td>${svo.st_email }</td>
								<td>${svo.st_addr }</td>
								<td>${svo.ma_code }</td>
							</tr>
						</tbody>
					</table>

				</div>
			</div>
		</section>
	</div>
	<!-- footer -->
	<jsp:include page="footer.jsp"></jsp:include>
	-

</body>
</html>