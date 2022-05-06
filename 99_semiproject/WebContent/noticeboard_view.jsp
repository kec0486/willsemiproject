<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시물보기</title>
<style>
	#container {
		width: 512px; margin: auto;
		/* border: 1px solid blue; */
	}
	#container h2 { text-align: center; }
	#container p { text-align: center; }
	#container table{
		width: 100%;
		border-collapse: collapse;
	}
	#container th{ background-color: #9cf;}
	#container th, #container td {border: 1px solid black;}
	.center{text-align: center;}
	#container tfoot{ text-align: center;}
</style>
</head>
<body>

<div id="container">
	<h2>게시물 : 상세보기</h2>
	<hr>
	
	<%-- 게시글 내용 표시 --%>
	<table>
		<tbody>
			<caption>상세보기</caption>
				<tr>
					<th>제목</th>
					<td>${vo.n_title }</td>
				</tr>
				<tr>
					<th>작성자</th>
					<td>${vo.c_id }</td>
				</tr>
				<tr>
					<th>관리자</th>
					<td>${vo.ad_id }</td>
				</tr>
				<tr>
					<th>첨부파일</th>
					<td>
						<c:if test="${empty vo.n_savefilename }">
							첨부파일없음
						</c:if>
						<c:if test="${not empty vo.n_savefilename }">
							<a href="noticeboard_download.jsp?f_name=${vo.n_savefilename }">${vo.n_orgfilename }</a>
						</c:if>
					</td>
				</tr>
				<tr>
					<td colspan="5">${vo.n_contents }</td>
				</tr>
		</tbody>
  		<tfoot>
<!--			<tr>
				<td colspan="2">
					<input type="button" value="메인으로" onclick="index_go()">
					<input type="button" value="전체 게시물 목록 보기" onclick="list_go()">
				</td>
			</tr>
-->
		</tfoot>
	</table>
	<hr>
	
</div>

</body>
</html>