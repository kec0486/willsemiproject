<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>아이티윌대학교 포털사이트</title>
<link href="css/default.css" rel="stylesheet">
<link href="js/default.js" rel="javascript">
<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
<script type="text/javascript">
	function back() {
		location.href = "index.jsp";
	}
	function idsearch() {
		location.href = "controller?login=searchidfind";
	}
</script>
</head>
<body>
	<!-- content -->
	<div class="search_id">
		<h2 class="searchid_select">학부생 학번 조회</h2>
		<h3>이메일 인증</h3><br>
		<form action="controller?login=searchidfind" method="post">
			<input type="text" name="name" placeholder="성명" class="search_input"><br>
			<input type="email" name="email" placeholder="등록된 이메일 주소" class="search_input"><br>		
			<input type="submit" value="찾기" class ="search_btn" >
			<input type="submit" value="돌아가기" onclick="back()" class ="search_btn" >
		</form>
	</div>

	<!-- footer -->
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>