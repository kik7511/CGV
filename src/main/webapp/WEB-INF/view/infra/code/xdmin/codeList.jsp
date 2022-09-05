<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<html lang="ko">
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>codeList</title>
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
											<form>
												<img class="mb-2" src="../../user/img/logoRed.png" alt="" width="120" height="50">
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
		<form method="post" action="/code/codeList" id="">
			<div class="container py-1">				
				<div class="container-fluid border px-0 mt-2 py-2" id="">
					<div class="row px-2 row-cols-6">
						<div class="col">
							<select class="form-select form-select-sm" id="" name="">
								<option value="" <c:if test="${empty vo.shDelNy}">selected</c:if>>삭제여부</option>
								<option value="0" <c:if test="${vo.shDelNy eq 0}">selected</c:if>>N</option>
								<option value="1" <c:if test="${vo.shDelNy eq 1}">selected</c:if>>Y</option>
							</select>
						</div>
						<div class="col">
							<select class="form-select form-select-sm" id="" name="">
								<option value="1" <c:if test="${vo.shOptionDate eq 1}">selected</c:if>>등록일</option>
								<option value="2" <c:if test="${vo.shOptionDate eq 2}">selected</c:if>>수정일</option>
								<option value="3" <c:if test="${vo.shOptionDate eq 3}">selected</c:if>>삭제일</option>
							</select>
						</div>
						<div class="col">
							<input type="text" autocomplete="off" placeholder="시작일" class="form-control form-control-sm" id="shStartDate" >
						</div>
						<div class="col">
							<input type="text" autocomplete="off" placeholder="종료일" class="form-control form-control-sm" id="shEndDate" >
						</div>
					</div>		
					<!-- 시작날짜 끝날짜 검색하기 -->
					<script>
						$(document).ready(function () {
						    $.datepicker.regional['ko'] = {
						        closeText: '닫기',
						        prevText: '이전달',
						        nextText: '다음달',
						        currentText: '오늘',
						        monthNames: ['1월(JAN)','2월(FEB)','3월(MAR)','4월(APR)','5월(MAY)','6월(JUN)',
						        '7월(JUL)','8월(AUG)','9월(SEP)','10월(OCT)','11월(NOV)','12월(DEC)'],
						        monthNamesShort: ['1월','2월','3월','4월','5월','6월',
						        '7월','8월','9월','10월','11월','12월'],
						        dayNames: ['일','월','화','수','목','금','토'],
						        dayNamesShort: ['일','월','화','수','목','금','토'],
						        dayNamesMin: ['일','월','화','수','목','금','토'],
						        weekHeader: 'Wk',
						        dateFormat: 'yy-mm-dd',
						        firstDay: 0,
						        showMonthAfterYear: true,
						        changeMonth: true,
						        changeYear: true,
						        yearRange: 'c-99:c+99',
						    };
						    $.datepicker.setDefaults($.datepicker.regional['ko']);
					
						    $('#shStartDate').datepicker();
						    $('#shStartDate').datepicker("option", "maxDate", $("#shEndDate").val());
						    $('#shStartDate').datepicker("option", "onClose", function ( selectedDate ) {
						        $("#shEndDate").datepicker( "option", "minDate", selectedDate );
						    });
					
						    $('#shEndDate').datepicker();
						    $('#shEndDate').datepicker("option", "minDate", $("#shStartDate").val());
						    $('#shEndDate').datepicker("option", "onClose", function ( selectedDate ) {
						        $("#shStartDate").datepicker( "option", "maxDate", selectedDate );
						    });
						});
					</script>	
					<div class="row px-2 py-2 row-cols-sm-6">
						<div class="col">
							<select class="form-select form-select-sm" id="" name="">
								<option value="" <c:if test="${empty vo.shOption}">selected</c:if>>검색구분</option>
								<option value="1" <c:if test="${vo.shOption eq 1}">selected</c:if>>코드그룹 코드</option>
								<option value="2" <c:if test="${vo.shOption eq 2}">selected</c:if>>코드그룹 이름(한글)</option>
								<option value="3" <c:if test="${vo.shOption eq 3}">selected</c:if>>코드그룹 이름(영어)</option>
								<option value="3" <c:if test="${vo.shOption eq 3}">selected</c:if>>코드 이름</option>
							</select>
						</div>
						<div class="col">
							<input type="text" autocomplete="off" placeholder="검색어" class="form-control form-control-sm" id="" name="" value="">
						</div>
						<div class="col">
							<div class="btn-group me-2 btn-group-sm" role="group" aria-label="First-gropu">
								<button type="submit" class="btn btn-outline-secondary" id="">
									<i class="fa-solid fa-magnifying-glass"></i>
								</button>
								<button type="button" class="btn btn-outline-secondary" id="" onclick="location.href='./codeList.html'">
									<i class="fa-solid fa-rotate-right"></i>
								</button>
							</div>
						</div>
					</div>			
				</div>
			</div>
			<br>
			
			<div class="container" style="margin: auto;">	
				<table class="table table-responsive table-hover table-sm" style="text-align: center;" id="maintable">
					<tr class="table-dark">
						<th scope="col">
							<input type="checkbox" class="form-check-input" onclick="selectAll(this);" name=check>
						</th>
						<th scope="col">#</th>
						<th scope="col">코드그룹 이름(영어)</th>
						<th scope="col">코드그룹 이름(한글)</th>
						<th scope="col">코드 이름</th>
						<th scope="col">사용여부</th>
						<th scope="col">순서</th>
						<th scope="col">등록일</th>
					</tr>
					<tbody id="cursor">
						<c:forEach items="${list}" var="list" varStatus="status" end="4">
							<tr onclick="location.href='memberModForm.html'">
								<td onclick="event.cancelBubble=true">
									<input type="checkbox" class="form-check-input" name=check>
								</td>
								<th scope="col">${list.ccSeq}</th>
								<td></td>
								<td></td>
								<td>${list.ccCodeName}</td>
								<td>
									<c:choose>
                						<c:when test="${list.ccUseNy == 0 }">N</c:when>
                						<c:otherwise>Y</c:otherwise>
                					</c:choose>
                				</td>
								<td>${list.ORDER}</td>
								<td>${list.ccDate}</td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
				<div class="container">
					<nav aria-label="Page navigation example">
						<ul class="pagination justify-content-center">
							<li class="page-item">
								<a class="page-link" href="#" aria-label="Previous">
									<span aria-hidden="true">&laquo;</span>
								</a>
							</li>
							<li class="page-item">
								<a class="page-link" href="#">1</a>
							</li>
							<li class="page-item">
								<a class="page-link" href="#">2</a>
							</li>
							<li class="page-item">
								<a class="page-link" href="#">3</a>
							</li>
							<li class="page-item">
								<a class="page-link" href="#" aria-label="Next">
									<span aria-hidden="true">&raquo;</span>
								</a>
							</li>
						</ul>
					</nav>
				</div>
			</div>
			<div class="container">
				<div class="btn-group me-2 btn-group-sm" role="group" style="float:  right;">
					<button type="button" class="btn btn-outline-secondary" id="" onclick="location.href='memberRegForm.html'">
						<i class="fa-solid fa-plus"></i>
					</button>
					<button type="button" class="btn btn-outline-danger" id="deleteInput" data-bs-toggle="modal" data-bs-target="#deleteModal" onclick="getCheckboxValue()">
						<i class="fa-solid fa-trash-can"></i>
					</button>
					<div class="modal fade" id="deleteModal" tabindex="-1" aria-labelledby="deleteModalLabel" aria-hidden="true">
						<div class="modal-dialog" id="result">
							<div class="modal-content">
								<div class="modal-header">
									<h5 class="modal-title" id="exampleModalLabel">회원정보 삭제</h5>
									<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
								</div>
								<div class="modal-body">
									<p>정말 삭제하시겠습니까?</p>	
								</div>
								<div class="modal-footer">
        							<button type="button" class="btn btn-secondary" data-bs-dismiss="modal">취소</button>
        							<button type="button" class="btn btn-danger" id="delRow">삭제</button>
      							</div>
    						</div>
  						</div>
					</div>
				</div>
				<div class="btn-group me-2 btn-group-sm" role="group" style="float: left;">
					<button type="button" class="btn btn-success" id="" onclick="location.href='memberList.html'" data-bs-toggle="tooltip" data-bs-placement="top" data-bs-custom-class="custom-tooltip" title="엑셀파일로 출력하기" >
						<i class="fa-solid fa-copy"></i>
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