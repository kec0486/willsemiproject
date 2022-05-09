<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>아이티윌대학교 포털</title>
<link href="../css/default.css" rel="stylesheet">
<link href="../js/default.js" rel="javascript">
</head>
<body>

	<!-- header -->
	<jsp:include page="header.jsp"></jsp:include>

	<!-- content -->
	<div class="container">
		<!-- aside -->
		<aside>
			<div class="aside">
				<h2>관리자</h2>
				<h3>학생/교수 정보관리</h3>
				<ul>
					<li>학생 정보 입력/조회
						<ul>
							<li><a href="admin/studentinsert.jsp">학생정보등록</a></li>
							<li><a href="admin/studentupdate.jsp">학생정보수정</a></li>
							<li><a href="admin/studentlist.jsp">학생정보조회</a></li>
						</ul>
					</li>
					<li>교수 정보 입력/조회
						<ul>
							<li><a href="admin/professorinsert.jsp">교수정보등록</a></li>
							<li><a href="admin/professorupdate.jsp">교수정보수정</a></li>
							<li><a href="admin/professorlist.jsp">교수정보조회</a></li>
						</ul>
					</li>
				</ul>
				<h3>수강정보관리</h3>
				<ul>
					<li><a href="admin?subject=insert">수강과목입력</a></li>
					<li><a href="admin?subject=update">수강과목수정</a></li>
					<li><a href="admin?subject=delete">수강과목삭제</a></li>
					<li><a href="admin?subject=select">수강과목조회</a></li>
				</ul>
				<h3>등록금정보관리</h3>
				<ul>
					<li><a href="admin?tuition=insert">등록금 정보입력</a></li>
					<li><a href="admin?tuition=update">등록금 정보수정</a></li>
					<li><a href="admin?tuition=select">등록금 정보 조회</a></li>
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
	<jsp:include page="footer.jsp"></jsp:include>

</body>
</html>