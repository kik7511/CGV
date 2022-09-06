<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%> 

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ page session="false" %>
<html lang="ko">
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>codegroupForm</title>
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
				<a class="navbar-brand" href="memberList.html">
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
											<span>아라비아</span>
										</div>
										<div class="modal-footer">
											<button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
											<button type="button" class="btn btn-primary">Save changes</button>
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
					<a class="nav-link" aria-current="page" href="#" style="color: black;">코드그룹관리</a>					
				</li>
				<li class="nav-item">
					<a class="nav-link active" href="#" style="color: black;">코드관리</a>
				</li>
				<li class="nav-item">
					<a class="nav-link" href="#" style="color: black;">회원관리</a>
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
		<form method="post" action="/codeGroup/codeGroupInst" id="">
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
											<input type="text" class="form-control" placeholder="영문(대소문자), 숫자" id="">
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
											<input type="text" class="form-control" placeholder="한글, 숫자" id="codeGroupK" name="codeGroupK">
										</div>
									</div>
								</td>
								<td>
									<div class="row">
										<div class="col">
											<input type="text" class="form-control" placeholder="한글, 숫자" id="codeGroup" name="codeGroup">
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
											<select class="form-select" id="ccgUseNy" name="ccgUseNy">
												<option value="">사용여부</option>
												<option value="1">Y</option>
												<option value="0">N</option>
											</select>
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
											<select class="form-select" name="ccgDelNy" id="ccgDelNy">
												<option value="" <c:if test="${empty dto.ccgDelNy}">selected</c:if>>삭제여부</option>
												<option value="1" <c:if test="${dto.ccgDelNy eq 1}">selected</c:if>>Y</option>
												<option value="0" <c:if test="${dto.ccgDelNy eq 0}">selected</c:if>>N</option>
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
					<button type="submit" class="btn btn-dark"> 등록하기</button>
				</div>
				<div class="btn-group me-2 btn-group-sm" role="group" style="float: right;">
					<button type="button" class="btn btn-success" id="" onclick="location.href='/codeGroup/codeGroupList'">
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
		/* 체크박스 전체 선택 */
		function selectAll(selectAll){
			const checkboxes 
				= document.getElementsByName("check");
			
		checkboxes.forEach((checkbox) => {
			checkbox.checked = selectAll.checked;
		})
	}
		/* 모달 나타나기 */
		const myModal = document.getElementById('deleteModal')
		const myInput = document.getElementById('deleteInput')

		myModal.addEventListener('shown.bs.modal', () => {
		  deleteInput.focus()
		});
		/* 체크된 줄만 지우기(현재 실패) */
		$('#delRow').click(function(){
			if($("input:checkbox[name='check']:checked").length === 0) {
				alert("삭제할 항목을 선택해 주세요.");
				return;
			}
			$("input:checkbox[name='check']:checked").each(function(k,kVal){
				console.log("kVal ::", kVal.parentElement.parentElement);
				let a = kVal.parentElemnet.parentElement.parentElement;
				$(a).remove();
			});
		});
	</script>
</body>
</html>