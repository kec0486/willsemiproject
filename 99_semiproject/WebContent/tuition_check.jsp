<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>등록금조회</title>
<script>
 function check_go(st_id) {
		
		alert("check_go(st_id) 정상작동"); 
		
		//윈도우 팝업창으로 게시물 띄우기
		//window.open("tuition?type=tuitionCheck&st_id=" + st_id,"등록금조회", "_blank").resizeTo(400,500);
		
		location.href = "tuition?type=tuitionCheck&st_id=" + st_id;
	}
</script>
</head>
<body>
	<!-- header -->
	<jsp:include page="header.jsp"></jsp:include>
	
<div class="search_id">
	<h2 class="searchid_select">등록금조회</h2>
	<a href="javascript:void(0);" onclick="check_go(${list.st_id});"> 등록금 조회</a>
	
</div>

</body>
</html>