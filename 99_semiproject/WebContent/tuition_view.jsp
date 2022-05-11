<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>등록금 보기</title>
<style>
	table, th, td {
	border: 1px solid #444444;
	border-collapse: collapse;
	height: 40px;
	margin-left: 10px;
	text-align: center;
	}
	table  {
	width: 97%;
	margin-top: 40px;
	}
	th {
	 color: #ffffff;
	 background-color: #5a5a5a;
	}
	caption {
	 padding :0 0 20px 20px;
	 background:url(/img/blt.gif) center left no-repeat;
	 font_weight:bold;
	 font-size:1.4em;
	}

/* 전체 A4사이즈 상자에 담기 */
* {
  box-sizing: border-box;
  -moz-box-sizing: border-box;
}
body {
  width: 100%;
  height: 100%;
  margin: 0;
  padding: 0;
}
.page {
  width: 210mm; /* A4의 너비와 높이 지정 */
  height: 297mm;
  margin: 10mm auto;
  border: 10px double #444444;
}
@page {
  size: A4;
  margin: 0;
}
	
</style>
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
						<li><a href="student/studentlist.jsp">학생 정보 조회 / 수정</a></li>
					</ul>
					<h3>성적정보</h3>
					<ul>
						<li><a href="student/studentlist.jsp">학년별 성적 확인 / 전체 성적확인</a></li>
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
				<div class="page">
					<!-- <h1>container</h1> -->
					<div class="footer-sub">
					<br> <img src="img/로고.png" alt="학교 로고사진" height=35px>
					<span class="font">&nbsp; 아이티윌 대학교</span>
					</div>
					<br>
					<h1 style="text-align: center;">등록금납부확인서</h1>
					<table>
					<caption>[학 생 정 보]</caption>
						<thead>
							<tr>
								<th>학과</th>
								<th>학년</th>
								<th>학번</th>
								<th>성명</th>
							</tr>
						</thead>
					
						<tbody>
							<tr>
								<td>${mvo.ma_name }</td>
								<td>${list.st_level }학년</td>
								<td>${list.st_id }</td>
								<td>${list.st_name }</td>
								
							</tr>
						</tbody>
					</table>
					
					<table>
						<caption>[납 부 내 역]</caption>
						<thead>
							<tr>
								<th>납부여부</th>
								<th>기분</th>
								<th>고지금액</th>
								<th>구분</th>
								<th>학비감면</th>
								<th>실납부금액</th>
							</tr>
						</thead>
					
						<tbody>
							<tr>
								<td>${tvo.tu_state }</td>
								<td>1학기</td>
								<td><fmt:formatNumber value="${tvo.tu_tution }" type="currency"/></td>
								<td>수업료</td>
								<td><fmt:formatNumber value="0" type="currency"/></td>
								<td><fmt:formatNumber value="${tvo.tu_tution }" type="currency"/></td>
							</tr>
						</tbody>
					</table>
					
					<br><br><br><br><br><br>
					<br><br><br><br><br><br>
					<br><br><br><br><br><br>
					<p style="text-align: center;">위와 같이 등록금을 납부하였음을 확인합니다.</p>
					<br><br>
					<p style="text-align: center;">2022.05.11</p>
					<br><br>
					<h1 style="text-align: center;">아 이 티 윌 대 학 교 총 장</h1>
					
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
			</div>
		</section>
	</div>
	<%-- 	<!-- footer -->
	<jsp:include page="footer.jsp"></jsp:include> --%>
	
	
</body>
</html>