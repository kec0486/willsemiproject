<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
	<h1>content</h1>
	<!-- login -->
	<div class="main">
		<div class="login">
			<form action="main.jsp" method="post"><!-- controller?type=login -->
				<h2 class="login-title">통합로그인</h2>
				<br> <input type="text" name="id"><br> <input
					type="password" name="password"><br> <input
					type="submit" value="로그인" class="login-btn"><br>
			</form>
			<span class="login-search"><a href="#">학번/교번 찾기</a></span>
			<span class="login-reset"><a href="#">비밀번호초기화</a></span>
		</div>
		<!-- notice -->
		<div class="notice">
			<div class="w3-bar w3-black">
				<button class="w3-bar-item w3-button" onclick="openCity('potal')">포털공지</button>
				<button class="w3-bar-item w3-button" onclick="openCity('gonggi')">공지사항</button>
				<button class="w3-bar-item w3-button" onclick="openCity('haksa')">학사공지</button>
			</div>
			<div id="potal" class="w3-container city">
				<table class="main-table">
					<tbody>
						<tr>
							<td><a href="#">포털내용0</a></td>
						</tr>
						<tr>
							<td><a href="#">포털내용1</a></td>
						</tr>
						<tr>
							<td><a href="#">포털내용2</a></td>
						</tr>
					</tbody>
				</table>
			</div>
			<div id="gonggi" class="w3-container city" style="display: none">
				<table class="main-table">
					<tbody>
						<tr>
							<td><a href="#">공지내용</a></td>
						</tr>
						<tr>
							<td><a href="#">공지내용1</a></td>
						</tr>
						<tr>
							<td><a href="#">공지내용2</a></td>
						</tr>
					</tbody>
				</table>
			</div>
			<div id="haksa" class="w3-container city" style="display: none">
				<table class="main-table">
					<tbody>
						<tr>
							<td><a href="#">학사내용</a></td>
						</tr>
						<tr>
							<td><a href="#">학사내용1</a></td>
						</tr>
						<tr>
							<td><a href="#">학사내용2</a></td>
						</tr>
					</tbody>
				</table>
			</div>
		</div>
	</div>
</div>