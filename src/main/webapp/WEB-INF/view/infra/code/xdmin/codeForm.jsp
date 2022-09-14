
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<html lang="ko">
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>codeForm</title>
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
  	<link rel="stylesheet" href="//code.jquery.com/ui/1.13.2/themes/base/jquery-ui.css">
	<link rel="stylesheet" href="/resources/demos/style.css">
	<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
	<script src="https://code.jquery.com/ui/1.13.2/jquery-ui.js"></script>
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
	<link rel="stylesheet" type="text/css" href="fontawesome-free-5.15.1-web/css/fontawesome.min.css">
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
			<img alt="" src="/resources/images/mainpage.jpg" style="width: 100%;">						
		</div>		
		<form method="post" id="myForm" name="myForm">
			<div class="container">
				<div class="table border" style="border-radius: 1em;">
					<table class="table align-middle">
						<tbody>
							<tr style="border-color: white;">
								<td>
									<div class="row ">
										<div class="col">
											<span>코드그룹</span>
										</div>
									</div>
								</td>
							</tr>
							<tr>
								<td>
									<div class="row">
										<div class="col">
											<select class="form-select" name="ccgSeq" id="ccgSeq" value='<c:out value="${item.ccgSeq}"></c:out>'>
												<c:forEach items="${list}" var="list" varStatus="status">
													<option value="${list.ccgSeq}">${list.codeGroupK}</option>
												</c:forEach>
											</select>
										</div>
									</div>
								</td>
							</tr>	
							<tr style="border-color: white;">
								<td>
									<div class="row row-cols-2">
										<div class="col">
											<span>코드</span>
										</div>
									</div>
								</td>
								<td>
									<div class="row">
										<div class="col">
											<span>코드(Another)</span>
										</div>
									</div>
								</td>
							</tr>
							<tr>
								<td>
									<div class="row">
										<div class="col">
											<input type="text" class="form-control" placeholder="자동생성" disabled="disabled" value='<c:out value="${item.ccSeq}"></c:out>'>
										</div>
									</div>	
								</td>
								<td>
									<div class="row">
										<div class="col">
											<input type="text" class="form-control" placeholder="영문(대소문자), 숫자">
										</div>
									</div>	
								</td>
							</tr>
							<tr style="border-color: white;">
								<td>
									<div class="row ">
										<div class="col">
											<span>코드 이름(한글)</span>
										</div>
									</div>
								</td>
								<td>
									<div class="row">
										<div class="col">
											<span>코드 이름(영어)</span>
										</div>
									</div>
								</td>
							</tr>
							<tr>
								<td>
									<div class="row">
										<div class="col">
											<input type="text" class="form-control" placeholder="한글, 숫자" id="ccCodeName" name="ccCodeName" value='<c:out value="${item.ccCodeName}"></c:out>'>
										</div>
									</div>
								</td>
								<td>
									<div class="row">
										<div class="col">
											<input type="text" class="form-control" placeholder="한글, 숫자">
										</div>
									</div>
								</td>
							</tr>
							<tr style="border-color: white;">
								<td>
									<div class="row">
										<div class="col">
											<span>사용여부</span>
										</div>
									</div>
								</td>
								<td>
									<div class="row">
										<div class="col">
											<span>숫자</span>
										</div>
									</div>
								</td>
							</tr>
							<tr>
								<td>
									<div class="row">
										<div class="col">
											<select class="form-select" name="ccUseNy" value='<c:out value="${item.ccUseNy}"></c:out>'>
												<option value="1">Y</option>
												<option value="2">N</option>
											</select>
										</div>
									</div>
								</td>
								<td>
									<div class="row">
										<div class="col">
											<input type="text" class="form-control" placeholder="숫자" name="ORDER" value='<c:out value="${item.ORDER}"></c:out>'>
										</div>
									</div>
								</td>
							</tr>
							<tr style="border-color: white;">
								<td>
									<div class="row ">
										<div class="col">
											<span>설명</span>
										</div>
									</div>
								</td>
								<td>
									<div class="row">
										<div class="col">
											<span>삭제여부</span>
										</div>
									</div>
								</td>
							</tr>
							<tr>
								<td>
									<div class="row">
										<div class="col">
											<textarea style="width: 100%"></textarea>
										</div>									
									</div>
								</td>
								<td>
									<div class="row">
										<div class="col">
											<select class="form-select" disabled="disabled">
												<option value="0">N</option>
												<option value="1">Y</option>
											</select>
										</div>
									</div>
								</td>
							</tr>
							<tr style="border-color: white;">
								<td>
									<div class="row ">
										<div class="col">
											<span>예비1(varchar type)</span>
										</div>
									</div>
								</td>
								<td>
									<div class="row">
										<div class="col">
											<span>예비2(varchar type)</span>
										</div>
									</div>
								</td>
							</tr>
							<tr>
								<td>
									<div class="row">
										<div class="col">
											<input type="text" class="form-control" placeholder="영문(대소문자), 숫자">
										</div>
									</div>
								</td>
								<td>
									<div class="row">
										<div class="col">
											<input type="text" class="form-control" placeholder="영문(대소문자), 숫자">
										</div>
									</div>
								</td>
							</tr>
							<tr style="border-color: white;">
								<td>
									<div class="row ">
										<div class="col">
											<span>예비3(varchar type)</span>
										</div>
									</div>
								</td>
							</tr>
							<tr>
								<td>
									<div class="row">
										<div class="col">
											<input type="text" class="form-control" placeholder="영문(대소문자), 숫자">
										</div>
									</div>
								</td>
							</tr>
							<tr style="border-color: white;">
								<td>
									<div class="row ">
										<div class="col">
											<span>예비1(int type)</span>
										</div>
									</div>
								</td>
								<td>
									<div class="row">
										<div class="col">
											<span>예비2(int type)</span>
										</div>
									</div>
								</td>
							</tr>
							<tr>
								<td>
									<div class="row">
										<div class="col">
											<input type="text" class="form-control" placeholder="숫자">
										</div>
									</div>
								</td>
								<td>
									<div class="row">
										<div class="col">
											<input type="text" class="form-control" placeholder="숫자">
										</div>
									</div>
								</td>
							</tr>
							<tr style="border-color: white;">
								<td>
									<div class="row ">
										<div class="col">
											<span>예비3(int type)</span>
										</div>
									</div>
								</td>
							</tr>
							<tr>
								<td>
									<div class="row">
										<div class="col">
											<input type="text" class="form-control" placeholder="숫자">
										</div>
									</div>
								</td>
							</tr>
						</tbody>
					</table>
				</div>
				<br>
				<div style="text-align: center;">
					<button type="submit" class="btn btn-dark">등록하기</button>
				</div>
				<div class="btn-group me-2 btn-group-sm" role="group" style="float: right;">
					<button type="button" class="btn btn-success" id="" onclick="location.href='/code/codeList'">
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
	</div>
<!-- end -->

	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
	<script src="https://kit.fontawesome.com/188ea9a4c6.js" crossorigin="anonymous"></script>	
	<script type="text/javascript">
		/* 모달 나타나기 */
		const myModal = document.getElementById('deleteModal')
		const myInput = document.getElementById('deleteInput')

		myModal.addEventListener('shown.bs.modal', () => {
		  deleteInput.focus()
		});
	</script>
	
	<script type="text/javascript">
	var goUrlList = "/code/codeList"; 			/* #-> */
	var goUrlInst = "/code/codeInst"; 			/* #-> */
	var goUrlUpdt = "/code/codeMod";				/* #-> */
	var goUrlUele = "/code/codeUelete";				/* #-> */
	var goUrlDele = "/code/codeDelete";				/* #-> */
	
	var modal = $("#exampleModal2");
	
	var seq = $("input:hidden[name=ccSeq]");				/* #-> */
	
	var form = $("form[name=myForm]");
	
	$("#btnSave").on("click", function(){
		if (seq.val() == "0" || seq.val() == ""){
	   		// insert
	   		form.attr("action", goUrlInst).submit();
	   	} else {
	   		// update
	   		/* keyName.val(atob(keyName.val())); */
	   		form.attr("action", goUrlUpdt).submit();
	   	}
	})
	
	$("#btnDelete").on("click", function(){
		action = "Delete"
		modal.modal('show');	
	});
	
	$("#btnUelete").on("click", function(){
		action = "Uelete"
			modal.modal('show'); 
	});
	
	$("#DeleteYn").on("click", function(){
		if(action == "Uelete"){
			form.attr("action", goUrlUele).submit();
		}else if(action == "Delete"){
			form.attr("action", goUrlDele).submit();
		}else{
			
		}
	});
	</script>
</body>
</html>