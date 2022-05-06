<%@page import="com.mystudy.college.mybatis.DBService"%>
<%@page import="org.apache.ibatis.session.SqlSession"%>
<%@page import="com.mystudy.college.model.dao.NoticeboardDAO"%>
<%@page import="com.mystudy.college.model.vo.NoticeboardVO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시글목록</title>
<style>
	#noticeboard table {
		width: 580px;
		margin-left: 10px;
		border-collapse: collapse;
		font-size: 14px;
	}
	#noticeboard table caption {
		font-size: 20px;
		font-weight: bold;
		margin-bottom: 10px;
	}
	#noticeboard th, #noticeboard td {
		border: 1px solid black;
		padding: 4px 10px;
		text-align: center;
	}
	#noticeboard .align-left { text-align: left; }
	
	.title { background-color: orange; }
	.no { width: 10%; }
	.writer { width: 15%; }
	.regdate { width: 20%; }
	
</style>
<script>
	function noticebaordView(n_num) {
		location.href = "noticeboard?type=noticeboardView&n_num"+ n_num;
	}
	function noticeboardList() {
		location.href = "noticeboard?type=noticeboardList";
	}
</script>
</head>
<body>
	
<div id="noticeboard">
	<table>
		<caption>게시글 목록</caption>
		<thead>
			<tr class="title">
				<th class="no">번호</th>
				<th class="subject">제목</th>
				<th class="writer">작성자</th>
				<th class="writer">관리자</th>
				<th class="regdate">날짜</th>
			</tr>
		</thead>
			
		<tbody>
		<c:choose>
		<c:when test="${empty list }">
			<tr>
				<td colspan="5">
					<h2>현재 등록된 게시글이 없습니다</h2>
				</td>
			</tr>
		</c:when>
		<c:otherwise>
			<c:forEach var="vo" items="${list }">
			<tr>
				<td>${vo.n_num }</td>
				<td class="align-left">
					<a href="javascript:void(0);" onclick="noticeboardView(${vo.n_num});">${vo.n_title }</a>
				</td>
				<td>${vo.c_id }</td>
				<td>${vo.ad_id }</td>
				<td>${vo.n_regdate }</td>
			</tr>
			</c:forEach>
		</c:otherwise>
		</c:choose>
		</tbody>
		
		<tfoot>
			<tr>
				<td>
					<input type="button" value="메인으로" onclick="index_go()"> 
				</td>
			</tr>
		</tfoot>
	</table>

</div>	
	
</body>
</html>