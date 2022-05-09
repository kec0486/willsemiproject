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
	function back() {
		location.href = "index.jsp";
	}
	function emailsearch() {
		location.href = "searchidfind.jsp"
	}
</script>
</head>
<body>
	<!-- content -->
	<div class="search_id">
		<h2 class="searchid_select">학부생 학번 조회</h2>
		<button class ="search_btn" onclick="emailsearch()">이메일<br>(학생)</button><br>
		<button class ="search_btn" onclick="back()">돌아가기</button>
	</div>

	<!-- footer -->
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>