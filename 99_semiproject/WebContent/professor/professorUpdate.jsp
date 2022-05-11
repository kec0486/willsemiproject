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
<
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
	function check_go(pro_id) {
	      //alert("check_go(st_id) 정상작동"); 
	      //컨트롤러로 이동
	      location.href = "controller?type=professorSelectList&pro_id=" + pro_id;
	   }
	   
	   function update_go(pro_id) {
	     // alert("update_go(st_id) 정상작동");
	      location.href = "controller?type=professorUpdate&pro_id=" + pro_id;
	      
	   }
	   
	   function check_prolec(pro_id){
	     // alert("update_go(st_id) 정상작동");
	      location.href = "controller?type=prolectureSelectList&pro_id=" + pro_id;
	      
	   }
	   function check_proup(pro_id){
	      //alert("check_proup(pro_id) 정상작동");
	      location.href = "controller?type=professorUpdate&pro_id=" + pro_id;
	      
	   }
	   function done() {
		alert("완료");
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
            <h2>교수</h2>
            <div class="aside-menu">
               <h3>개인정보관리</h3>
               <ul>
                  <li><a href="javascript:void(0);" onclick="check_go(${list.pro_id });">개인정보 조회</a></li>
                  <li><a href="javascript:void(0);" onclick="check_proup(${list.pro_id })">개인정보 수정</a></li>
               </ul>
               <h3>강의정보</h3>
               <ul>
                  <li class="ul-toggle">강의 관리
                     <ul class="ul-toggle-inner">
                        <li><a href="javascript:void(0);" onclick="check_prolec(${list.pro_id })"> 강의 정보 조회 </a></li>
                        <li><a href="proStuRegi.jsp"> 학생 성적 입력 </a></li>
                        <li><a href="proRegiUpdate.jsp"> 학생 성적 수정  </a></li>
                     </ul>
               </ul>
            </div>
         </div>
      </aside>
		<!-- section -->
		<section>
			<div class="section">
				<div class="container">
					<h1>container</h1>
					<h1>교수 개인정보 수정</h1>
					<caption>아이디, 주민등록번호, 학사코드는 수정이 불가능합니다.</caption>

					<form action="controller?type=professorUpdateList&pro_id" method="post">
						<table class="styled-table">

							<tbody>
								<tr>
									<th>아이디</th>
									<td><input type="text" name="id" value="${pvo.pro_id }"
										readonly="readonly"></td>
									<th>비밀번호</th>
									<td><input type="text" name="pwd" value="${pvo.pro_pwd}"></td>
									<th>주민등록번호</th>
									<td><input type="text" name="ssn" value="${pvo.pro_ssn}"
										readonly="readonly"></td>
								</tr>

								<tr>
									<th>직책</th>
									<td><input type="text" name="position"
										value="${pvo.pro_position}"></td>
									<th>연구실</th>
									<td><input type="text" name="office"
										value="${pvo.pro_office}"></td>
									<th>학사코드</th>
									<td><input type="text" name="maCode"
										value="${pvo.ma_code }" readonly="readonly"></td>
								</tr>
								<tr>

									<th>전화번호</th>
									<td><input type="text" name="mobile"
										value="${pvo.pro_phone}"></td>
									<th>핸드폰</th>
									<td><input type="text" name="phone"
										value="${pvo.pro_mobile}"></td>
								</tr>
								<tr>
									<th>이메일</th>
									<td><input type="text" name="email"
										value="${pvo.pro_email}"></td>
									<th>주소</th>
									<td colspan="5"><input type="text" name="addr"
										value="${pvo.pro_addr}"></td>

								</tr>

							</tbody>
						</table>
						<input type="submit" value="개인정보 수정하기" onclick="done()"> 
					</form>


				</div>


			</div>
		</section>
	</div>
	<!-- footer -->
	<jsp:include page="footer.jsp"></jsp:include>

	<%-- <!-- footer -->
	<jsp:include page="footer.jsp" ></jsp:include> --%>

</body>
</html>