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
				<p id="datetiem">결제일시: 2022-10-26T13:52:58</p>
				<p id = "item">상품명: 커피</p>
				<p id= "won">결제금액: 5500원</p>
			</div>
			<button id="" type="button" onclick="kakao()"></button>
		</div>
	</div>
</body>
<script>
	var name = opener.$('#mNameKor').val();
	var price = opener.$('#totalPrice').val();
	var date = opener.$('#dDate').val();
	var time = opener.$('#dTime').val();
	var id = opener.$('#ifMmId').val();
	
	$(document).ready(function(){
		console.log(name);
		$('#datetiem').text('결제일시: ' + date + "" + time);
		$('#item').text('상품명: ' + name);
		$('#won').text('결제금액: ' + price + "원");
	});
	
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