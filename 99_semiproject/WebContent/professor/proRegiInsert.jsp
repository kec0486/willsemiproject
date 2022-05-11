<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
			$('.ul-toggle-inner').show();
		});
	});
	function check_go(pro_id) {
	     // alert("check_go(st_id) 정상작동"); 
	      //컨트롤러로 이동
	      location.href = "controller?type=professorSelectList&pro_id=" + pro_id;
	   }
	   
	   function update_go(pro_id) {
	     // alert("update_go(st_id) 정상작동");
	      location.href = "controller?type=professorUpdate&pro_id=" + pro_id;
	      
	   }
	   
	   function check_prolec(pro_id){
	      //alert("update_go(st_id) 정상작동");
	      location.href = "controller?type=prolectureSelectList&pro_id=" + pro_id;
	      
	   }
	   function check_proup(pro_id){
	      //alert("check_proup(pro_id) 정상작동");
	      location.href = "controller?type=professorUpdate&pro_id=" + pro_id;
	      
	   }
	   function check_prolec(){
		   alert("등록 완료 ")
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
					<h1>학생성적 입력</h1>
					
						
					<table class="styled-table">
						<form action="controller?type=proRegiInsert_ok" method="post">
							<td> 학기 : <input type="text" name="sub_code" value="${srvo[0].re_term }" readonly="readonly"> </td>
							<td> 학번 : <input type="text" name="st_id" value="${srvo[0].st_id }" readonly="readonly"> </td>
							<td> 과목 : <input type="text" name="sub_code" value="${srvo[0].sub_code }" readonly="readonly"> </td> 
							<td> 점수 : <input type="text" name="re_score"> 
							<td> 성적 : <select id="re_grade" >
								<option>=== 선택 ===</option>
								<option value="A+">A+</option>
								<option value="A">A</option>
								<option value="B+">B+</option>
								<option value="B">B</option>
								<option value="C+">C+</option>
								<option value="C">C</option>
								<option value="D">D</option>
								<option value="F">F</option>
								</select></td>
								<br>
						</form>
					</table>
							<input type="submit" value="성적입력" onclick="check_prolec()"> 


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