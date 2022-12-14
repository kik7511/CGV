<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%> 

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<jsp:useBean id="CodeServiceImpl" class="com.cgv.modules.code.CodeServiceImpl"/>

<html lang="ko">
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>memberList</title>
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
					<a class="nav-link  active" href="/member/memberList" style="color: black;">????????????</a>
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
		<form method="post" name = myForm>
			<c:set var="listCodeGender" value="${CodeServiceImpl.selectListCachedCode('1')}"/>
			<c:set var="listCodeTel" value="${CodeServiceImpl.selectListCachedCode('2')}"/>
			<c:set var="listCodeEmail" value="${CodeServiceImpl.selectListCachedCode('12')}"/>
			<c:set var="listCodeMarketing" value="${CodeServiceImpl.selectListCachedCode('3')}"/>
			<input type="hidden" name = "thisPage" value='<c:out value="${vo.thisPage}" default="1" />'>
			<input type="hidden" name = "rowNumToShow" value='<c:out value="${vo.rowNumToShow}" />'>
			<input type="hidden" name = "ifMmSeq" value="<c:out value="${vo.ifMmSeq}"/>"/>
			<div class="container py-1">				
				<div class="container-fluid border px-0 mt-2 py-2" id="">
					<div class="row px-2 row-cols-6">
						<div class="col">
							<select class="form-select form-select-sm" name="shDelNy">
								<option value=""  <c:if test="${empty vo.shDelNy}">selected</c:if>>????????????</option>
								<option value="0" <c:if test="${vo.shDelNy eq 0}">selected</c:if>>N</option>
								<option value="1" <c:if test="${vo.shDelNy eq 1}">selected</c:if>>Y</option>
							</select>
						</div>
						<div class="col">
							<select class="form-select form-select-sm" name="shOptionDate">
								<option value="" <c:if test="${empty vo.shOptionDate}">selected</c:if>>????????????</option>
								<option value="1" <c:if test="${vo.shOptionDate eq 1}">selected</c:if>>?????????</option>
								<option value="2" <c:if test="${vo.shOptionDate eq 2}">selected</c:if>>?????????</option>
								<option value="3" <c:if test="${vo.shOptionDate eq 3}">selected</c:if>>?????????</option>
								<option value="4" <c:if test="${vo.shOptionDate eq 4}">selected</c:if>>??????</option>
							</select>
						</div>
						<div class="col">
							<input type="text" autocomplete="off" placeholder="?????????" class="form-control form-control-sm" id="shStartDate" name="shStartDate" value='<c:out value="${vo.shStartDate}"></c:out>'>
						</div>
						<div class="col">
							<input type="text" autocomplete="off" placeholder="?????????" class="form-control form-control-sm" id="shEndDate" name="shEndDate" value='<c:out value="${vo.shEndDate}"></c:out>'>
						</div>
					</div>			
					<div class="row px-2 py-2 row-cols-sm-6">
						<div class="col">
							<select class="form-select form-select-sm" id="shOption" name="shOption">
								<option value="" <c:if test="${empty vo.shOption}">selected</c:if>>????????????</option>
								<option value="1" <c:if test="${vo.shOption eq 1}">selected</c:if>>??????</option>
								<option value="2" <c:if test="${vo.shOption eq 2}">selected</c:if>>??????</option>
								<option value="3" <c:if test="${vo.shOption eq 3}">selected</c:if>>?????????</option>
								<option value="4" <c:if test="${vo.shOption eq 4}">selected</c:if>>??????</option>
							</select>
						</div>
						<div class="col">
							<input type="text" autocomplete="off" placeholder="?????????" class="form-control form-control-sm" id="shValue" name="shValue" value='<c:out value="${vo.shValue}"></c:out>'>
						</div>
						<div class="col">
							<div class="btn-group me-2 btn-group-sm" role="group" aria-label="First-gropu">
								<button type="button" class="btn btn-outline-secondary" id="btnList">
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
				<div style="margin-bottom: 10px;">
					<c:out value="total: ${vo.totalRows}"></c:out>
				</div>
				<table class="table table-responsive table-hover table-sm" style="text-align: center;" id="maintable">
					<tr class="table-dark">
						<th scope="col">
							<input type="checkbox" class="form-check-input" onclick="selectAll(this);" name=check>
						</th>
						<th scope="col">NO</th>
						<th scope="col">??????</th>
						<th scope="col">??????</th>
						<th scope="col">????????????</th>
						<th scope="col">?????????</th>
						<th scope="col">?????????</th>
						<th scope="col">?????????</th>
						<th scope="col">????????? ????????????</th>
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
								<c:forEach items="${list}" var="list" varStatus="status">
									<tr onclick="javascript:goForm(<c:out value="${list.ifMmSeq}" />)">
										<td onclick="event.cancelBubble=true">
											<input type="checkbox" class="form-check-input" name=check>
										</td>
										<th scope="col">${list.ifMmSeq}</th>
										<td>${list.ifMmName}</td>
										<td>
											<c:forEach items="${listCodeGender}" var="listGender" varStatus="statusGender">
												<c:if test="${list.ifMmGender eq listGender.ccSeq}"><c:out value="${listGender.ccCodeName}"/></c:if>
											</c:forEach>
										</td>
										<td>
											<fmt:formatDate value="${list.ifMmDob}" pattern="yyyy.MM.dd" />
										</td>
										<td>${list.ifMmId}</td>
										<td>${list.ifMmPhone}</td>
										<td>${list.ifMmEmail}@
											<c:forEach items="${listCodeEmail}" var="listEmail" varStatus="statusEmail">
												<c:if test="${list.ifMmEmailAddress eq listEmail.ccSeq}"><c:out value="${listEmail.ccCodeName}"/></c:if>
											</c:forEach>
										</td>
										<td>
											<c:forEach items="${listCodeMarketing}" var="listMarketing" varStatus="statusMarketing">
												<c:if test="${list.ifMmMarketing eq listMarketing.ccSeq}"><c:out value="${listMarketing.ccCodeName}"/></c:if>
											</c:forEach>
										</td>
									</tr>
								</c:forEach>
							</c:otherwise>
						</c:choose>
					</tbody>
				</table>
				<!-- pagination s -->
				<%@include file="../../../infra/common/xdmin/pagination.jsp"%>
				<!-- pagination e -->
			</div>
			<div class="container">
				<div class="btn-group me-2 btn-group-sm" role="group" style="float:  right;">
					<button type="button" class="btn btn-outline-secondary" id="btnForm">
						<i class="fa-solid fa-plus"></i>
					</button>
					<button type="button" class="btn btn-outline-danger" id="deleteInput" data-bs-toggle="modal" data-bs-target="#deleteModal" onclick="return submit2(this.form)">
						<i class="fa-solid fa-trash-can"></i>
					</button>
					<!-- <div class="modal fade" id="deleteModal" tabindex="-1" aria-labelledby="deleteModalLabel" aria-hidden="true">
						<div class="modal-dialog" id="result">
							<div class="modal-content">
								<div class="modal-header">
									<h5 class="modal-title" id="exampleModalLabel">???????????? ??????</h5>
									<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
								</div>
								<div class="modal-body">
									<p>?????? ?????????????????????????</p>	
								</div>
								<div class="modal-footer">
        							<button type="button" class="btn btn-secondary" data-bs-dismiss="modal">??????</button>
        							<button type="button" class="btn btn-danger" id="delRow">??????</button>
      							</div>
    						</div>
  						</div>
					</div> -->
				</div>
				<div class="btn-group me-2 btn-group-sm" role="group" style="float: left;">
					<button type="button" class="btn btn-success" id="btnExcel" title="??????????????? ????????????" >
						<i class="fa-solid fa-copy"></i>
					</button>
				</div>
			</div>
			<div style="margin-top: 8em;"></div>
			<%@include file = "../../../infra/common/xdmin/mainFooter.jsp" %>
		</form>
	</div>
<!-- end -->

	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
	<script src="https://kit.fontawesome.com/188ea9a4c6.js" crossorigin="anonymous"></script>	
	<script type="text/javascript">
		/* ???????????? ?????? ?????? */
		function selectAll(selectAll){
			const checkboxes 
				= document.getElementsByName("check");
			
		checkboxes.forEach((checkbox) => {
			checkbox.checked = selectAll.checked;
		})
	}
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
		
		
		<script>
		var goUrlList = "/member/memberList"; 			/* #-> */
		var goUrlInst = "/member/memberInst"; 			/* #-> */
		var goUrlUpdt = "/member/memberUpdt";				/* #-> */
		var goUrlUele = "/member/memberUelete";				/* #-> */
		var goUrlDele = "/member/memberDelete";				/* #-> */
		var goUrlForm = "/member/memberForm";				/* #-> */
		var seq = $("input:hidden[name=ifMmSeq]");				/* #-> */
		var excelUri = "/member/excelDownload";				/* #-> */
		
		var form = $("form[name=myForm]");
		
		$('#btnList').on("click", function(){
			form.attr("action", goUrlList).submit();
		});
		
		$('#btnForm').on("click", function() {
			goForm(0);                
		});

		goForm = function(keyValue) {
	    	/* if(keyValue != 0) seq.val(btoa(keyValue)); */
	    	seq.val(keyValue);
			form.attr("action", goUrlForm).submit();
		}
		
		goList = function(thisPage) {
			$("input:hidden[name=thisPage]").val(thisPage);
			form.attr("action", goUrlList).submit(); 
		}
		
		$("#btnExcel").click(function() {
			form.attr("action", excelUri).submit();
		});
		
	</script>
</body>
</html>