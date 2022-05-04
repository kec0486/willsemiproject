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
			<div class="container">
				<h1>학생정보신규등록</h1>
				<hr>
				<form action="admin?student=insert" method="post">
					비밀번호 <input type="text" name="pwd"><br>
					학생이름 <input type="text" name="name"><br>
					주민등록번호 <input type="text" name="ssn"><br>
					학년 
						1<input type="radio" name="level" value="1">
						2<input type="radio" name="level" value="2">
						3<input type="radio" name="level" value="3"><br>
					휴대폰번호 <input type="text" name="mobile"><br>
					집전화번호 <input type="text" name="phone"><br>
					이메일주소 <input type="email" name="email"><br>
					집주소 <input type="text" name="addr"><br>
					학과코드 <input type="text" name="code"><br>
					<input type="submit" value="등록"	>
				</form>
			</div>
		</section>
	</div>
	<!-- footer -->
	<jsp:include page="footer.jsp" ></jsp:include>


	
</body>
</html>