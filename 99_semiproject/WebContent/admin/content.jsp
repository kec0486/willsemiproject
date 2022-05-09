<%@page import="com.mystudy.college.model.dao.NoticeboardDAO"%>
<%@page import="com.mystudy.college.model.vo.NoticeboardVO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<% 	
	List<NoticeboardVO> list = NoticeboardDAO.getAllList();
	request.setAttribute("list", list);
	System.out.println("list: " + list);
%>
<script type="text/javascript">
	function openCity(cityName) {
		var i;
		var x = document.getElementsByClassName("city");
		for (i = 0; i < x.length; i++) {
			x[i].style.display = "none";
		}
		document.getElementById(cityName).style.display = "block";
	}
	
	function noticeboardView(n_num, n_title) {
		
		//alert("noticeboardView(n_num) 정상작동"); 
		
		//윈도우 팝업창으로 게시물 띄우기
		window.open("noticeboard?type=noticeboardView&n_num=" + n_num, n_title, "_blank").resizeTo(500,600);
		//location.href = "noticeboard?type=noticeboardView&n_num=" + n_num;
	}
	/* function loginCheck(){
		var id = $('input[name=username]'); //아이디
		var pwd = $('input[name=password]'); //비밀번호
		if(id.val() == ''){
			alert('아이디를 입력해주세요');
			id.focus();
			return false;
		}else if(pwd.val() == ''){
			alert('비밀번호를 입력해주세요');
			pwd.focus();
			return false;
		}
		return true;
	}
	function login() {
		$(function(){
			
			if($("#id").trim().val() == ''){
				alert("학번를 입력해주세요.");
		        id.focus();
		        return;
			}
			if($("#pwd").trim().val() == ''){
				alert("비밀번호를 입력해주세요.");
		        id.focus();
		        return;
			}
		});	
	} */
</script>
<div class="content">
	<div class="content_header">
		<h1 class="content_header_messge">환영합니다 ~^^! 아이티윌대학교입니다~</h1>
	</div>
	<div class="content_center">
		<div class="content_wrap">
			<!-- login -->
			<div class="login">
				<form action="controller?login=admin" method="post">
					<!-- controller?type=login -->
					<h2 class="login-title">관리자로그인</h2>
					<input type="text" name="id" class="login_input" placeholder="관리자아이디">
					<input type="password" name="pwd" class="login_input" placeholder="관리자비밀번호"> 
					<input type="submit" value="로그인" class="login-btn" onsubmit="login()">
				</form>

			</div>
		<!-- notice -->
			<div class="notice">
				<div class="w3-bar w3-black">
					<a href="javascript:openCity('total')" class="w3-bar-item w3-button current" data-tab="tab-0">전체보기</a> 
					<a href="javascript:openCity('potal')" class="w3-bar-item w3-button " data-tab="tab-1">포털공지</a> 
					<a href="javascript:openCity('gonggi')" class="w3-bar-item w3-button" data-tab="tab-2">공지사항</a> 
					<a href="javascript:openCity('haksa')" class="w3-bar-item w3-button" data-tab="tab-3">학사공지</a>
				</div>
				
				<div id="total" class="w3-container city">
					<div>
						<div class="tab-content on" id="tab-0">
							<table class="main-table">
								<colgroup>
									<col width="15%">
									<col width="65%">
									<col width="20%">
								</colgroup>
								<tbody>
								
									<c:if test="${not empty list }">
										<c:forEach var="vo" items="${list }" varStatus="status">
  											<c:if test="${status.count<8}">
												<tr>
													<td class="center">${fn:substring(vo.n_title,0,6) }</td>
													<td>
														<a href="javascript:void(0);" onclick="noticeboardView(${vo.n_num },'${vo.n_title }');">${fn:substring(vo.n_title,6,fn:length(vo.n_title)) }</a>
													</td>
													<td class="center">${vo.n_regdate }</td>
												</tr>
  											</c:if>
										</c:forEach>
									</c:if>
								</tbody>
							</table>
						</div>
					</div>
				</div>
				
				<div id="potal" class="w3-container city" style="display: none">
					<div>
						<div class="tab-content on" id="tab-1">
							<table class="main-table">
								<colgroup>
									<col width="15%">
									<col width="65%">
									<col width="20%">
								</colgroup>
								<tbody>
								<c:if test="${not empty list }">
									<c:forEach var="vo" items="${list }" varStatus="status">
										<c:if test="${fn:substring(vo.n_title,1,5) eq '포털공지'}">
											<c:if test="${status.count<8}">
												<tr>
													<td class="center">${fn:substring(vo.n_title,0,6) }</td>
													<td>
														<a href="javascript:void(0);" onclick="noticeboardView(${vo.n_num },'${vo.n_title }');">${fn:substring(vo.n_title,6,fn:length(vo.n_title)) }</a>
													</td>
													<td class="center">${vo.n_regdate }</td>
												</tr>
											</c:if>
										</c:if>
									</c:forEach>
								</c:if>
								</tbody>
							</table>
						</div>
					</div>
				</div>

				<div id="gonggi" class="w3-container city" style="display: none">
					<div>
						<div class="tab-content on" id="tab-2">
							<table class="main-table">
								<colgroup>
									<col width="15%">
									<col width="65%">
									<col width="20%">
								</colgroup>
								<tbody>
								<c:if test="${not empty list }">
									<c:forEach var="vo" items="${list }" varStatus="status">
										<c:if test="${fn:substring(vo.n_title,1,5) eq '공지사항'}">
											<c:if test="${status.count<8}">
												<tr>
													<td class="center">${fn:substring(vo.n_title,0,6) }</td>
													<td>
														<a href="javascript:void(0);" onclick="noticeboardView(${vo.n_num },'${vo.n_title }');">${fn:substring(vo.n_title,6,fn:length(vo.n_title)) }</a>
													</td>
													<td class="center">${vo.n_regdate }</td>
												</tr>
											</c:if>
										</c:if>
									</c:forEach>
								</c:if>
								</tbody>
							</table>
						</div>
					</div>
				</div>
				
				<div id="haksa" class="w3-container city" style="display: none">
					<div>
						<div class="tab-content on" id="tab-3">
							<table class="main-table">
								<colgroup>
									<col width="15%">
									<col width="65%">
									<col width="20%">
								</colgroup>
								<tbody>
								<c:if test="${not empty list }">
									<c:forEach var="vo" items="${list }" varStatus="status">
										<c:if test="${fn:substring(vo.n_title,1,5) eq '학사공지'}">
											<c:if test="${status.count<8}">
												<tr>
													<td class="center">${fn:substring(vo.n_title,0,6) }</td>
													<td>
														<a href="javascript:void(0);" onclick="noticeboardView(${vo.n_num },'${vo.n_title }');">${fn:substring(vo.n_title,6,fn:length(vo.n_title)) }</a>
													</td>
													<td class="center">${vo.n_regdate }</td>
												</tr>
											</c:if>
										</c:if>
									</c:forEach>
								</c:if>
							</table>
						</div>
					</div>
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