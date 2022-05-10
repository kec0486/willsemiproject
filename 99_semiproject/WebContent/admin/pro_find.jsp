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
					<h1>교수정보조회</h1>
				<table class="st_find" border>
					<tr>
						<th>교수아이디(id)</th>
						<th>비밀번호</th>
						<th>교수이름</th>
						<th>주민등록번호</th>
						<th>직위</th>
						<th>연구실위치</th>
						<th>휴대폰번호</th>
						<th>집전화번호</th>
						<th>이메일주소</th>
						<th>집주소</th>
						<th>학과코드</th>
						<th>수정</th>
					</tr>
					<c:forEach var="vo" items="${list }">
						<tr>
							<td>${vo.pro_id }</td>
							<td>${vo.pro_pwd }</td>
							<td>${vo.pro_name }</td>
							<td>${vo.pro_ssn }</td>
							<td>${vo.pro_position }</td>
							<td>${vo.pro_office }</td>
							<td>${vo.pro_mobile }</td>
							<td>${vo.pro_phone }</td>
							<td>${vo.pro_email }</td>
							<td>${vo.pro_addr }</td>
							<td>${vo.ma_code }</td>
							<td><a href="controller?type=pro_update&id=${vo.pro_id }">수정</a></td>
	
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