<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>학생 성적 조회</title>
<script>
	function go_student() {
		location.href = "student.jsp";
	}
</script>
</head>
<body>
	<h1>학생 성적 조회</h1>
	<form action="student?type=studentRegiSelectList" method="post">
		학번 입력 : <input type="text" name="st_id"> <input type="submit"
			value="학번으로 검색"> <input type="hidden" name="type"
			value="studentRegiSelectList">
	</form>

	<button onclick="go_student()">돌아가기</button>

</body>
</html>