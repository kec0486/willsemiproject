<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>아이티윌대학교 포털사이트</title>
<link href="../css/default.css" rel="stylesheet">
<link href="../js/default.js" rel="javascript">
<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
<script type="text/javascript">
	function login() {
		location.href = "index.jsp";
	}
</script>
</head>
<body>
	<!-- content -->
	<div class="search_id">
		<h2 class="searchid_select">학부생 학번 조회</h2>
		<div>
			<h3>홍길동님의 조회 정보</h3>
			<table class="search_table">
				<colgroup>
					<col width="50%"></col> 
					<col width="50%"></col> 
				</colgroup>
				<tr>
					<th>학번/교번</th>
					<th>소속</th>
				</tr>
				<tr>
					<td>${list.st_id }</td>
					<td>${maname.ma_name }</td>
				</tr>
			</table>
		
		</div>
		<button class ="search_btn" onclick="login()">로그인</button>
	</div>

	<!-- footer -->
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>