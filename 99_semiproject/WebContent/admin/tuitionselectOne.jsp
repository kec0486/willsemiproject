<%@page import="com.mystudy.college.model.vo.TuitionVO"%>
<%@page import="java.util.List"%>
<%@page import="java.util.Map"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.mystudy.college.model.dao.TuitionDAO"%>
<%@page import="com.mystudy.college.model.dao.StudentDAO"%>
<%@page import="com.mystudy.college.model.vo.StudentVO"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<% 	
	List<StudentVO> studentList = StudentDAO.selectAll();
	request.setAttribute("studentList", studentList);
	System.out.println("studentList: " + studentList);
	
	//key-value가 학생id-등록금 납부여부 인 map을, 모든 학생을 가져와서 List에 반환 
	List<Map<String, Object>> id_tuState = TuitionDAO.selectAll();
	session.setAttribute("id_tuState", id_tuState); //id-tuState의 map들의 List를 scope상에 등록
	System.out.println("> id_tuState : " + id_tuState);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>등록금 정보 조회</title>
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
				<h2>관리자</h2>
				<div class="aside-menu">
					<h3>학생/교수 정보관리</h3>
					<ul>
						<li class="ul-toggle">학생 정보 입력/조회
							<ul class="ul-toggle-inner">
								<li><a href="admin/studentinsert.jsp">학생정보등록</a></li>
								<li><a href="admin/studentupdate.jsp">학생정보수정</a></li>
								<li><a href="admin/studentlist.jsp">학생정보조회</a></li>
							</ul>
						</li>
						<li class="ul-toggle">교수 정보 입력/조회
							<ul class="ul-toggle-inner">
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
						<li><a href="tuitioninsert.jsp">등록금 정보입력</a></li>
						<li><a href="tuitionupdate.jsp">등록금 정보수정</a></li>
						<li><a href="tuitionselectList.jsp">등록금 정보 조회</a></li>
					</ul>
					<h3>공지사항등록</h3>
					<ul>
						<li><a href="board?tuition=insert">공지사항입력</a></li>
						<li><a href="board?tuition=update">공지사항수정</a></li>
						<li><a href="board?tuition=select">공지사항조회</a></li>
					</ul>
				</div>
			</div>
		</aside>
		<!-- section -->
		<section>
			<div class="section">
				<div class="container">
					<!-- <h1>container</h1> -->
					<h1>등록금 정보 조회</h1>
					<table>
						<thead>
							<tr>
								<th>학번</th>
								<th>학생이름</th>
								<th>단과대학</th>
								<th>전공</th>
								<th>학년</th>
								<th>등록금</th>
								<th>등록금 납부 여부</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach var="vo" items="${studentList }" varStatus="status">
								<tr>
									<td>${vo.st_id }</td>
									<td>${vo.st_name }</td>
									<td>${vo.ma_code }</td>
									<td>${vo.ma_code }</td>
									<td>${vo.st_level } </td>
									<td>${status.index }</td>
									<td>${id_tuState.get(0).get("TU_STATE").toString()}</td>
								</tr>
							</c:forEach>
						</tbody>
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