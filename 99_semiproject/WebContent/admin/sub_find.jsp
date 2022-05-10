<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
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
					<h1>수강과목정보조회</h1>
				<table class="st_find" border>
					<tr>
						<th>과목코드</th>
						<th>과목명</th>
						<th>학년</th>
						<th>학점</th>
						<th>강의요일</th>
						<th>강의시간</th>
						<th>강의실</th>
						<th>수정</th>
						<th>삭제</th>
					</tr>
					<c:forEach var="vo" items="${list }">
						<tr>
							<td>${vo.sub_code }</td>
							<td>${vo.sub_name }</td>
							<td>${vo.sub_level }</td>
							<td>${vo.sub_credit }</td>
							<td>${vo.sub_day }</td>
							<td>${vo.sub_time }</td>
							<td>${vo.sub_class }</td>
							<td><a href="controller?type=sub_update&code=${vo.sub_code }">수정</a></td>
							<td><a href="controller?type=sub_delete&code=${vo.sub_code }">삭제</a></td>
						</tr>
					</c:forEach>
				</table>
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