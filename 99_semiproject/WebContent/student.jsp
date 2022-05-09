<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>학생 페이지</title>
<script>
	function stu_select(){ //교수 아이디 입력화면으로 가기 
		location.href = "student?type=list";
	}
	function stu_update(){
		location.href = "student?type=studentUpdate";		
	}
	function stu_check(){
		location.href = "studentRegiSelect.jsp";
	}

</script>
</head>
<body>
	<h1>학생 페이지 </h1>
		<button onclick="stu_select()">개인정보 조회</button>
		<button onclick="stu_update()">개인정보 수정</button>
		
		<button onclick="stu_check()">성적확인하기</button>
		

    
</body>
</html>