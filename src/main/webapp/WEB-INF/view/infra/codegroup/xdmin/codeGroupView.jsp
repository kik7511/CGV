<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%> 

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ page session="false" %>
<html lang="ko">
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>codegroupView</title>
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
											<form >
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
					<a class="nav-link active" aria-current="page" href="/codeGroup/codeGroupList" style="color: black;">코드그룹관리</a>					
				</li>
				<li class="nav-item">
					<a class="nav-link" href="/code/codeList" style="color: black;">코드관리</a>
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
		<form method="post" action="/codeGroup/codeGroupMod" id="myForm">
			<div class="container">
				<div class="table border" style="border-radius: 1em;">
					<table class="table align-middle">
						<tbody>
							<tr style="border-color: white;">
								<td>
									<div class="row row-cols-2">
										<div class="col">
											<span>코드그룹 코드</span>
										</div>
									</div>
								</td>
								<td>
									<div class="row">
										<div class="col">
											<span>코드그룹 코드(Another)</span>
										</div>
									</div>
								</td>
							</tr>
							<tr>
								<td>
									<div class="row">
										<div class="col">
											<input type="text" class="form-control" placeholder="자동생성" id="" value="<c:out value="${item.ccgSeq}"></c:out> " name = "ccgSeq">
										</div>
									</div>	
								</td>
								<td>
									<div class="row">
										<div class="col">
											<input type="text" class="form-control" placeholder="영문(대소문자), 숫자" name="">
										</div>
									</div>	
								</td>
							</tr>
							<tr style="border-color: white;">
								<td>
									<div class="row ">
										<div class="col">
											<span>코드그룹 이름(한글)</span>
										</div>
									</div>
								</td>
								<td>
									<div class="row">
										<div class="col">
											<span>코드그룹 이름(영어)</span>
										</div>
									</div>
								</td>
							</tr>
							<tr>
								<td>
									<div class="row">
										<div class="col">
											<input type="text" class="form-control" placeholder="한글, 숫자" id="codeGroupK" name="codeGroupK" value='<c:out value="${item.codeGroupK}"></c:out>'>
										</div>
									</div>
								</td>
								<td>
									<div class="row">
										<div class="col">
											<input type="text" class="form-control" placeholder="한글, 숫자" id="codeGroup" name="codeGroup" value='<c:out value="${item.codeGroup}"></c:out>'>
										</div>
									</div>
								</td>
							</tr>
							<tr style="border-color: white;">
								<td>
									<div class="row ">
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
											<select class="form-select" id="ccgUseNy" name="ccgUseNy" value='<c:out value="${item.ccgUseNy}"></c:out>'>
												<option value="1">Y</option>
												<option value="0">N</option>
											</select>
										</div>
									</div>
								</td>
								<td>
									<div class="row">
										<div class="col">
											<input type="text" class="form-control" placeholder="숫자" name="ccgOrder" id="ccgOrder" value='<c:out value="${item.ccgOrder}"></c:out>'>
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
											<textarea style="width: 100%" name="reference" id="reference" value='<c:out value="${item.reference}"></c:out>'></textarea>
										</div>									
									</div>
								</td>
								<td>
									<div class="row">
										<div class="col">
											<select class="form-select" value='<c:out value="${item.ccgDelNy}"></c:out>'>
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
					<!-- <input type="submit" value="Send" onClick={ validateForm }/> -->
					<button type="submit" class="btn btn-dark" name="" id="btnSave" onclick= "">수정하기</button>
				</div>
				<div class="btn-group me-2 btn-group-sm" role="group" style="float: right;">	
					<button type="button" class="btn btn-success" id="" onclick="location.href='/codeGroup/codeGroupList'">
						<i class="fa-solid fa-list"></i>
					</button>
					<button type="button" class="btn btn-success" id="" onclick="location.href='/codeGroup/codeGroupList'">
						<i class="fa-solid fa-trash-can"></i>
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
		
		function test(){
			alert("test");
		}
			//alert(document.getElementById('codeGroupK').value);
			//alert(document.getElementById('codeGroup').value);
			//alert(document.getElementById('ccgUseNy').option[document.getElementById('ccgUseNy').selectedIndex].value); //셀렉트 값 구하기 but 위에껄로 구해도 됨
			//alert(document.querySelector("input[name='ch']:checked").value);  //라디오 박스
			//alert(document.getElementById('ccgOrder').value);
			//alert(document.getElementById('reference').value);
			
			//return false;
			
				//안 적었을 때 경고창 + 안 적은 곳 포커스-하나는 되는데 이걸 전체 중에서 빈칸 있으면 기능 작동하게 만들어야 함 - while 문 사용해야 하나??
				
			 /* if(document.getElementById('codeGroupK').value == null || document.getElementById('codeGroupK').value == ''){
				alert("입력해주세요");
				document.getElementById('codeGroupK').value='';
				document.getElementById('codeGroupK').focus();
				return false;
			}
				document.getElementById('myForm').submit(); */
				
				/*		        
		        //하늘이꺼
		        
		        // radio 
	        	if($('input:radio[name=codeGroup_Gender]').is(':checked') == false) {
					alert("성별을 선택하세요");
				}else {
					alert(document.querySelector('input[name=ch]').value);					
				}
				
	        	
		        // checkbox
	        	if (document.querySelector('input[name=ch]:checked') == null) {
	 				alert("성별을 선택하세요");
	 			} else {
	 				 for (var i=0; i<document.getElementsByName("ch").length; i++) {
	 		            if (document.getElementsByName("ch")[i].checked == true) {
	 		                alert(document.getElementsByName("ch")[i].value);
	 			}
	        	*/
		
	 	/* const validateForm = () => {
	 		const $form = document.querySelector('form');
	 		const $input = $form.querySelectorAll('input');
	 		
	 		if($form){
	 			$input.forEach(input => {
	 				input.addEventListener('invalid', () => {
	 					$form.classList.add('invalid-form');
	 				});
	 			});
	 		}
 		} */
	</script>
</body>
</html>