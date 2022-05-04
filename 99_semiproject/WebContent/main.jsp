<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>아이티윌대학교 포털</title>
<link href="css/default.css" rel="stylesheet">
<link href="js/default.js" rel="javascript">
</head>
<body>

	<!-- header -->
	<jsp:include page="header.jsp"></jsp:include>
	
	<!-- content -->
	<div class="container">
		<!-- aside -->
		<aside>
			<div class="aside">
				<h2>학생</h2>
				<h3>개인정보</h3>
				<ul>
					<li><a href="student/studentlist.jsp">학생정보조회/및수정</a></li>
				</ul>
				<h3>성적정보</h3>
				<ul>
					<li><a href="student/studentlist.jsp">학년별성적확인/전체성정확인</a></li>
				</ul>
				<h3>수강정보</h3>
				<ul>
					<li><a href="admin?tuition=insert">시간표조회</a></li>
					<li>수강신청
						<ul>
							<li><a href="admin?tuition=insert">수강신청내역</a></li>
							<li><a href="admin?tuition=insert">교과목 조회</a></li>
						</ul>
					</li>
				</ul>
				<h3>고지서/증명서 조회</h3>
				<ul>
					<li><a href="admin?tuition=insert">증명서 발급</a></li>
				</ul>
			</div>
		</aside>
		<!-- section -->
		<section>
			<div class="section">
				<h1>container</h1>
			</div>
		</section>
	</div>
	<!-- footer -->
	<jsp:include page="footer.jsp" ></jsp:include>
	
</body>
</html>