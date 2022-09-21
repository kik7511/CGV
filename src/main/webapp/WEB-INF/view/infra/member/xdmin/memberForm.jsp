<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ page session="false" %>
<jsp:useBean id="CodeServiceImpl" class="com.cgv.modules.code.CodeServiceImpl"/>
<html lang="ko">
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>memberForm</title>
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
					<a class="nav-link" href="/code/codeList" style="color: black;">코드관리</a>
				</li>
				<li class="nav-item">
					<a class="nav-link active" href="/member/memberList" style="color: black;">회원관리</a>
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
		<form method="post" autocomplete="off" name="myForm">
			<c:set var="listCodeGender" value="${CodeServiceImpl.selectListCachedCode('1')}"/>
			<c:set var="listCodeTel" value="${CodeServiceImpl.selectListCachedCode('2')}"/>
			<c:set var="listCodeEmail" value="${CodeServiceImpl.selectListCachedCode('12')}"/>
			<c:set var="listCodeMarketing" value="${CodeServiceImpl.selectListCachedCode('3')}"/>
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
															<input type="text" class="form-control" id="mrgname" name = "ifMmName" value='<c:out value="${item.ifMmName}"></c:out>'>
														</div>	
													</div>
												</div>
											</th>
											<th>
												<div class="row row">
													<div class="col">
														<div class="input-group">
															<span class="input-group-text">아이디</span>
															<input type="text" class="form-control" id="mrgid" name = "ifMmId" value='<c:out value="${item.ifMmId}"></c:out>'>
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
															<input type="text" class="form-control" aria-describedby="basic-addon5" name="ifMmEmail" value='<c:out value="${item.ifMmEmail}"></c:out>'>
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
																<option value="">선택</option>
																<c:forEach items="${listCodeEmail}" var="listEmail" varStatus="statusEmail">
																		<option value="${listEmail.ccSeq}" <c:if test="${item.ifMmEmailAddress eq listEmail.ccSeq}">selected</c:if>>${listEmail.ccCodeName}</option>
																</c:forEach>
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
																<option value="1">선택</option>
																<c:forEach items="${listCodeGender}" var="listGender" varStatus="statusGender">
																		<option value="${listGender.ccSeq}" <c:if test="${item.ifMmGender eq listGender.ccSeq}">selected</c:if>>${listGender.ccCodeName}</option>
																</c:forEach>
															</select>
														</div>
													</div>	
												</td>
												<td>
													<div class="row">
														<div class="col">
															<select class="form-select">
																<option value="1">선택</option>
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
																<option value="1">선택</option>
																<c:forEach items="${listCodeTel}" var="listTel" varStatus="statusTel">
																	<option value="${listTel.ccSeq}" <c:if test="${item.ifMmTel eq listTel.ccSeq}">selected</c:if>>${listTel.ccCodeName}</option>
																</c:forEach>
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
																	<input type="text" class="form-control" placeholder="우편번호" id="sample2_postcode" name="ifMmAddress_homenumber" value="${item.ifMmAddress_homenumber}">
																</div>
																<div class="col">
																	<div class="btn-group btn-group-sm py-1" role="group">
																		<button type="button" class="btn btn-outline-secondary" id="" onclick="sample2_execDaumPostcode()">
																			<i class="fa-solid fa-magnifying-glass"></i>
																		</button>
																		<button type="button" class="btn btn-outline-secondary" id="refresh">
																			<i class="fa-solid fa-x"></i>	
																		</button>
																	</div>
																</div>
															</div>
														</div>														
													</div>
													<div class="row">
														<div class="col-9">
															<input type="text" class="form-control" placeholder="주소" id="sample2_address" name="ifMmAddress" value="${item.ifMmAddress}">
														</div>
													</div>
													<div class="row">
														<div class="col">
															<input type="text" class="form-control" placeholder="상세주소" id="sample2_detailAddress" name="ifMmAddress_detail" value="${item.ifMmAddress_detail}">
														</div>
													</div>
													<div id="layer" style="display:none;position:fixed;overflow:hidden;z-index:1;-webkit-overflow-scrolling:touch;">
														<img src="//t1.daumcdn.net/postcode/resource/images/close.png" id="btnCloseLayer" style="cursor:pointer;position:absolute;right:-3px;top:-3px;z-index:1" onclick="closeDaumPostcode()" alt="닫기 버튼">
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
					<button type="button" class="btn btn-dark" id="btnForm">저장하기</button>
				</div>
			</div>
			
			<!-- 리스트로 돌아가는 버튼 -->
			
			<div class="container">
				<div class="btn-group me-2 btn-group-sm" role="group" style="float: right;">	
					<button type="button" class="btn btn-danger" id="btnDelete">
						<i class="fa-solid fa-file-circle-xmark"></i>
					</button>
				</div>
				<div class="btn-group me-2 btn-group-sm" role="group" style="float: right;">	
					<button type="button" class="btn btn-danger" id="btnUelete">
						<i class="fa-solid fa-trash-can"></i>
					</button>
				</div>
				<div class="btn-group me-2 btn-group-sm" role="group" style="float: right;">	
					<button type="button" class="btn btn-success" id="btnList">
						<i class="fa-solid fa-list"></i>
					</button>
				</div>
				<div class="modal fade" id="exampleModal2" tabindex="-1" aria-labelledby="exampleModalLabel2" aria-hidden="true">
					<div class="modal-dialog">
						<div class="modal-content">
							<div class="modal-header">
								<h5 class="modal-title" id="exampleModalLabel2">주의!</h5>
								<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
							</div>
							<div class="modal-body">
								삭제하시겠습니까?
							</div>
							<div class="modal-footer">
								<button type="button" class="btn btn-secondary" data-bs-dismiss="modal">취소</button>
								<button type="button" class="btn btn-danger" id="DeleteYn">삭제</button>
							</div>
						</div>
					</div>
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
		<form id="formVo" name="formVo">
			<%@include file = "memberVo.jsp" %>
		</form>
	</div>
<!-- end -->
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
	<script src="https://kit.fontawesome.com/188ea9a4c6.js" crossorigin="anonymous"></script>
		
	<script type="text/javascript">
	var goUrlList = "/member/memberList"; 				/* #-> */
	var goUrlInst = "/member/memberInst"; 				/* #-> */
	var goUrlForm = "/member/memberForm"; 				/* #-> */
	var goUrlUpdt = "/member/memberUpdt";				/* #-> */
	var goUrlUele = "/member/memberUelete";				/* #-> */
	var goUrlDele = "/member/memberDelete";				/* #-> */
	var seq = $("input:hidden[name=ifMmSeq]");			/* #-> */
	
	var modal = $("#exampleModal2");
	
	
	var form = $("form[name=myForm]");
	var formVo = $("form[name=formVo]");
	
	$("#btnForm").on("click", function(){
		if (seq.val() == "0" || seq.val() == ""){
	   		// insert
	   		form.attr("action", goUrlInst).submit();
	   	} else {
	   		// update
	   		/* keyName.val(atob(keyName.val())); */
	   		form.attr("action", goUrlUpdt).submit();
	   	}
	});
	
	$("#btnList").on("click", function(){
		formVo.attr("action", goUrlList).submit();
	})
	
	
	$("#btnDelete").on("click", function(){
		action = "Delete"
		modal.modal('show');	
	})
	
	$("#btnUelete").on("click", function(){
		action = "Uelete"
			modal.modal('show'); 
	})
	
	$("#DeleteYn").on("click", function(){
		if(action == "Uelete"){
			form.attr("action", goUrlUele).submit();
		}else if(action == "Delete"){
			form.attr("action", goUrlDele).submit();
		}else{
			
		}
	})
	</script>
	<script type="text/javascript">
	    // 우편번호 찾기 화면을 넣을 element
	    var element_layer = document.getElementById('layer');
	
	    function closeDaumPostcode() {
	        // iframe을 넣은 element를 안보이게 한다.
	        element_layer.style.display = 'none';
	    }
	
	    function sample2_execDaumPostcode() {
	        new daum.Postcode({
	            oncomplete: function(data) {
	                // 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.
	
	                // 각 주소의 노출 규칙에 따라 주소를 조합한다.
	                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
	                var addr = ''; // 주소 변수
	                var extraAddr = ''; // 참고항목 변수
	
	                //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
	                if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
	                    addr = data.roadAddress;
	                } else { // 사용자가 지번 주소를 선택했을 경우(J)
	                    addr = data.jibunAddress;
	                }
	
	                // 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
	                if(data.userSelectedType === 'R'){
	                    // 법정동명이 있을 경우 추가한다. (법정리는 제외)
	                    // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
	                    if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
	                        extraAddr += data.bname;
	                    }
	                    // 건물명이 있고, 공동주택일 경우 추가한다.
	                    if(data.buildingName !== '' && data.apartment === 'Y'){
	                        extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
	                    }
	                    // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
	                    if(extraAddr !== ''){
	                        extraAddr = ' (' + extraAddr + ')';
	                    }
	                    // 조합된 참고항목을 해당 필드에 넣는다.
	                    /* document.getElementById("sample2_extraAddress").value = extraAddr; */
	                
	                } else {
	                    document.getElementById("sample2_extraAddress").value = '';
	                }
	
	                // 우편번호와 주소 정보를 해당 필드에 넣는다.
	                document.getElementById('sample2_postcode').value = data.zonecode;
	                document.getElementById("sample2_address").value = addr;
	                // 커서를 상세주소 필드로 이동한다.
	                document.getElementById("sample2_detailAddress").focus();
	
	                // iframe을 넣은 element를 안보이게 한다.
	                // (autoClose:false 기능을 이용한다면, 아래 코드를 제거해야 화면에서 사라지지 않는다.)
	                element_layer.style.display = 'none';
	            },
	            width : '100%',
	            height : '100%',
	            maxSuggestItems : 5
	        }).embed(element_layer);
	
	        // iframe을 넣은 element를 보이게 한다.
	        element_layer.style.display = 'block';
	
	        // iframe을 넣은 element의 위치를 화면의 가운데로 이동시킨다.
	        initLayerPosition();
	    }
	
	    // 브라우저의 크기 변경에 따라 레이어를 가운데로 이동시키고자 하실때에는
	    // resize이벤트나, orientationchange이벤트를 이용하여 값이 변경될때마다 아래 함수를 실행 시켜 주시거나,
	    // 직접 element_layer의 top,left값을 수정해 주시면 됩니다.
	    function initLayerPosition(){
	        var width = 300; //우편번호서비스가 들어갈 element의 width
	        var height = 400; //우편번호서비스가 들어갈 element의 height
	        var borderWidth = 5; //샘플에서 사용하는 border의 두께
	
	        // 위에서 선언한 값들을 실제 element에 넣는다.
	        element_layer.style.width = width + 'px';
	        element_layer.style.height = height + 'px';
	        element_layer.style.border = borderWidth + 'px solid';
	        // 실행되는 순간의 화면 너비와 높이 값을 가져와서 중앙에 뜰 수 있도록 위치를 계산한다.
	        element_layer.style.left = (((window.innerWidth || document.documentElement.clientWidth) - width)/2 - borderWidth) + 'px';
	        element_layer.style.top = (((window.innerHeight || document.documentElement.clientHeight) - height)/2 - borderWidth) + 'px';
	    }
	    
	    $("#refresh").on("click", function(){
	    	$("#sample2_postcode").val('');
	    	$("#sample2_address").val('');
	    	$("#sample2_detailAddress").val('');
		})
	</script>
</body>
</html>