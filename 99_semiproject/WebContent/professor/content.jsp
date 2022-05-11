<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<script type="text/javascript">
	function openCity(cityName) {
		var i;
		var x = document.getElementsByClassName("city");
		for (i = 0; i < x.length; i++) {
			x[i].style.display = "none";
		}
		document.getElementById(cityName).style.display = "block";
	}
	
</script>
<div class="content">
	<div class="content_header">
		<h1 class="content_header_messge">환영합니다 ~^^! 아이티윌대학교입니다~</h1>
	</div>
	<div class="content_center">
		<div class="content_wrap">
			<!-- login -->
			<div class="login">
				<form action="controller?login=professor" method="post">
					<!-- controller?type=login -->
					<h2 class="login-title">교수용로그인</h2>
					<input type="text" name="id" class="login_input" placeholder="교수용아이디">
					<input type="password" name="pwd" class="login_input" placeholder="교수용비밀번호"> 
					${errMsg }
					<input type="submit" value="로그인" class="login-btn" onsubmit="login()">
				</form>
				<div class="search-login">
					<span class="login-search"><a href="searchid.jsp">학번/교번 찾기</a></span> 
					
				</div>
			</div>
			<!-- notice -->
			<div class="notice">
				<div class="w3-bar w3-black">
					<a href="javascript:openCity('potal')"
						class="w3-bar-item w3-button current" data-tab="tab-1">포털공지</a> <a
						href="javascript:openCity('gonggi')" class="w3-bar-item w3-button"
						data-tab="tab-2">공지사항</a> <a href="javascript:openCity('haksa')"
						class="w3-bar-item w3-button" data-tab="tab-3">학사공지</a>
				</div>
				<div id="potal" class="w3-container city">
					<div>
						<div class="tab-content on" id="tab-1">
							<table class="main-table">
								<colgroup>
									<col width="10%">
									<col width="70%">
									<col width="20%">
								</colgroup>
								<tbody>
									<tr>
										<td><a href="#">[공지]</a></td>
										<td><a href="#">공지내용공지내용공지내용공지내용공지내용</a></td>
										<td><a href="#">2022-05-05</a></td>
									</tr>
									<tr>
										<td><a href="#">[공지]</a></td>
										<td><a href="#">공지내용공지내용공지내용공지내용공지내용</a></td>
										<td><a href="#">2022-05-05</a></td>
									</tr>
									<tr>
										<td><a href="#">[공지]</a></td>
										<td><a href="#">공지내용공지내용공지내용공지내용공지내용</a></td>
										<td><a href="#">2022-05-05</a></td>
									</tr>
									<tr>
										<td><a href="#">[공지]</a></td>
										<td><a href="#">공지내용공지내용공지내용공지내용공지내용</a></td>
										<td><a href="#">2022-05-05</a></td>
									</tr>
									<tr>
										<td><a href="#">[공지]</a></td>
										<td><a href="#">공지내용공지내용공지내용공지내용공지내용</a></td>
										<td><a href="#">2022-05-05</a></td>
									</tr>
								</tbody>
							</table>
						</div>
					</div>

				</div>

				<div id="gonggi" class="w3-container city" style="display: none">
					<table class="main-table">
						<colgroup>
							<col width="10%">
							<col width="70%">
							<col width="20%">
						</colgroup>
						<tbody>
							<tr>
								<td><a href="#">[공지]</a></td>
								<td><a href="#">공지내용공지내용공지내용공지내용공지내용</a></td>
								<td><a href="#">2022-05-05</a></td>
							</tr>
							<tr>
								<td><a href="#">[공지]</a></td>
								<td><a href="#">공지내용공지내용공지내용공지내용공지내용</a></td>
								<td><a href="#">2022-05-05</a></td>
							</tr>
							<tr>
								<td><a href="#">[공지]</a></td>
								<td><a href="#">공지내용공지내용공지내용공지내용공지내용</a></td>
								<td><a href="#">2022-05-05</a></td>
							</tr>
						</tbody>
					</table>
				</div>
				<div id="haksa" class="w3-container city" style="display: none">
					<table class="main-table">
						<colgroup>
							<col width="10%">
							<col width="70%">
							<col width="20%">
						</colgroup>
						<tbody>
							<tr>
								<td><a href="#">[공지]</a></td>
								<td><a href="#">공지내용공지내용공지내용공지내용공지내용</a></td>
								<td><a href="#">2022-05-05</a></td>
							</tr>
							<tr>
								<td><a href="#">[공지]</a></td>
								<td><a href="#">공지내용공지내용공지내용공지내용공지내용</a></td>
								<td><a href="#">2022-05-05</a></td>
							</tr>
							<tr>
								<td><a href="#">[공지]</a></td>
								<td><a href="#">공지내용공지내용공지내용공지내용공지내용</a></td>
								<td><a href="#">2022-05-05</a></td>
							</tr>
							<tr>
								<td><a href="#">[공지]</a></td>
								<td><a href="#">공지내용공지내용공지내용공지내용공지내용</a></td>
								<td><a href="#">2022-05-05</a></td>
							</tr>
							<tr>
								<td><a href="#">[공지]</a></td>
								<td><a href="#">공지내용공지내용공지내용공지내용공지내용</a></td>
								<td><a href="#">2022-05-05</a></td>
							</tr>
					</table>
				</div>
			</div>
		</div>

	</div>
<c:if test="${not empty param.error }">
	<script>
		alert("아이디 혹은 비밀번호가 맞지 않습니다.");
	</script>
</c:if>
<c:if test="${param.loginFail == 'error'}">
	<script>
		alert("이미 존재하는 이메일입니다.");
	</script>
</c:if>
</div>