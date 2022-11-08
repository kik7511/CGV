<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%> 

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<html>
<head>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
	<link rel="stylesheet" media="screen" href="/resources/css/user/payment.css">
	<link rel="stylesheet" href="//code.jquery.com/ui/1.13.2/themes/base/jquery-ui.css">
	<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
	<script src="https://code.jquery.com/ui/1.13.2/jquery-ui.js"></script>
	<script src="/demo/pay/assets/js/jquery-3.4.1.min.js"></script>
</head>
<body>
	<div id="payment">
		<div class="header">
			<strong>
				<kakaopay></kakaopay>
			</strong>
		</div>
		<div class="body">
			<div class="content">
				<p>카카오페이 결제가 정상적으로 완료되었습니다.</p>
				<p id="datetiem">결제일시: ${datetime}</p>
				<p id = "item">상품명: ${item}</p>
				<p id= "won">결제금액: ${won}원</p>
				<form name="form">
					<input type = "hidden" name = "thLocation" id = "thLocation" value = "${thLocation}" >
					<input type = "hidden" name = "mNameKor" value = "${item}" id = "mNameKor" >
					<input type = "hidden" name = "src" value = "${mSrc}" id = "src" >
					<input type = "hidden" name = "mAgeLimit" value = "${mAgeLimit}" id = "mAgeLimit" >
					<input type = "hidden" name = "thName" value = "${thName}" id = "thName" >
					<input type = "hidden" name = "dDate" value = "${dDate}" id = "dDate" >
					<input type = "hidden" name = "dSeq" value = "${dSeq}" id = "dSeq" >
					<input type = "hidden" name = "dTime" value = "${dTime}" id = "dTime" >
					<input type = "hidden" name = "scNumber" value = "${scNumber}" id = "scNumber" >
					<input type = "hidden" name = "mSeq" value = "${mSeq}" id = "mSeq" >
					<input type = "hidden" name = "scTotalSeat" value = "${scTotalSeat}" id = "scTotalSeat" >
					<input type = "hidden" name = "scScreenType" value = "${scScreenType}" id = "scScreenType" >
					<input type = "hidden" name = "scRow" value = "${scRow}" id = "scRow" >
					<input type = "hidden" name = "scCol" value = "${scCol}" id = "scCol" > 
					<input type = "hidden" name = "stSeq" value = "${stSeq}" id = "stSeq" >
					<input type = "hidden" name = "stRow" value = "${stRow}" id = "stRow" >
					<input type = "hidden" name = "stCol" value = "${stCol}" id = "stCol" >
					<input type = "hidden" name = "stPrice" value = "${stPrice}" id = "stPrice">
					<input type = "hidden" name = "totalPrice" value = "${totalPrice}" id = "totalPrice"> 
					<input type = "hidden" name="ifMmSeq" value="${ifmmSeq}" id="ifMmSeq">
					<input type = "hidden" name="ifMmName" value="${ifmmName}" id="ifMmName">
					<input type = "hidden" name="ifMmId" value="${ifmmId}" id="ifMmId">
				</form>
			</div>
			<button id="" type="button" class="btn btn-info" onclick="kakaopayApprove()">확인</button>
		</div>
	</div>
</body>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
	<script src="https://kit.fontawesome.com/188ea9a4c6.js" crossorigin="anonymous"></script>
<script>
	var form = $("form[name=form]");
	var goAfter = "/purchase/afterTicketingView";	
	
	function kakaopayApprove() {
		const urlParams = new URL(location.href).searchParams;

		var pg_token = urlParams.get('pg_token');

		console.log(pg_token);
		
		var item = {item};
		var won = ${won};
		var id = $("input[name=ifMmId]").val();
		console.log(item);
		console.log(won);
		console.log(ifmmId);
		
		$.ajax({
			dataType:"json" 	
			,url: "/purchase/kakaopayApprove"
			,data:{
				"name" : item,
				"price" : won,
				"token" : pg_token,
				"id" : id
					}
				,success: function(data) {
					form.attr("action", goAfter).submit();
				} ,
				error:function(error){
					alert(error);
				}
		});
	};
	
</script>
</html>