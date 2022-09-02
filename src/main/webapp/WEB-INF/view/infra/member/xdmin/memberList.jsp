<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%> 

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ page session="false" %>
<html lang="ko">
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>memberList</title>
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
					<a class="nav-link" href="#" style="color: black;">코드관리</a>
				</li>
				<li class="nav-item">
					<a class="nav-link  active" href="#" style="color: black;">회원관리</a>
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
		<form method="post" action="./member/memberList.html" id="">
			<div class="container py-1">				
				<div class="container-fluid border px-0 mt-2 py-2" id="">
					<div class="row px-2 row-cols-6">
						<div class="col">
							<select class="form-select form-select-sm" id="">
								<option value="">::삭제여부::</option>

								
								<option value="1">삭제</option>
								<option value="2">미삭제</option>
							</select>
						</div>
						<div class="col">
							<select class="form-select form-select-sm" id="">
								<option value="">::날짜::</option>
								<option value="1">가입일</option>
								<option value="2">생일</option>
							</select>
						</div>
						<div class="col">
							<input type="text" autocomplete="off" placeholder="시작일" class="form-control form-control-sm" id="">
						</div>
						<div class="col">
							<input type="text" autocomplete="off" placeholder="종료일" class="form-control form-control-sm" id="">
						</div>
					</div>			
					<div class="row px-2 py-2 row-cols-sm-6">
						<div class="col">
							<select class="form-select form-select-sm" id="">
								<option value="">::검색구분::</option>
								<option value="1">이름</option>
								<option value="2">아이디</option>
							</select>
						</div>
						<div class="col">
							<input type="text" autocomplete="off" placeholder="검색어" class="form-control form-control-sm" id="">
						</div>
						<div class="col">
							<div class="btn-group me-2 btn-group-sm" role="group" aria-label="First-gropu">
								<button type="submit" class="btn btn-outline-secondary" id="">
									<i class="fa-solid fa-magnifying-glass"></i>
								</button>
								<button type="button" class="btn btn-outline-secondary" id="" onclick="location.href='memberList.html'">
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
						<th scope="col">NO</th>
						<th scope="col">이름</th>
						<th scope="col">성별</th>
						<th scope="col">생년월일</th>
						<th scope="col">아이디</th>
						<th scope="col">연락처</th>
						<th scope="col">이메일</th>
						<th scope="col">마케팅 동의여부</th>
					</tr>
					<tbody id="cursor">
						<c:choose>
							<c:when test="${fn:length(list) eq 0}">
								<tr>
									<td colspan="9">
										there is no data.
									</td>
								</tr>					
							</c:when>
							<c:otherwise>	
								<c:forEach items="${list}" var="list" varStatus="status" end="5">
									<tr onclick="location.href='memberModForm.html'">
										<td onclick="event.cancelBubble=true">
											<input type="checkbox" class="form-check-input" name=check>
										</td>
										<th scope="col">${list.ifMmSeq}</th>
										<td>${list.ifMmName}</td>
										<td>${list.ifMmGender}</td>
										<td>${list.ifMmDob}</td>
										<td>${list.ifMmId}</td>
										<td>${list.ifMmPassWord}</td>
										<td>${list.ifMmEmail}@
											<c:choose>
												<c:when test="${list.ifMmEmailAddress == 44}">naver.com</c:when>
												<c:when test="${list.ifMmEmailAddress == 45}">daum.net</c:when>
												<c:when test="${list.ifMmEmailAddress == 46}">gogle.com</c:when>
												<c:otherwise>직접입력하시오</c:otherwise>
											</c:choose>
										</td>
										<td>
											<c:choose>
												<c:when test="${list.ifMmMarketing == 6} }">Y</c:when>
												<c:otherwise>N</c:otherwise>
											</c:choose>
										</td>
									</tr>
								</c:forEach>
							</c:otherwise>
						</c:choose>
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