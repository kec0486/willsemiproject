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
			//컨트롤러로 이동
			location.href = "student?type=studentSelectList&st_id=" + st_id;
	}
	
	function go_stu(st_id) {
		alert("check_go(st_id} 정상작동");
		location.href = "student?type=studentSelectList&stu_id=" + stu_id;
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
						<li><a
							href="student?type=stuSubjectList&st_id=${list.st_id }">학년별
								성적 확인 / 전체 성적확인</a></li>
					</ul>
					<h3>수강정보</h3>
					<ul>
						<li class="ul-toggle">수강신청
							<ul class="ul-toggle-inner">
								<li><a href="student?type=reg_find&id=${list.st_id }">수강신청내역</a></li>
								<li><a href="student?type=sub_select&id=${list.st_id }">교과목 조회</a></li>
							</ul>
						</li>
					</ul>
					<h3>고지서/증명서 조회</h3>
					<ul>
						<li><a href="javascript:void(0);" onclick="check_go(${list.st_id});">증명서 발급</a></li>
					</ul>
				</div>

			</div>
		</aside>
		<!-- section -->
		<section>
			<div class="section">
				<div class="container">
					<!-- <h1>container</h1> -->
				</div>
				
				
				
				
				
				<div class="footer-sub">
					<br> <img src="img/로고.png" alt="학교 로고사진" height=35px>
					<span class="font">&nbsp; 아이티윌 대학교</span>
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