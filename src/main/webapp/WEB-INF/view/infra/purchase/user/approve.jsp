<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%> 

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<html>
<head>
	<meta name="viewport" content="width=device-width, initial-scale=1">
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
				<p id="datetiem">결제일시: ${data.created_at}</p>
				<p id = "item">상품명: ${dto.mNameKor}</p>
				<p id= "won">결제금액: ${dat.totalPrice}원</p>
				<p>tid: ${data.tid}</p>
				<form name="form">
					<%@include file = "Purchase.jsp" %>
					<input type="hidden" name="ifMmSeq" value="${sessSeq}" id="ifMmSeq">
					<input type="hidden" name="ifMmName" value="${sessName}" id="ifMmName">
					<input type="hidden" name="ifMmId" value="${sessId}" id="ifMmId">
					<input type="hidden" name="tid" value="" id="tid">
				</form>
			</div>
			<button id="" type="button" onclick="kakao()"></button>
		</div>
	</div>
</body>
<script>
	alert($("input[name=ifMmSeq]").val())
	alert($("input[name=ifMmName]").val())
	alert($("input[name=ifMmId]").val())
	alert($("input[name=tid]").val())

	function kakao() {
		var site = window.location.href;
		var url = new URl(site);
		const urlParams = url.searchParams;
		var token = urlParams.get('pg_token');
		document.write(urlParams.get('pg_token'));
		$.ajax({
			dataType:"json" 	
			,url: "/purchase/kakaopayApprove"
			,data:{
				name : name,
				price : price,
				date : date,
				time : time,
				token : token,
				id : id}
				,success: function(data) {
				} ,
				error:function(error){
					alert(error);
				}
		});
	};
	
</script>
</html>