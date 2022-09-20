<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<html lang="ko">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>memberForm</title>
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
	<style type="text/css">
	div {display: block;}
		#cursor {cursor: pointer;}
		ul li{list-style: none;}
		a{text-decoration: none;color:black;}
		a:hover{color: black;}
		a:active{color: black;}	
		#menu{line-height: 20px; text-align: center;}
		#menu ul li{position: relative;}
		#menu ul li ul{width: 98px; display: none; padding-left: 0px;	font-size: 15px; position: absolute; background-color: white;	border: 1px solid; border-bottom-right-radius: 0.375rem; border-bottom-left-radius: 0.375rem; border-color: #dee2e6 #dee2e6 #fff;}
		#menu ul li:hover ul{display: block;}
		#menu ul li ul li:hover{background: #ffd3d3d3; transition: ease 1s;}
		#menu ul li ul li{padding-bottom: 10px; padding-top: 10px;}					
		.subtitle{margin-top: 15px;}		
		.col.img_box{width: 190px; margin-right: 10px; margin-left: 20px; margin-bottom: 20px; margin-top: 20px; position: relative;}
		.col.img_box img{width: 100%; height: 260px;}
	</style>
</head>
<body>

<!-- start -->
	<div>
		<nav class="navbar bg-light">
			<div class="container">
				<a class="navbar-brand" href="/codeGroup/codeGroupList">
					<img src="/resources/images/logoRed.png" alt="CGV" style="width: 120px; height: 50px; margin-left: 40px;">
				</a>
			</div>
			<button class="navbar-toggler" type="button" data-bs-toggle="offcanvas" data-bs-target="#offcanvasNavbar" aria-controls="offcanvasNavbar" style="margin-right: 30px;">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="offcanvas offcanvas-end" tabindex="-1" id="offcanvasNavbar" aria-labelledby="offcanvasNavbarLabel">
				<div class="offcanvas-header border-bottom">
					<h5 class="offcanvas-title" id="offcanvasNavbarLabel">관리자</h5>
					<button type="button" class="btn-close" data-bs-dismiss="offcanvas" aria-label="Close"></button>
				</div>
				<div class="offcanvas-body">
					<ul class="navbar-nav justify-content-end flex-grow-1 pe-3">
						<li class="nav-item">
							<a class="nav-link active" aria-current="page" href="#" data-bs-toggle="modal" data-bs-target="#exampleModal">로그인</a>
							<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true" data-bs-backdrop="false">
								<div class="modal-dialog">
									<div class="modal-content">
										<div class="modal-header">
											<h5 class="modal-title" id="exampleModalLabel">로그인</h5>
											<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
										</div>
										<div class="modal-body">
											<form>
												<img class="mb-2" src="/resources/images/logoRed.png" alt="" width="120" height="50">
												<h1 class="h3 mb-3 fw-normal">관리자 로그인</h1>
												<div class="form-floating">
													<input type="email" class="form-control" id="dminId" placeholder="id@example.com">
													<label for="floatingInput">아이디</label>
												</div>
												<div class="form-floating">
													<input type="password" class="form-control" id="dminPassword" placeholder="Password">
													<label for="floatingPassword">비밀번호</label>
												</div>
												<div class="checkbox mb-3">
													<label>
														<input type="checkbox" value="remember-me"> 아이디 저장
													</label>
												</div>
													<button class="w-100 btn btn-lg btn-danger" type="submit" onclick="location.href='./firstpage.html'">로그인</button>
													<!-- <button class="w-100 btn btn-lg" type="button" style="margin-top: 2px; background-color: rgb(254, 229, 0);">
														<img alt="카카오톡 로고" src="../img/kakao.png" class="img-fluid">
														<span>카카오 계정으로 로그인</span>
													</button> -->
												<p class="mt-5 mb-3 text-muted">© 2022 CGV.All Rights Reserved</p>
											</form>
										</div>
									</div>
								</div>
							</div>
						</li>
						<li class="nav-item">
							<a class="nav-link" href="#">회원가입</a>
						</li>
					</ul>
				</div>	
			</div>
		</nav>
		<nav class="container py-2" id="menu">
			<ul class="nav nav-tabs">
				<li class="nav-item">
					<a class="nav-link" aria-current="page" href="/codeGroup/codeGroupList" style="color: black;">코드그룹관리</a>					
				</li>
				<li class="nav-item">
					<a class="nav-link active" href="/code/codeList" style="color: black;">코드관리</a>
				</li>
				<li class="nav-item">
					<a class="nav-link" href="/member/memberList" style="color: black;">회원관리</a>
				</li>
				<li class="nav-item">
					<a class="nav-link" href="#" style="color: black;">현황관리</a>
					<ul>
						<li><a href="./theaterModForm.html">상영관 정보</a></li>
						<li><a href="#">영화 정보</a></li>
					</ul>
				</li>
			</ul>
		</nav>
		<div class="container py-2">
			<img alt="" src="/resources/images/mainpage.jpg" style="width: 1300px;">
		</div>
		<div class="container py-3">
			<h2 style="text-align: center;">회원정보 등록</h2>
		</div>
		<form method="post" autocomplete="off" id="myForm">
			<%@include file = "memberVo.jsp" %>
			<div class="container">
				<div class="accordion" id="accordionExample">
					<div class="accordion-item">
						<h2 class="accordion-header border" id="headingTwo">
							<button class="accordion-button" type="button" data-bs-toggle="collapse" data-bs-target = "#collapseOne" aria-expanded="true" aria-controls="collapseOne">
								필수정보
							</button>
						</h2>
						<div id="collapseOne" class="accordion-collapse collapse show" aria-labelledby="headingOne" data-bs-parent="#accordionExample">
							<div class="accordion-body">
								<div class="table">
									<table class="table align-middle">
										<tr>
											<th>
												<div class="row">
													<div class="col">
														<div class="input-group">
															<span class="input-group-text">이름</span>
															<input type="text" class="form-control" id="mrgname" name = "ifMmName" value='<c:out value="item.ifMmName"></c:out>'>
														</div>	
													</div>
												</div>
											</th>
											<th>
												<div class="row row">
													<div class="col">
														<div class="input-group">
															<span class="input-group-text">아이디</span>
															<input type="text" class="form-control" id="mrgid" name = "ifMmId" value='<c:out value="item.ifMmId"></c:out>'>
														</div>	
													</div>
												</div>
											</th>
										</tr>
										<tr>
											<td>
												<div class="row">
													<div class="col">
														<div class="input-group" id="basic-addon5">
															<span class="input-group-text">이메일</span>
															<input type="text" class="form-control" aria-describedby="basic-addon5" name="ifMmEmail" value='<c:out value="item.ifMmEmail"></c:out>'>
														</div>	
													</div>
												</div>
											</td>
											<td>
												<div class="row">
													<div class="col">
														<div class="input-group" id="basic-addon4">
															<span class="input-group-text">@</span>
															<select class="form-select">
																<option value="1">::선택::</option>
																<option value="2">naver.com</option>
																<option value="3">gmail.com</option>
																<option value="4">daum.net</option>
															</select>
														</div>	
													</div>
												</div>
											</td>
										</tr>
									</table>
								</div>
							</div>
						</div>
					</div>
					
					<!-- 선택정보 -->
					
					<div class="accordion-item">
						<h2 class="accordion-header border" id="headingTwo">
							<button class="accordion-button" type="button" data-bs-toggle="collapse" data-bs-target="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
								선택 정보
							</button>
						</h2>
						<div id="collapseTwo" class="accordion-collapse collapse" aria-labelledby="headingTwo">
							<div class="accordion-body py-3">
								<div class="table border" style="border-radius: 1em;">
									<table class="table align-middle">
										<tbody>
											<tr style="border-color: white;">
												<td>
													<div class="row">
														<div class="col">
															<span>성별</span>
														</div>
													</div>
												</td>
												<td>
													<div class="row">
														<div class="col">
															<span>직업</span>
														</div>
													</div>
												</td>
											</tr>
											<tr>
												<td>
													<div class="row">
														<div class="col">
															<select class="form-select">
																<option value="1">::선택::</option>
																<option value="2">남자</option>
																<option value="3">여자</option>
															</select>
														</div>
													</div>	
												</td>
												<td>
													<div class="row">
														<div class="col">
															<select class="form-select">
																<option value="1">::선택::</option>
																<option value="2">학생</option>
																<option value="3">공무원</option>
																<option value="4">자영업자</option>
																<option value="5">직장인</option>
																<option value="6">전문직</option>
																<option value="7">무직</option>
															</select>
														</div>
													</div>
												</td>
											</tr>
											<tr style="border-color: white;">
												<td>
													<div class="row">
														<div class="col">
															<span>생년월일</span>
														</div>
													</div>
												</td>
												<td>
													<div class="row">
														<div class="col">
															<span>전화번호</span>
														</div>
													</div>
												</td>
											</tr>
											<tr>
												<td>
													<div class="row">
														<div class="col">
															<input type="text" class="form-control">
														</div>
													</div>
												</td>
												<td>
													<div class="row">
														<div class="col-5">
															<select class="form-select">
																<option value="1">::선택::</option>
																<option value="2">SKT</option>
																<option value="3">KT</option>
																<option value="4">LGT</option>
															</select>
														</div>
														<div class="col">
															<input type="text" class="form-control" placeholder="전화번호( '-'는 생략하십시오)">
														</div>
													</div>
												</td>
											</tr>
											<tr style="border-color: white;">
												<td>
													<div class="row">
														<div class="col">
															<span>주소</span>
														</div>
													</div>
												</td>
											</tr>
											<tr style="border-color: white;">
												<td>
													<div class="row">
														<div class="col">
															<div class="row">
																<div class="col-7">
																	<input type="text" class="form-control" placeholder="우편번호">
																</div>
																<div class="col">
																	<div class="btn-group btn-group-sm py-1" role="group">
																		<button type="button" class="btn btn-outline-secondary" id="" onclick="">
																			<i class="fa-solid fa-magnifying-glass"></i>
																		</button>
																		<button type="button" class="btn btn-outline-secondary" id="" onclick="">
																			<i class="fa-solid fa-x"></i>	
																		</button>
																	</div>
																</div>
															</div>
														</div>														
													</div>
													<div class="row">
														<div class="col-9">
															<input type="text" class="form-control" placeholder="주소">
														</div>
													</div>
													<div class="row">
														<div class="col">
															<input type="text" class="form-control" placeholder="상세주소">
														</div>
													</div>
												</td>																								
											</tr>
										</tbody>
									</table>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<br>
			
			<!-- 정보제공 동의여부 -->
			
			<div class="container">
				<p class="fs-4 px-2">정보제공 동의여부</p>
				<div class="container border pt-2" style="border-radius: 15px;">
					<ul>
						<li>
							<div class="form-check form-switch">
								<input class="form-check-input" type="checkbox" role="switch" id="" checked>
								<label class="form-check-label" for="flexSwitchCheckDefault">개인정보 수집 활용 동의(필수)</label>
							</div>
						</li>
						<li>
							<div class="form-check form-switch">
								<input class="form-check-input" type="checkbox" role="switch" id="">
								<label class="form-check-label" for="flexSwitchCheckDefault">마케팅 및 이벤트 관련정보 메일 수신 동의(선택)</label>
							</div>
						</li>
						<li>
							<div class="form-check form-switch">
								<input class="form-check-input" type="checkbox" role="switch" id="">
								<label class="form-check-label" for="flexSwitchCheckDefault">마케팅 및 이벤트 관련정보 메일 수신 동의(선택)</label>
							</div>
						</li>
					</ul>
				</div>
			</div>
			
			<!-- 회원등록 버튼 -->
			
			<br>
			<div class="container">
				<div style="text-align: center;">
					<button type="button" class="btn btn-dark" onclick="">회원등록하기</button>
				</div>
			</div>
			
			<!-- 리스트로 돌아가는 버튼 -->
			
			<div class="container">
				<div class="btn-group me-2 btn-group-sm" role="group" style="float: right;">
					<button type="button" class="btn btn-success" id="" onclick="location.href='memberList.html'">
						<i class="fa-solid fa-list"></i>
					</button>
				</div>	
			</div>
			<div style="margin-top: 8em;"></div>
			<div class="container">
				<footer class="py-3 my-4">
					<ul class="nav justify-content-center border-bottom pb-3 mb-3 text-muted">
						<li class="nav-item">(주)CGV&nbsp; |</li>
						<li class="nav-item"> &nbsp;대표 김대겸&nbsp; |</li>
						<li class="nav-item"> &nbsp;사업자등록번호 123-45-789&nbsp; |</li>
						<li class="nav-item"> &nbsp;서울시 서초구 서초대로 77번길 55 3층</li>
					</ul>
					<p class="text-center text-muted">© 2022 GGV. All Rights Reserved</p>
				</footer>
			</div>
		</form>
		<form id="formVo">
			<%@include file = "memberVo.jsp" %>
		</form>
	</div>
	
<!-- end -->

	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
	<script src="https://kit.fontawesome.com/188ea9a4c6.js" crossorigin="anonymous"></script>
</body>
</html>