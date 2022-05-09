<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>proStuRegi.jsp</title>
</head>
<body>
	<h1>학생 성적 관리 페이지</h1>
	<h1>proStuRegi.jsp</h1>
	
	<form action="controller" method="post">
		과목코드  입력  : <input type="text" name="sub_code">
		<input type="submit" value="과목코드로 검색">
		<input type="hidden" name="type" value="ProStuRegiSelectList">
	</form>
	
	<h2>성적 입력 </h2>
	<button onclick="pro_stu_score_insert()"> 학생성적 입력 </button>
	<h2>성적 수정  </h2>
	<button onclick="pro_stu_score_update()"> 학생 성적 수정 </button>
</body>
</html>