<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>교수 개인이 자신의 개인정보를 조회</title>
<script>
	function pro_select(){ //교수 아이디 입력화면으로 가기 
		location.href = "controller?type=list";
	}
	function pro_update(){
		location.href = "controller?type=professorUpdate";		
	}
	function lec_select(){
		location.href = "controller?type=prolectureSelect";
	}
 
</script>
</head>
<body>
	<h1>교수 페이지 </h1>
		<button onclick="pro_select()">개인정보 조회</button>
		<button onclick="pro_update()">개인정보 수정</button>
		<button onclick="lec_select()">강의정보 조회 </button>
		

    
</body>
</html>