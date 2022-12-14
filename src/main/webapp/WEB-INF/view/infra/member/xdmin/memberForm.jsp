<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<jsp:useBean id="CodeServiceImpl" class="com.cgv.modules.code.CodeServiceImpl"/>
<html lang="ko">
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>memberForm</title>
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
	<link rel="stylesheet" href="//code.jquery.com/ui/1.13.2/themes/base/jquery-ui.css">
	<link rel="stylesheet" href="/resources/demos/style.css">
	<link rel="shortcut icon" href="/resources/images/user/favicon.ico" type="image/x-icon">
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
		/* #name-msg{font-size: 10px;}
		#id-msg{font-size: 10px;}
		#ifmmIdFeedback{font-size: 12px;} */
		.input-control {
		    display: flex;
		    flex-direction: column;
		}
		
		.input-control input {
		    border: 2px solid #f0f0f0;
		    border-radius: 4px;
		    display: block;
		    font-size: 12px;
		    padding: 10px;
		    width: 100%;
		}
		
		.input-control select {
		    border: 2px solid #f0f0f0;
		    border-radius: 4px;
		    display: block;
		    font-size: 12px;
		    padding: 10px;
		    width: 100%;
		    background: white;
		    height: 42px;
		}
		
		.input-control input:focus {
		    outline: 0;
		}
		
		.input-control.success input {
		    border-color: #09c372;
		}
		
		.input-control.error input {
		    border-color: #ff3860;
		}
		
		.input-control .error {
		    color: #ff3860;
		    font-size: 15px;
		    height: 15px;
		    margin: 0 5px;
		}
		
		.input-control.success select {
		    border-color: #09c372;
		}
		
		.input-control.error select {
		    border-color: #ff3860;
		}
		
		.input-file-button{
		padding: 4px 25px;
		background-color:#FF6600;
		border-radius: 4px;
		color: white;
		cursor: pointer;
		}
	
		.addScroll{
			overflow-y:auto;
			height: 200px;
			background-color:#E9ECEF;
			padding-top:5px; 
			padding-left:5px;
		}
	</style>
	<link rel="stylesheet" type="text/css" href="fontawesome-free-5.15.1-web/css/fontawesome.min.css">
</head>
<body>

<!-- start -->
	<div>
		<%@include file = "../../../infra/common/xdmin/mainHeader.jsp" %>	
		<nav class="container py-2" id="menu">
			<ul class="nav nav-tabs">
				<li class="nav-item">
					<a class="nav-link" aria-current="page" href="/codeGroup/codeGroupList" style="color: black;">??????????????????</a>					
				</li>
				<li class="nav-item">
					<a class="nav-link" href="/code/codeList" style="color: black;">????????????</a>
				</li>
				<li class="nav-item">
					<a class="nav-link active" href="/member/memberList" style="color: black;">????????????</a>
				</li>
				<li class="nav-item">
					<a class="nav-link" href="#" style="color: black;">????????????</a>
					<ul>
						<li><a href="./theaterModForm.html">????????? ??????</a></li>
						<li><a href="#">?????? ??????</a></li>
					</ul>
				</li>
			</ul>
		</nav>
		<div class="container py-2">
			<img alt="" src="/resources/images/mainpage.jpg" style="width: 1300px;">
		</div>
		<div class="container py-3">
			<h2 style="text-align: center;">???????????? ??????</h2>
		</div>
		<form method="post" autocomplete="off" name="myForm" enctype="multipart/form-data">
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
								????????????
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
															<span class="input-group-text">??????</span>
															<input type="text" class="form-control" id="ifMmName" name = "ifMmName" value='<c:out value="${item.ifMmName}"></c:out>'>
															<!-- <div class="msg" id="name_msg" name="name_msg" style="display: none;"></div> -->
															<span class="input-group-text" id="name_msg" name="name_msg" style="display: none;"></span>
														</div>	
													</div>
												</div>
											</th>
											<th>
												<div class="row">
													<div class="col">
														<div class="input-group">
															<span class="input-group-text">?????????</span>
															<input type="text" class="form-control" id="ifMmId" name = "ifMmId" value='<c:out value="${item.ifMmId}"></c:out>'>
															<span class="input-group-text" id="id_msg" name="id_msg" style="display: none;"></span>
															<span class="input-group-text" id="ifmmIdFeedback" style="display: none;"></span>
														</div>
													</div>
												</div>
												<div class="row">
													<!-- <div class="col" id= "ifmmIdFeedback"></div> -->
													<!-- <div class="msg" id="id_msg" name="id_msg" style="display: none;"></div> -->
												</div>
											</th>
										</tr>
										<tr>
											<th>
												<div class="row">
													<div class="col">
														<div class="input-group">
															<span class="input-group-text">????????????</span>
															<input type="password" class="form-control" id="ifMmPassWord" name = "ifMmPassWord" value='<c:out value="${item.ifMmPassWord}"></c:out>'>
														</div>	
													</div>
												</div>
											</th>
											<th>
												<div class="row">
													<div class="col">
														<div class="input-group">
															<span class="input-group-text">??????????????????</span>
															<input type="password" class="form-control" id="ifMmPassWordRe">
															<span class="input-group-text" id="alert-success" style="display: none">??????</span>
	    													<span class="input-group-text" id="alert-danger" style="display: none; color: #d92742; font-weight: bold;">?????????</span>
														</div>
													</div>
												</div>
	<!-- 											<div class="row">
													<div class="col" id= "ifMmPasswordFeedback"></div>
												</div> -->
											</th>
										</tr>
										<tr>
											<td>
												<div class="row">
													<div class="col">
														<div class="input-group" id="basic-addon5">
															<span class="input-group-text">?????????</span>
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
															<select class="form-select" name="ifMmEmailAddress">
																<option value="">??????</option>
																<c:forEach items="${listCodeEmail}" var="listEmail" varStatus="statusEmail">
																		<option value="${listEmail.ccSeq}" <c:if test="${item.ifMmEmailAddress eq listEmail.ccSeq}">selected</c:if>>${listEmail.ccCodeName}</option>
																</c:forEach>
															</select>
														</div>	
													</div>
												</div>
											</td>
										</tr>
										<tr>
											<th>
												<div class="row">
													<div class="col">
														<div class="input-group">
															<span class="input-group-text">?????????</span>
															<input type="text" class="form-control" id="ifMmNickname" name = "ifMmNickname" value='<c:out value="${item.ifMmNickname}"></c:out>'>
														</div>	
													</div>
												</div>
											</th>
										</tr>
									</table>
								</div>
							</div>
						</div>
					</div>
					
					<!-- ???????????? -->
					
					<div class="accordion-item">
						<h2 class="accordion-header border" id="headingTwo">
							<button class="accordion-button" type="button" data-bs-toggle="collapse" data-bs-target="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
								?????? ??????
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
															<span>??????</span>
														</div>
													</div>
												</td>
												<td>
													<div class="row">
														<div class="col">
															<span>??????</span>
														</div>
													</div>
												</td>
											</tr>
											<tr>
												<td>
													<div class="row">
														<div class="col">
															<select class="form-select" name = "ifMmGender">
																<option value="1">??????</option>
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
															<select class="form-select" name="ifMmMangerNy">
																<option value="0" <c:if test="${item.ifMmMangerNy eq 0}">selected</c:if>>?????????</option>
																<option value="1" <c:if test="${item.ifMmMangerNy eq 1}">selected</c:if>>?????????</option>
															</select>
														</div>
													</div>
												</td>
											</tr>
											<tr style="border-color: white;">
												<td>
													<div class="row">
														<div class="col">
															<span>????????????</span>
														</div>
													</div>
												</td>
												<td>
													<div class="row">
														<div class="col">
															<span>????????????</span>
														</div>
													</div>
												</td>
											</tr>
											<tr>
												<td>
													<div class="row">
														<div class="col">
															<input type="date" class="form-control" name="ifMmDob" id="dob" value='<fmt:formatDate value="${item.ifMmDob}" pattern="yyyy-MM-dd" />'>
														</div>
													</div>
												</td>
												<td>
													<div class="row">
														<div class="col-5">
															<select class="form-select" name="ifMmTel">
																<option value="1">??????</option>
																<c:forEach items="${listCodeTel}" var="listTel" varStatus="statusTel">
																	<option value="${listTel.ccSeq}" <c:if test="${item.ifMmTel eq listTel.ccSeq}">selected</c:if>>${listTel.ccCodeName}</option>
																</c:forEach>
															</select>
														</div>
														<div class="col">
															<input type="text" class="form-control" placeholder="????????????( '-'??? ??????????????????)" name="ifMmPhone" value='<c:out value="${item.ifMmPhone}"></c:out>'>
														</div>
													</div>
												</td>
											</tr>
											<tr style="border-color: white;">
												<td>
													<div class="row">
														<div class="col">
															<span>??????</span>
														</div>
													</div>
												</td>
											</tr>
											<tr>
												<td>
													<div class="row">
														<div class="col">
															<div class="row">
																<div class="col-7">
																	<input type="text" class="form-control" placeholder="????????????" id="sample2_postcode" name="ifMmAddress_homenumber" value="${item.ifMmAddress_homenumber}">
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
															<input type="text" class="form-control" placeholder="??????" id="sample2_address" name="ifMmAddress" value="${item.ifMmAddress}">
														</div>
													</div>
													<div class="row">
														<div class="col">
															<input type="text" class="form-control" placeholder="????????????" id="sample2_detailAddress" name="ifMmAddress_detail" value="${item.ifMmAddress_detail}">
														</div>
													</div>
													<div class="row">
														<div class="col">
															<input type="text" class="form-control" placeholder="??????" id="x">
														</div>
														<div class="col">
															<input type="text" class="form-control" placeholder="??????" id="y">
														</div>
													</div>
													<div id="layer" style="display:none;position:fixed;overflow:hidden;z-index:1;-webkit-overflow-scrolling:touch;">
														<img src="//t1.daumcdn.net/postcode/resource/images/close.png" id="btnCloseLayer" style="cursor:pointer;position:absolute;right:-3px;top:-3px;z-index:1" onclick="closeDaumPostcode()" alt="?????? ??????">
													</div>
												</td>
											</tr>
											<tr style="border-color: white;">
												<td>
													<div class="row">
												        <div class="col">
												            <label for="ifMmUploadedImage" class="form-label input-file-button">???????????????</label>
												 			<input class="form-control" id="ifMmUploadedImage" name="ifMmUploadedImage" type="file" multiple="multiple" style="display: none;" onChange="upload('ifMmUploadedImage', 1, 0, 1, 0, 0, 1);">
															<div class="addScroll">
																<ul id="ulFile1" class="list-group">
																</ul>
															</div>
												        </div>
											        </div>
										        </td>
										        <td>
										        	<div class="row">
												        <div class="col">
															<label for="ifMmUploadedFile" class="form-label input-file-button">????????????</label>
															<input class="form-control" id="ifMmUploadedFile" name="ifMmUploadedFile" type="file" multiple="multiple" style="display: none;" onChange="upload('ifMmUploadedFile', 2, 0, 2, 0, 0, 2);" >
															<div class="addScroll">
																<ul id="ulFile2" class="list-group">
																</ul>
															</div>
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
			
			<!-- ???????????? ???????????? -->
			
			<div class="container">
				<p class="fs-4 px-2">???????????? ????????????</p>
				<div class="container border pt-2" style="border-radius: 15px;">
					<ul>
						<li>
							<div class="form-check form-switch">
								<input type="hidden" id="ifMmMarketingCheckNy" name="ifMmMarketingCheckNy" <c:if test="${item.ifMmMarketing eq 1 }">checked</c:if>>
								<input class="form-check-input" type="checkbox" id="ifMmMarketing" role="switch"  name="ifMmMarketing" value="0" > 
								<label class="form-check-label" for="ifMmMarketing">???????????? ?????? ?????? ??????(??????)</label>
							</div>
						</li>
						<li>
							<div class="form-check form-switch">
								<input class="form-check-input" type="checkbox" role="switch" id="">
								<label class="form-check-label" for="flexSwitchCheckDefault">????????? ??? ????????? ???????????? ?????? ?????? ??????(??????)</label>
							</div>
						</li>
						<li>
							<div class="form-check form-switch">
								<input class="form-check-input" type="checkbox" role="switch" id="">
								<label class="form-check-label" for="flexSwitchCheckDefault">????????? ??? ????????? ???????????? ?????? ?????? ??????(??????)</label>
							</div>
						</li>
					</ul>
				</div>
			</div>
			
			<!-- ???????????? ?????? -->
			
			<br>
			<div class="container">
				<div style="text-align: center;">
					<button type="button" class="btn btn-dark" id="btnForm">????????????</button>
				</div>
			</div>
			
			<!-- ???????????? ???????????? ?????? -->
			
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
								<h5 class="modal-title" id="exampleModalLabel2">??????!</h5>
								<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
							</div>
							<div class="modal-body">
								?????????????????????????
							</div>
							<div class="modal-footer">
								<button type="button" class="btn btn-secondary" data-bs-dismiss="modal">??????</button>
								<button type="button" class="btn btn-danger" id="DeleteYn">??????</button>
							</div>
						</div>
					</div>
				</div>	
			</div>
			<div style="margin-top: 8em;"></div>
			<%@include file = "../../../infra/common/xdmin/mainFooter.jsp" %>
		</form>
		<form id="formVo" name="formVo">
			<%@include file = "memberVo.jsp" %>
		</form>
	</div>
<!-- end -->
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
	<script src="https://kit.fontawesome.com/188ea9a4c6.js" crossorigin="anonymous"></script>
	<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
	<script src="/resources/js/validation.js"></script>
	<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=036d65cb9b7cdfe66aa8d121ce7c81b4&libraries=services"></script>
	
		
	<script type="text/javascript">
	//?????? ??????
	
	setCheckboxValue = function(obj, targetObj) {
	   if(obj.is(":checked")){
		   targetObj.val("1");
	    } else {
	    	targetObj.val("0");
	    }
	}
		
	 validationUpdt = function() {
            if (!id_regex($('input[name=ifMmId]'), $('input[name=ifMmId]').val(), "?????? ??????!", $('#id_msg'))) {
            	return false;
            } else if(!name_regex($('input[name=ifMmName]'), $('input[name=ifMmName').val(), "?????? ??????!", $('#name_msg'))) {
                return false;
            }else{
            	return true;
            } 
		}; 
	
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
	   		 if(validationUpdt() == false) return false;
	   		 setCheckboxValue($("#ifMmMarketing"), $("#ifMmMarketingNy"));
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
	//????????????
    var element_layer = document.getElementById('layer');
	var geocoder = new kakao.maps.services.Geocoder();
	var addr = ''; // ?????? ??????
	
    var callback = function(result, status) {
        if (status === kakao.maps.services.Status.OK) {
            console.log(result);
            document.getElementById('x').value = result[0].x;
       		document.getElementById("y").value = result[0].y;
        }
    };

    function closeDaumPostcode() {
        // iframe??? ?????? element??? ???????????? ??????.
        element_layer.style.display = 'none';
    }
		
    function sample2_execDaumPostcode(){
        new daum.Postcode({
            oncomplete: function(data) {
                
                //???????????? ????????? ?????? ????????? ?????? ?????? ?????? ?????? ????????????.
                if (data.userSelectedType === 'R') { // ???????????? ????????? ????????? ???????????? ??????
                    addr = data.roadAddress;
                } else { // ???????????? ?????? ????????? ???????????? ??????(J)
                    addr = data.jibunAddress;
                }

                // ??????????????? ?????? ????????? ?????? ????????? ?????????.
                document.getElementById('sample2_postcode').value = data.zonecode;
                document.getElementById("sample2_address").value = addr;
                // ????????? ???????????? ????????? ????????????.
                document.getElementById("sample2_detailAddress").focus();

                // iframe??? ?????? element??? ???????????? ??????.
                // (autoClose:false ????????? ???????????????, ?????? ????????? ???????????? ???????????? ???????????? ?????????.)
                element_layer.style.display = 'none';
                
                geocoder.addressSearch(addr, callback); 
            },
            width : '100%',
            height : '100%',
            maxSuggestItems : 5
        }).embed(element_layer);

        // iframe??? ?????? element??? ????????? ??????.
        element_layer.style.display = 'block';

        // iframe??? ?????? element??? ????????? ????????? ???????????? ???????????????.
        initLayerPosition();
    }

    // ??????????????? ?????? ????????? ?????? ???????????? ???????????? ?????????????????? ???????????????
    // resize????????????, orientationchange???????????? ???????????? ?????? ?????????????????? ?????? ????????? ?????? ?????? ????????????,
    // ?????? element_layer??? top,left?????? ????????? ????????? ?????????.
    function initLayerPosition(){
        var width = 300; //???????????????????????? ????????? element??? width
        var height = 400; //???????????????????????? ????????? element??? height
        var borderWidth = 5; //???????????? ???????????? border??? ??????

        // ????????? ????????? ????????? ?????? element??? ?????????.
        element_layer.style.width = width + 'px';
        element_layer.style.height = height + 'px';
        element_layer.style.border = borderWidth + 'px solid';
        // ???????????? ????????? ?????? ????????? ?????? ?????? ???????????? ????????? ??? ??? ????????? ????????? ????????????.
        element_layer.style.left = (((window.innerWidth || document.documentElement.clientWidth) - width)/2 - borderWidth) + 'px';
        element_layer.style.top = (((window.innerHeight || document.documentElement.clientHeight) - height)/2 - borderWidth) + 'px';
    }
    
    $("#refresh").on("click", function(){
    	$("#sample2_postcode").val('');
    	$("#sample2_address").val('');
    	$("#sample2_detailAddress").val('');
	})
	</script>
	
	<script type="text/javascript">		
	<!-- DatePicker -->
		$(document).ready(function () {
		    $.datepicker.regional['ko'] = {
		        closeText: '??????',
		        prevText: '?????????',
		        nextText: '?????????',
		        currentText: '??????',
		        monthNames: ['1???(JAN)','2???(FEB)','3???(MAR)','4???(APR)','5???(MAY)','6???(JUN)',
		        '7???(JUL)','8???(AUG)','9???(SEP)','10???(OCT)','11???(NOV)','12???(DEC)'],
		        monthNamesShort: ['1???','2???','3???','4???','5???','6???',
		        '7???','8???','9???','10???','11???','12???'],
		        dayNames: ['???','???','???','???','???','???','???'],
		        dayNamesShort: ['???','???','???','???','???','???','???'],
		        dayNamesMin: ['???','???','???','???','???','???','???'],
		        weekHeader: 'Wk',
		        dateFormat: 'yy-mm-dd',
		        firstDay: 0,
		        showMonthAfterYear: true,
		        changeMonth: true,
		        changeYear: true,
		        yearRange: 'c-99:c+99',
		    };	
		    $.datepicker.setDefaults($.datepicker.regional['ko']);
	
		    $('#dob').datepicker();
		    });
		
		$("#ifMmId").on("focusout", function(){
				$.ajax({
					async: true 
					,cache: false
					,type: "post"
					,dataType:"json" 
					,url: "/member/checkId"
					,data : { "ifMmId" : $("#ifMmId").val() }
					,success: function(response) {
						if(response.rt == "success") {
							$("#ifmmIdFeedback").css('display', 'block');
							document.getElementById("ifmmIdFeedback").innerText = "??????";
							
						} else {
							document.getElementById("ifmmIdFeedback").innerText = "?????????";
						}
					}
					,error : function(jqXHR, textStatus, errorThrown){
						alert("ajaxUpdate " + jqXHR.textStatus + " : " + jqXHR.errorThrown);
					}
				});
		});
		
		$("#ifMmPassWordRe").on("focusout", function(){
			var password = $("#ifMmPassWord");
			var passwordRe = $("#ifMmPassWordRe");
			
			if(password != '' && passwordRe == ''){
				null;
			}else if(password != "" || passwordRe != ""){
				if(password.val() == passwordRe.val()){
					$("#alert-success").css('display', 'block');
					$("#alert-danger").css('display', 'none');
				}else{
					$("#alert-success").css('display', 'none');
					$("#alert-danger").css('display', 'block');
					passwordRe.focus();
				}
			}
		});
		
		upload = function(objName, seq, allowedMaxTotalFileNumber, allowedExtdiv, allowedEachFileSize, allowedTotalFileSize, uiType) {
			
			const BOOTSTRAP5_SM_DIMENSIONS = "576";

			const URL_INDEX_ADMIN = "/index/indexView";
			const URL_LOGIN_FORM = "/member/loginForm";
			const URL_CHANGE_PWD_FORM = "/member/changePwdForm";

			const MAX_EACH_FILE_SIZE = 5 * 1024 * 1024;		//	5M
			const MAX_TOTAL_FILE_SIZE = 25 * 1024 * 1024;	//	25M
			const MAX_TOTAL_FILE_NUMBER = 5;				//	5

			function kbToMb(bytes) {
			    var e = Math.floor(Math.log(bytes)/Math.log(1024));

			    if(e == "-Infinity") return 0;
			    else return (bytes/Math.pow(1024, Math.floor(e))).toFixed(2).slice(0, -3);
			}
			
			checkUploadedTotalFileNumber = function(obj, allowedMaxTotalFileNumber, fileCount) {
				if(allowedMaxTotalFileNumber < fileCount){
					alert("?????? ?????? ????????? "+ allowedMaxTotalFileNumber +"??? ?????? ???????????????.");
//					$("#file"+seq).val("");
//					obj.val("");
					return false;
				}
			}


			checkUploadedExt = function(objName, seq, div) {
				var ext = objName.split('.').pop().toLowerCase();
				var extArray = eval("extArray" + div);
				
				if(extArray.indexOf(ext) == -1) {
					alert("????????? ???????????? ????????????.");
//					$("#file"+seq).val("");
					return false;
				}
			}


			checkUploadedEachFileSize = function(obj, seq, allowedEachFileSize) {

				if(obj.size > allowedEachFileSize){
					alert("??? ?????? ?????? ???????????? "+kbToMb(allowedEachFileSize)+"MB ????????? ?????? ???????????????.");
					$("#file"+seq).val("");
					return false;
				}
			}


			checkUploadedTotalFileSize = function(seq, totalSize, allowedTotalFileSize) {
				if(totalSize > allowedTotalFileSize){
					alert("?????? ????????? "+kbToMb(allowedTotalFileSize)+"M??? ?????? ??? ????????????.");
					$("#file"+seq).val("");
					return false;
				}
			}

//			objName ??? seq ??? jsp ????????? ?????? ????????? ???.
//			memberProfileImage: 1
//			memberImage: 2
//			memberFile : 3
			
			var extArray1 = new Array();
			extArray1 = ["jpg","gif","png","jpeg","bmp","tif","jfif"];
			
			var extArray2 = new Array();
			extArray2 = ["txt","pdf","hwp","doc","docx","xls","xlsx","ppt","pptx","html"];
			
			var totalFileSize = 0;
			var obj = $("#" + objName +"")[0].files;	
			var fileCount = obj.length;
			
			allowedMaxTotalFileNumber = allowedMaxTotalFileNumber == 0 ? MAX_TOTAL_FILE_NUMBER : allowedMaxTotalFileNumber;
			allowedEachFileSize = allowedEachFileSize == 0 ? MAX_EACH_FILE_SIZE : allowedEachFileSize;
			allowedTotalFileSize = allowedTotalFileSize == 0 ? MAX_TOTAL_FILE_SIZE : allowedTotalFileSize;
			
			if(checkUploadedTotalFileNumber(obj, allowedMaxTotalFileNumber, fileCount) == false) { return false; } 
			
			for (var i = 0 ; i < fileCount ; i++) {
				if(checkUploadedExt($("#" + objName +"")[0].files[i].name, seq, allowedExtdiv) == false) { return false; }
				if(checkUploadedEachFileSize($("#" + objName +"")[0].files[i], seq, allowedEachFileSize) == false) { return false; }

				totalFileSize += $("#" + objName +"")[0].files[i].size;
			}

			if(checkUploadedTotalFileSize(seq, totalFileSize, allowedTotalFileSize) == false) { return false; }
			
			if (uiType == 1) {
				$("#ulFile" + seq).children().remove();
				
				for (var i = 0 ; i < fileCount ; i++) {
					addUploadLi(seq, i, $("#" + objName +"")[0].files[i].name);
				}
			} else if(uiType == 2) {
				$("#ulFile" + seq).children().remove();
				
				for (var i = 0 ; i < fileCount ; i++) {
					addUploadLi(seq, i, $("#" + objName +"")[0].files[i].name);
				}
			} else if (uiType == 3) {
				var fileReader = new FileReader();
				 fileReader.readAsDataURL($("#" + objName +"")[0].files[0]);
				
				 fileReader.onload = function () {
					 $("#imgProfile").attr("src", fileReader.result);		/* #-> */
				 }		
			} else {
				return false;
			}
			return false;
		}
		
		
		addUploadLi = function (seq, index, name){
			
			var ul_list = $("#ulFile0");
			
			li = '<li id="li_'+seq+'_'+index+'" class="list-group-item d-flex justify-content-between align-items-center">';
			li = li + name;
			li = li + '<span class="badge bg-danger rounded-pill" onClick="delLi('+ seq +','+ index +')"><i class="fa-solid fa-x" style="cursor: pointer;"></i></span>';
			li = li + '</li>';
			
			$("#ulFile"+seq).append(li);
		}
		
		
		delLi = function(seq, index) {
			$("#li_"+seq+"_"+index).remove();
		}
		
	</script>
</body>
</html>