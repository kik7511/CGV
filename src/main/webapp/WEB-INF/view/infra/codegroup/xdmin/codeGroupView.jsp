<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%> 

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<html lang="ko">
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>codegroupView</title>
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
					<a class="nav-link active" aria-current="page" href="/codeGroup/codeGroupList" style="color: black;">??????????????????</a>					
				</li>
				<li class="nav-item">
					<a class="nav-link" href="/code/codeList" style="color: black;">????????????</a>
				</li>
				<li class="nav-item">
					<a class="nav-link" href="/member/memberList" style="color: black;">????????????</a>
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
			<img alt="" src="/resources/images/mainpage.jpg" style="width: 100%;">						
		</div>		
		<form method="post" id="myForm" name="myForm">
			<div class="container">
				<div class="table border" style="border-radius: 1em;">
					<table class="table align-middle">
						<tbody>
							<tr style="border-color: white;">
								<td>
									<div class="row row-cols-2">
										<div class="col">
											<span>???????????? ??????</span>
										</div>
									</div>
								</td>
								<td>
									<div class="row">
										<div class="col">
											<span>???????????? ??????(Another)</span>
										</div>
									</div>
								</td>
							</tr>
							<tr>
								<td>
									<div class="row">
										<div class="col">
											<input type="text" class="form-control" placeholder="????????????" id="" value="<c:out value="${item.ccgSeq}"></c:out> " name = "ccgSeq">
										</div>
									</div>	
								</td>
								<td>
									<div class="row">
										<div class="col">
											<input type="text" class="form-control" placeholder="??????(????????????), ??????" name="">
										</div>
									</div>	
								</td>
							</tr>
							<tr style="border-color: white;">
								<td>
									<div class="row ">
										<div class="col">
											<span>???????????? ??????(??????)</span>
										</div>
									</div>
								</td>
								<td>
									<div class="row">
										<div class="col">
											<span>???????????? ??????(??????)</span>
										</div>
									</div>
								</td>
							</tr>
							<tr>
								<td>
									<div class="row">
										<div class="col">
											<input type="text" class="form-control" placeholder="??????, ??????" id="codeGroupK" name="codeGroupK" value='<c:out value="${item.codeGroupK}"></c:out>'>
										</div>
									</div>
								</td>
								<td>
									<div class="row">
										<div class="col">
											<input type="text" class="form-control" placeholder="??????, ??????" id="codeGroup" name="codeGroup" value='<c:out value="${item.codeGroup}"></c:out>'>
										</div>
									</div>
								</td>
							</tr>
							<tr style="border-color: white;">
								<td>
									<div class="row ">
										<div class="col">
											<span>????????????</span>
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
											<input type="text" class="form-control" placeholder="??????" name="ccgOrder" id="ccgOrder" value='<c:out value="${item.ccgOrder}"></c:out>'>
										</div>
									</div>
								</td>
							</tr>
							<tr style="border-color: white;">
								<td>
									<div class="row ">
										<div class="col">
											<span>??????</span>
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
											<textarea style="width: 100%" name="reference" id="reference" value='<c:out value="${item.reference}"></c:out>'></textarea>
										</div>									
									</div>
								</td>
								<td>
									<div class="row">
										<div class="col">
											<select class="form-select"  name = "ccgDelNy" value='<c:out value="${item.ccgDelNy}"></c:out>'>
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
											<span>??????1(varchar type)</span>
										</div>
									</div>
								</td>
								<td>
									<div class="row">
										<div class="col">
											<span>??????2(varchar type)</span>
										</div>
									</div>
								</td>
							</tr>
							<tr>
								<td>
									<div class="row">
										<div class="col">
											<input type="text" class="form-control" placeholder="??????(????????????), ??????">
										</div>
									</div>
								</td>
								<td>
									<div class="row">
										<div class="col">
											<input type="text" class="form-control" placeholder="??????(????????????), ??????">
										</div>
									</div>
								</td>
							</tr>
							<tr style="border-color: white;">
								<td>
									<div class="row ">
										<div class="col">
											<span>??????3(varchar type)</span>
										</div>
									</div>
								</td>
							</tr>
							<tr>
								<td>
									<div class="row">
										<div class="col">
											<input type="text" class="form-control" placeholder="??????(????????????), ??????">
										</div>
									</div>
								</td>
							</tr>
							<tr style="border-color: white;">
								<td>
									<div class="row ">
										<div class="col">
											<span>??????1(int type)</span>
										</div>
									</div>
								</td>
								<td>
									<div class="row">
										<div class="col">
											<span>??????2(int type)</span>
										</div>
									</div>
								</td>
							</tr>
							<tr>
								<td>
									<div class="row">
										<div class="col">
											<input type="text" class="form-control" placeholder="??????">
										</div>
									</div>
								</td>
								<td>
									<div class="row">
										<div class="col">
											<input type="text" class="form-control" placeholder="??????">
										</div>
									</div>
								</td>
							</tr>
							<tr style="border-color: white;">
								<td>
									<div class="row ">
										<div class="col">
											<span>??????3(int type)</span>
										</div>
									</div>
								</td>
							</tr>
							<tr>
								<td>
									<div class="row">
										<div class="col">
											<input type="text" class="form-control" placeholder="??????">
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
					<button type="button" class="btn btn-dark" name="" id="btnSave" onclick= "">????????????</button>
				</div>
				<div class="btn-group me-2 btn-group-sm" role="group" style="float: right;">	
					<button type="button" class="btn btn-danger" id="btnDelete">
						<i class="fa-solid fa-file-circle-xmark"></i>
					</button>
				</div>
				<div class="btn-group me-2 btn-group-sm" role="group" style="float: right;">	
					<button type="button" class="btn btn-danger" id="btnUelete" onclick="">
						<i class="fa-solid fa-trash-can"></i>
					</button>
				</div>
				<div class="btn-group me-2 btn-group-sm" role="group" style="float: right;">	
					<button type="button" class="btn btn-success" id="" onclick="location.href='/codeGroup/codeGroupList'">
						<i class="fa-solid fa-list"></i>
					</button>
				</div>
			</div>
			<div style="margin-top: 8em;"></div>
			<%@include file = "../../../infra/common/xdmin/mainFooter.jsp" %>
		</form>
	</div>
	
	<script type="text/javascript">
		var goUrlUele = "/codeGroup/codeGroupUelete";	
		var goUrlDele = "/codeGroup/codeGroupDelete";
		var goUrlUdtd = "/codeGroup/codeGroupMod";
		var form = $("#myForm");				
		
		$("#btnUelete").on("click", function(){
			form.attr("action", goUrlUele).submit();
		})
		
		$("#btnDelete").on("click", function(){
			form.attr("action", goUrlDele).submit();
		}) 
		
		$("#btnSave").on("click", function(){
			form.attr("action", goUrlUdtd).submit();
		})
	</script>
<!-- end -->

	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
	<script src="https://kit.fontawesome.com/188ea9a4c6.js" crossorigin="anonymous"></script>	
	<script type="text/javascript">
		/* ?????? ???????????? */
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
		//alert(document.getElementById('ccgUseNy').option[document.getElementById('ccgUseNy').selectedIndex].value); //????????? ??? ????????? but ???????????? ????????? ???
		//alert(document.querySelector("input[name='ch']:checked").value);  //????????? ??????
		//alert(document.getElementById('ccgOrder').value);
		//alert(document.getElementById('reference').value);
		
		//return false;
		
			//??? ????????? ??? ????????? + ??? ?????? ??? ?????????-????????? ????????? ?????? ?????? ????????? ?????? ????????? ?????? ???????????? ???????????? ??? - while ??? ???????????? ????????
			
		 /* if(document.getElementById('codeGroupK').value == null || document.getElementById('codeGroupK').value == ''){
			alert("??????????????????");
			document.getElementById('codeGroupK').value='';
			document.getElementById('codeGroupK').focus();
			return false;
		}
			document.getElementById('myForm').submit(); */
			
			/*		        
	        //????????????
	        
	        // radio 
        	if($('input:radio[name=codeGroup_Gender]').is(':checked') == false) {
				alert("????????? ???????????????");
			}else {
				alert(document.querySelector('input[name=ch]').value);					
			}
			
        	
	        // checkbox
        	if (document.querySelector('input[name=ch]:checked') == null) {
 				alert("????????? ???????????????");
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