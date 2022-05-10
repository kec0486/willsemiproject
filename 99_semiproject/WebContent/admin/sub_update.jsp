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
<script>
	$(function() {
		$('h3').click(function() {
			$('.aside-menu ul').hide();
			$(this).next().show();
		});

		$('.ul-toggle').click(function() {
			if($('.ul-toggle-inner').css("display") == "none"){
			    $('.ul-toggle-inner').show();
			} else {
			    $('.ul-toggle-inner').hide();
			}
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
				<h2>관리자</h2>
				<div class="aside-menu">
					<h3>학생/교수 정보관리</h3>
					<ul>
						<li class="ul-toggle">학생 정보 입력/조회
							<ul class="ul-toggle-inner">
								<li><a href="st_insert.jsp">학생정보등록</a></li>
								<li><a href="controller?type=st_find">학생정보조회</a></li>
							</ul>
						</li>
						<li class="ul-toggle">교수 정보 입력/조회
							<ul class="ul-toggle-inner">
								<li><a href="pro_insert.jsp">교수정보등록</a></li>
								<li><a href="controller?type=pro_find">교수정보조회</a></li>
							</ul>
						</li>
					</ul>
					<h3>수강정보관리</h3>
					<ul>
						<li><a href="sub_insert.jsp">수강과목등록</a></li>
						<li><a href="controller?type=sub_find">수강과목조회</a></li>
					</ul>
					<h3>등록금정보관리</h3>
					<ul>
						<li><a href="admin?tuition=insert">등록금 정보입력</a></li>
						<li><a href="admin?tuition=update">등록금 정보수정</a></li>
						<li><a href="admin?tuition=select">등록금 정보 조회</a></li>
					</ul>
					<h3>공지사항등록</h3>
					<ul>
						<li><a href="board?tuition=insert">등록금 정보입력</a></li>
						<li><a href="board?tuition=update">등록금 정보수정</a></li>
						<li><a href="board?tuition=select">등록금 정보 조회</a></li>
					</ul>
				</div>
			</div>
		</aside>
		<!-- section -->
		<section>
			<div class="section">
				<div class="container">
					<h1>학생정보수정</h1>
				<hr>
				<form action="controller?type=sub_update_ok" method="post">
					과목코드 <input type="text" name="code" value="${list.sub_code }" readonly="readonly"><br>
					과목명 <input type="text" name="name" value="${list.sub_name }"><br>
					학년  <input type="text" name="level" value="${list.sub_level }"><br>
					학점 <input type="text" name="credit" value="${list.sub_credit }"><br>
					강의요일 <input type="text" name="day" value="${list.sub_day }"><br>
					강의시간 <input type="text" name="time" value="${list.sub_time }"><br>
					강의실 <input type="text" name="class" value="${list.sub_class }"><br>
					<input type="submit" value="수정"	><input type="reset" value="리셋"	>
				</form>
				</div>
				<div class="footer-sub">
					<br> <img src="../img/로고.png" alt="학교 로고사진" height=35px>
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
	<%-- <!-- footer -->
	<jsp:include page="footer.jsp" ></jsp:include> --%>
	
</body>
</html>

	
</body>
</html>