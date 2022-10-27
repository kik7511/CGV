<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%> 

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<jsp:useBean id="CodeServiceImpl" class="com.cgv.modules.code.CodeServiceImpl"/>
<html lang="ko">
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>영화 그 이상의 감동. CGV</title>
	<link rel="stylesheet" type="text/css" href="fontawesome-free-5.15.1-web/css/fontawesome.min.css">
	<link rel="stylesheet" type="text/css" href="/resources/css/user/common.css">
	<link rel="stylesheet" type="text/css" href="/resources/css/user/content.css">
	<link rel="stylesheet" type="text/css" href="/resources/css/user/eggupdate.css">
	<link rel="stylesheet" type="text/css" href="/resources/css/user/jquery-ui-1.10.4.custom.min.css">
	<link rel="stylesheet" type="text/css" href="/resources/css/user/layout.css">
	<link rel="stylesheet" type="text/css" href="/resources/css/user/iCheck.css">
	<link rel="stylesheet" type="text/css" href="/resources/css/user/module.css">
	<link rel="stylesheet" type="text/css" href="/resources/css/user/phototicket.css">
	<link rel="stylesheet" type="text/css" href="/resources/css/user/preegg.css">
	<link rel="stylesheet" type="text/css" href="/resources/css/user/print.css">
	<link rel="stylesheet" type="text/css" href="/resources/css/user/reset.css">
	<link rel="stylesheet" type="text/css" href="/resources/css/user/slick.css">
	<link rel="stylesheet" type="text/css" href="/resources/css/user/slick-theme-custom.css">
	<link rel="stylesheet" type="text/css" href="/resources/css/user/swiper-bundle.min.css">
	<link rel="stylesheet" type="text/css" href="/resources/css/user/sebfont.css">
	<link rel="stylesheet" type="text/css" href="/resources/css/user/grid.css">
	<link rel="stylesheet" type="text/css" href="/resources/css/user/reservation.css">
	<link rel="stylesheet" type="text/css" href="/resources/css/user/reservation_tnb.css">
	<link rel="stylesheet" type="text/css" href="/resources/css/user/reservation_step3.css">
	<link rel="stylesheet" type="text/css" href="/resources/css/user/reservation_step3_step1.css">
	<link rel="stylesheet" type="text/css" href="/resources/css/user/reservation_step3_step2.css">
	<link rel="stylesheet" type="text/css" href="/resources/css/user/reservation_popup.css">
	<link rel="stylesheet" href="//code.jquery.com/ui/1.13.2/themes/base/jquery-ui.css">
	<link rel="stylesheet" href="/resources/demos/style.css">
	<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
	<script src="https://code.jquery.com/ui/1.13.2/jquery-ui.js"></script>
</head>
<body>

<!-- start -->
	<%@include file = "../../../infra/common/user/mainHeader.jsp" %>
		<!-- container -->
		<div id="contaniner" class=""><!-- 벽돌 배경이미지 사용 시 class="bg-bricks" 적용 / 배경이미지가 없을 경우 class 삭제  -->
			<div id="contents" class="" style="margin-bottom: 0px; padding-bottom: 25px;">
			</div>
			<div id="wrap">
				<div id="container">
					<div id="ticket" class="ticket ko">
						<div class="navi" style="height: 50px;">
							<span class="right">
								<a class="button button-reservation-restart" href="../purchase/ticketingForm.html"></a>
							</span>
						</div>
							<div class="step step3" style="display: block;">

								<div class="ticket_payment_method" style="min-height: 0px;">
									<a href="#" onclick="" id="ticket_payment_top" class="sreader">결제시작</a>
									
									<div id="lastPayMethod">
										<h4 class="ts3_titlebar ts3_t1">
											<span class="header">STEP. </span>
											<span class="title" style="color: #e0e0e0; overflow: visible;">최종결제 수단</span>
										</h4>
								<div class="tpm_wrap tpm_last_pay">
									<div class="tpm_body">
										<div>
											<div class="payment_select radio_group" id="lastPayCon">
												<span style="opacity: 1;">
													<input type="radio" id="last_pay_radio0" name="last_pay_radio" value="0" checked="checked">
													<label for="last_pay_radio0">카카오페이 </label>
												</span>
											</div>
											<!-- 2021.05.20 - 최종결제수단 '간편결제' 순서 변경 -->
											<div class="payment_form">
								<!-- 신용카드 -->
								<div id="payCredit" class="payment_input payment_card" style="display: block;">
									<div class="table_wrap card_default" style="width: auto; min-height: 210px;">
									</div><!-- card_default -->
									<div class="payment_input_exp" id="savePointCon">
										<span>※ 
											카카오페이 결제 가능 최소 금액은 1,000원 이상입니다.</span>
										<span>
											<span class="desc">
											<a href="#" onclick="" class="btn_savePoint">삼성U포인트 적립</a>&nbsp;&nbsp;<a href="#" onclick="" class="btn_savePoint">OK캐쉬백 적립</a>&nbsp;&nbsp;&nbsp;&nbsp;
											</span><br>
											<span class="option">
											(삼성U포인트, OK캐쉬백 포인트는 포인트 중복 적립 불가)
											</span>
										</span>
									</div>
								</div>
								<!-- 신용카드 --><!-- 휴대폰 -->
								<div id="payTransfer" class="payment_input" style="display: none;">
								
									<div class="table_wrap transfer_wrap">
										<h6>계좌이체 순서</h6>
										<div>1. 아래 결제하기 버튼 클릭 후 다음 단계로 이동<br>
										2. 결제내역 확인 후 결제하기 버튼 클릭 시 팝업창이 뜸<br>
										3. 해당 팝업에서 원하는 은행을 선택 후 계좌이체 정보를 입력하시면 됩니다.</div>
									</div>
									<div class="payment_input_exp">
										<span>※ 계좌이체 취소 시 다음 사항을 꼭 확인해주세요.<br>
											1) 예매일 이후 7일 이내 취소 시 - 자동환불은행 : 취소 후 즉시 처리 가능<br>
											2) 예매일 7일 이후 취소 시 - 환불 요청일로부터 7일 이상 소요됨<br>
											※ 계좌이체 진행 도중 취소 시, 선택하신 좌석의 재선택이 일시 제한될 수 있습니다.(약10분간)
										</span>
									</div>
								
								</div>
								<!-- 계좌이체 -->
											<div class="payment_input" style="display: none;"><div class="table_wrap transfer_wrap"><h6>네이버페이 결제 순서</h6><div style="width: 490px;">1. 우측 하단에 있는 "결제하기"버튼을 클릭해주세요.<br>2. 예매내역 확인 후 결제하기 버튼 클릭 시 '네이버페이' 결제 인증창이 뜹니다.<br>3. '네이버페이'결제 인증창에서 정보를 입력하신 후 결제해주세요.</div></div><div class="payment_input_exp"><span class="alert">'네이버페이'는 결제시, 기본 1% 네이버페이 포인트가 적립됩니다<br>'네이버페이'는 신용카드 선할인과 카드사 포인트는 이용이 불가능하며,<br>신용카드별 청구할인은 이용이 가능합니다.</span></div></div><div class="payment_input" style="display: none;"><div class="table_wrap transfer_wrap"><h6>스마일페이 결제 순서</h6><div style="width: 490px;">1. 아래 결제하기 버튼 클릭 후 다음 단계로 이동<br>2. 결제내역 확인 후 결제하기 버튼 클릭 시, 팝업창이 뜸<br>3. 해당 '스마일페이' 팝업에서 원하는 카드를 선택 후 정보를 입력하시면 됩니다.</div></div><div class="payment_input_exp"><span class="alert"><b style="display: inline-block; width: auto; text-align: left;">'스마일페이' 결제 시, 기본 0.5% 스마일캐시가 적립되며,<br>스마일카드로 결제 시, 기본 0.5% + 추가 2.0% 적립되어 최대 2.5% 적립됩니다.<br><br>'스마일페이' 는 즉시할인 신용카드, 카드사 포인트는 이용이 불가능하며,<br>신용카드별 청구할인은 이용이 가능합니다.</b></span></div></div><div class="payment_input" style="display: none;"><div class="table_wrap transfer_wrap"><h6>SSGPAY 결제 순서</h6><div style="width: 490px;">1. 우측 하단에 있는 '결제하기' 버튼을 클릭해주세요.<br>2. 예매내역 확인 후 결제하기 버튼 클릭 시 'SSGPAY' 결제 인증창이 뜹니다.<br>3. 'SSGPAY' 결제 인증창에서 정보를 입력하신 후 결제해주세요.</div></div><div class="payment_input_exp"><span class="alert">'SSGPAY' 는 결제 시 신용카드 선할인과 카드사 포인트는<br>이용이 불가능하며, 신용카드 별 청구할인은 이용이 가능합니다.</span></div></div><div class="payment_input" style="display: none;"><div class="table_wrap transfer_wrap"><h6>차이 결제 순서</h6><div style="width: 490px;">1. 우측 하단에 있는 “결제하기＂버튼을 클릭해주세요.<br>2. 예매내역 확인 후 결제하기 버튼 클릭 시 ＂차이” 결제 인증창이 뜹니다.<br>3. 차이 인증창에서 정보를 입력하신 후 결제해주세요.</div></div><div class="payment_input_exp"><span class="alert"><b style="display: inline-block; width: 480px; text-align: left;">- '차이'는 복합결제 시 신용카드 선할인과 카드사 포인트는 이용이 불가능하며, 신용카드별 청구할인은 이용이 가능합니다.<br>- 결제취소 시 환불금액은 차이머니로 환불됩니다.<br>- 결제 부분 취소 시 취소금액에 대해 적립 된 차이머니는 회수됩니다.<br>- 할인금액에 대해서는 차이머니 적립이 불가합니다.<br>- 차이머니 적립과 쿠폰 사용 중복은 불가합니다.</b></span></div></div><div class="payment_input" style="display: none;"><div class="table_wrap transfer_wrap"><h6>카카오페이 결제 순서</h6><div style="width: 490px;">1. 우측 하단에 있는 '결제하기' 버튼을 클릭해주세요.<br>2. 예매내역 확인 후 결제하기 버튼 클릭 시 '카카오페이' 결제 인증창이 뜹니다.<br>3. '카카오페이' 결제 인증창에서 정보를 입력하신 후 결제해주세요.</div></div><div class="payment_input_exp"><span class="alert">* '카카오페이' 는 신용카드 선할인과 카드사 포인트는 이용이 불가능하며,<br>신용카드별 청구할인은 이용이 가능합니다.</span></div></div><div class="payment_input" style="display: none;"><div class="table_wrap transfer_wrap"><h6>PAYCO 결제 순서</h6><div style="width: 490px;">1. 우측 하단에 있는 '결제하기' 버튼을 클릭해주세요.<br>2. 예매내역 확인 후 결제하기 버튼 클릭 시 'PAYCO' 결제 인증창이 뜹니다.<br>3. 'PAYCO' 결제 인증창에서 정보를 입력하신 후 결제해주세요.</div></div><div class="payment_input_exp"><span class="alert">'PAYCO' 는 씨티카드와 즉시할인 신용카드, 카드사 포인트는 이용이 불가능하며,<br>신용카드 별 청구할인은 이용이 가능합니다.<br>'PAYCO' 포인트 및 할인쿠폰 사용 금액에 대해서는 CJ ONE 포인트 적립이 불가합니다.</span></div></div><div class="payment_input" style="display: none;"><div class="table_wrap transfer_wrap"><h6>페이코인 결제 순서</h6><div style="width: 490px;">1. 아래 결제하기 버튼 클릭 후 다음 단계로 이동<br>2. 페이코인 QR 코드 인증 시 페이코인 결제 팝업창 발생<br>3. 페이코인 팝업에서 결제금액 확인 후 결제하기</div></div><div class="payment_input_exp"><span class="alert"></span></div></div><div class="payment_input" style="display: none;"><div class="table_wrap transfer_wrap"><h6>내통장결제 결제 순서</h6><div>1. 아래 결제하기 버튼 클릭 후 다음 단계로 이동<br>2. 결제내역 확인 후 결제하기 버튼 클릭 시, 팝업창 노출<br>3. 해당 팝업창을 통해 본인명의의 계좌 1회 등록<br>4. 계좌등록 시, 비밀번호만으로 현금 간편결제 서비스 이용</div></div><div class="payment_input_exp"><span class="alert">'내통장결제'는 CGV 내 본인명의 계좌 등록 후 비밀번호만으로 결제할 수 있는 간편 결제 서비스입니다.<br>은행 점검시간인 경우 내통장결제 서비스 이용이 불가합니다.</span></div></div><div class="payment_input" style="display: none;"><div class="table_wrap transfer_wrap"><h6>토스 결제 순서</h6><div>1. 우측 하단에 있는 "결제하기"버튼을 클릭해주세요.<br>2. 예매내역 확인 후 결제하기 버튼 클릭 시 '토스' 결제 인증창이 뜹니다.<br>3. '토스'결제 인증창에서 정보를 입력하신 후 결제해주세요.</div></div><div class="payment_input_exp"><span class="alert">'토스'는 신용카드 선할인과 카드사 포인트는 이용이 불가능하며,<br>신용카드별 청구할인은 이용이 가능합니다.</span></div></div></div>
										</div>
										
										<div class="payment_input_exp">
											<span><span class="desc"></span><span class="option"></span></span>
											<div class="buttons"></div>
										</div><!-- payment_input_exp -->
								
									</div><!-- tpm_body -->
								</div><!-- tpm_wrap tpm_last_pay -->
									</div>
								</div><!--//ticket_payment_method -->
			
								<div class="ticket_payment_summary">
									<div class="tps_wrap" style="top: 0px;">
									<!--<div class="tps_header"><div><span>10분</span> 안에<br/>예매를 완료해 주세요</div></div>-->
									<div class="tps_body">
										<div class="summary_box total_box">
											<div class="payment_header">결제하실 금액</div>
											<div class="payment_footer">
												<div class="result">
													<span class="num verdana" id="summary_total_amount">${dto.totalPrice}</span><span class="won">원</span>
												</div>
											</div>
										</div>
										<div class="summary_box discount_box" id="tps_discount_box">
											<div class="payment_header">할인내역</div>
											<div class="payment_body" id="summary_discount_list"></div>
											<div class="payment_footer">
												<div class="label">
													<span>총 할인금액</span>
												</div>
												<div class="result">
													<span class="num verdana" id="summary_discount_total">0</span><span class="won">원</span>
												</div>
											</div>
										</div>
										<div class="summary_box payment_box" id="tps_payment_box">
											<div class="payment_header">결제내역</div>
											<div class="payment_body" id="summary_payment_list"><dl><dt>신용카드</dt><dd><span class="num">${dto.totalPrice}</span><span class="won">원</span></dd></dl></div>
											<div class="payment_footer">
												<div class="label">
													<span>남은 결제금액</span>
												</div>
												<div class="result">
													<span class="num verdana" id="summary_payment_total">${dto.totalPrice}</span><span class="won">원</span>
												</div>
											</div>
											<div class="payment_footer" id="cjEmployeeDiscPayInfo" style="display: none;">
												<div class="result">
													<span class="title" style="display: block; position: absolute;">임직원예상결제가</span>
													<span class="amount">9,000</span><span class="won" style="top: 0px;">원</span>
												</div>
												<div class="employee_discount">
													<span class="comment">※ 간편 결제와 카드사에서 제공하는 올인원 카드는 임직원 할인 적용이 불가합니다.</span>
												</div>
											</div>
										</div>
									</div>
									<div class="tps_footer no_english">
									</div>
								<div id="timerView" class="tps_footer " style="height: 50px; font-weight: bold;"></div></div>
								</div>
							<div class="ticket_payment_clear"></div>
			</div>
									</div>
								</div>
							</div>
							<div id="ticket_tnb" class="tnb_container ">
					<div class="tnb step3">
						<!-- btn-left -->
						<a class="btn-left" id="backTo" title="좌석선택" style="cursor: pointer;">이전단계로 이동</a>
						<div class="info movie">
							<span class="movie_poster"><img src='/resources/images/user/<c:out value="${dto.src}" />_320.jpg' alt="영화 포스터" style="display: inline;"></span>
							<div class="row movie_title colspan2" style="display: block;">
								<span class="data letter-spacing-min ellipsis-line2"><a href="" target="_blank">${dto.mNameKor}</a></span>
							</div>
							<div class="row movie_type" style="display: block;">
								<span class="data ellipsis-line1"></span>
							</div>
							<div class="row movie_rating" style="display: block;">
								<span class="data"></span>
							</div>
							<div class="placeholder" title="영화선택" style="display: none;"></div>
						</div>
						<div class="info theater">
							<div class="row name" style="display: block;">
								<span class="header">극장 ${sessMName}</span>
								<span class="data letter-spacing-min ellipsis-line1"><a target="_blank" href="">${dto.thName}</a></span>
							</div>
							<div class="row date" style="display: block;">
								<span class="header">일시</span>
								<span class="data">${dto.thisDate} ${dto.thisTime}</span>
							</div>
							<div class="row screen" style="display: block;">
								<span class="header">상영관</span>
								<span class="data"></span>
							</div>
							<div class="row number" style="display: block;">
								<span class="header">인원</span>
								<span class="data" title="일반 1명">일반 1명</span>
							</div>
							<div class="placeholder" title="극장선택" style="display: none;"></div>
						</div>
						<div class="info seat">
							<div class="row seat_name" style="height: 20px;">
								<span class="header">좌석명</span>
								<span class="data" title="일반석">일반석</span>
							</div>
							<div class="row seat_no colspan3">
								<span class="header">좌석번호</span>
								<span class="data ellipsis-line3"></span>
							</div>
							<div class="placeholder" title="좌석선택" style="display: none;"></div>
						</div>
						<form id="formVo" name="formVo">
							<%@include file = "Purchase.jsp" %>
							<input type="hidden" name="ifMmSeq" value="${sessSeq}" id="ifMmSeq">
							<input type="hidden" name="ifMmName" value="${sessName}" id="ifMmName">
							<input type="hidden" name="ifMmId" value="${sessId}" id="ifMmId">
						</form>
						<!-- btn-right -->
						<div class="tnb_step_btn_right_before" id="tnb_step_btn_right_before"></div>
						<a class="btn-right on" id="tnb_step_btn_right"title="결제하기" href="javascript:kakao('${dto.mNameKor}', '${dto.stPrice}', ${dto.stRow}, ${dto.stCol}, '${dto.thName}', '${dto.dDate}', '${dto.dTime}', '${sessId}')">다음단계로 이동 - 레이어로 서비스 되기 때문에 가상커서를 해지(Ctrl+Shift+F12)한 후 사용합니다.</a>
					</div>
				</div>
				<div class="banner" id="ticket_bottom_banner" style="padding-top: 0px;">
					<img src="/resources/images/user/0803_996x140.jpg" alt="由щ명" style="width:996px;height:140px">
				</div>
				<div id="ticket_banner" class="ticket_banner" style="height: 375px;">
					<div>
						<div class="AdvertiseCon" id="RIA_Skin_Seat_L" style="width: 160px; height: 300px; background: none; position: absolute; top: 75px; left: -164px; overflow: hidden; display: block;">
							<img src="/resources/images/user/1221_160x300.jpg" width="160" height="300" border="0" alt="광고-CGV 기프트 카드" style="width: 160px; height: 300px;">
						</div>
						<div class="AdvertiseCon" id="RIA_Skin_Seat_R" style="width: 160px; height: 300px; background: none; position: absolute; top: 75px; left: 1000px; overflow: hidden; display: block;">
							<img src="/resources/images/user/1221_160x300.jpg" width="160" height="300" border="0" alt="광고-CGV 기프트 카드" style="width: 160px; height: 300px;">
						</div>
					</div>
				</div>
			</div>
			<!-- 예매내역 확인 -->
			<div class="ft_layer_popup popup_reservation_check " style="display: none;">
    			<div class="hd">
        <div class="title_area">
            
            <h4>예매내역 확인</h4>
			                
        </div>
        
    </div><!-- //hd -->
    <div class="bd">
        <div class="article reservation_info">
        	
            <h5>예매정보<span class="desc">결제하시기 전 예매내역을 다시 한번 확인해 주세요.</span></h5>
			
            <div class="content">
                <div class="poster"><img src="/resources/images/user/83280_185.jpg" alt="" style="visibility: visible;"></div>
                <table>
                    <caption>예매정보</caption>
                    <thead></thead>
                    <tbody>
                        <tr class="movie_name">
                            <th scope="row">영화명</th>
                            <td>${dto.mNameKor}</td>
                        </tr>
                        <tr class="theater">
                            <th scope="row">극장</th>
                            <td>CGV 범계</td>
                        </tr>
                        <tr class="screen">
                            <th scope="row">상영관</th>
                            <td>2관 (리클라이너)</td>
                        </tr>
                        <tr class="movie_date">
                            <th scope="row">일시</th>
                            <td>2022년 8월 6일(토) 16:00~18:10</td>
                        </tr>
                        <tr class="people">
                            <th scope="row">인원</th>
                            <td>일반 2명</td>
                        </tr>
                        <tr class="seat">
                            <th scope="row">좌석</th>
                            <td>E6,E5</td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>
        <div class="article payment_info">
        	
            <h5>결제정보<span class="desc">결제하기 버튼을 클릭하시면 결제가 완료됩니다.</span></h5>
			
            <table>
                <caption>결제정보</caption>
                <thead></thead>
                <tbody>
                    <tr class="payment_price">
                        <th scope="row">결제금액</th>
                        <td><span class="price">28,000</span>원</td>
                    </tr>
                    <tr class="payment_method">
                        <th scope="row" style="vertical-align:top;">결제수단</th>
                        <td><div id="payMethods" style="overflow:auto;height:170px"><div class="row"><span class="title" style="display: inline;">카카오페이</span><span class="content"><span class="price">28,000</span><span class="won">원</span></span></div></div></td>
                    </tr>
                </tbody>
            </table>
        </div>
        <div class="article desc" style="border-bottom: none; background: none;">
        	
            <ul>
                <li style="display: list-item;">인터넷 예매는 온라인상으로 영화상영 시간 20분 전 까지 취소 가능하며 20분 이후에는 현장에서 취소를 하셔야 합니다.</li>
                <li style="display: list-item;">현장 취소를 하는 경우 상영시간 이전까지만 가능하며 영화 상영 시작 시간 이후 취소나 환불은 되지 않습니다.</li>
                <li style="display: list-item;">극장 이용 시 마스크 착용은 필수입니다. 
					(미착용 시 입장 제한)
					본 영화는 에티켓 타임 없이 정시에 상영됩니다.
					관람 에티켓을 위한 사전 입장 부탁드립니다.
				</li>
            </ul>
			
            <a class="refundNotice" href="" target="_blank">
                &gt; 예약취소 및 환불규정 안내
           </a>
        </div>
        <div class="agreement" style="border-top: 1px solid rgb(204, 204, 204); padding-top: 15px; background: rgb(238, 238, 238); height: 80px; text-align: left; border-bottom: 1px solid rgb(204, 204, 204); padding-bottom: 15px; margin: 0px 0px 28px;"><div id="paymentAgreement" style="float: left; width: 47%; height: 100%; padding-left: 3%; border-right: 1px solid rgb(204, 204, 204);"><span class="inputModel" style="display: block; width: 410px; min-height: 15px; margin: 0px 0px 10px;"><input class="inputModel_input" type="checkbox" style="display: inline-block; vertical-align: top; margin-top: 1px;" id="agreementAll"><label class="inputModel_label" style="width: 93%; display: inline-block; margin-left: 5px; font-weight: bold;" for="agreementAll">결제대행서비스 약관에 모두 동의</label></span><span class="inputModel" style="display: block; width: 99%; min-height: 15px; margin-bottom: 5px; margin-left: 10px;" id="agreeMent0"><input class="inputModel_input agreeMentChk" type="checkbox" style="display: inline-block; vertical-align: top; margin-top: 1px;" id="agreeMent0val"><label class="inputModel_label" style="width: 325px; display: inline-block; margin-left: 10px;" for="agreeMent0val">전자금융거래 이용약관</label><button class="detailView" style="background: none; text-decoration: underline; font-size: 1em; color: rgb(32, 124, 202); padding: 0px; height: 16px; vertical-align: top;">전문확인</button></span><span class="inputModel" style="display: block; width: 99%; min-height: 15px; margin-bottom: 5px; margin-left: 10px;" id="agreeMent1"><input class="inputModel_input agreeMentChk" type="checkbox" style="display: inline-block; vertical-align: top; margin-top: 1px;" id="agreeMent1val"><label class="inputModel_label" style="width: 325px; display: inline-block; margin-left: 10px;" for="agreeMent1val">개인정보 수집 이용약관</label><button class="detailView" style="background: none; text-decoration: underline; font-size: 1em; color: rgb(32, 124, 202); padding: 0px; height: 16px; vertical-align: top;">전문확인</button></span><span class="inputModel" style="display: block; width: 99%; min-height: 15px; margin-bottom: 5px; margin-left: 10px;" id="agreeMent2"><input class="inputModel_input agreeMentChk" type="checkbox" style="display: inline-block; vertical-align: top; margin-top: 1px;" id="agreeMent2val"><label class="inputModel_label" style="width: 325px; display: inline-block; margin-left: 10px;" for="agreeMent2val">개인정보 제공 및 위탁 안내 약관</label><button class="detailView" style="background: none; text-decoration: underline; font-size: 1em; color: rgb(32, 124, 202); padding: 0px; height: 16px; vertical-align: top;">전문확인</button></span></div><div id="paymentInfoConfirm" style="float: left; width: 45%; height: 100%;"><span class="inputModel" style="display: none; width: 400px; min-height: 15px; margin: 0px 0px 7px 20px;"><input class="inputModel_input" type="checkbox" style="display: inline-block; vertical-align: top; margin-top: 1px;" id="resvNoshowfirm"><label class="inputModel_label" style="width: 93%; display: inline-block; margin-left: 10px; font-weight: bold;" for="resvNoshowfirm">취소 기한을 확인하였으며, 이에 동의합니다.</label></span><span class="inputModel" style="display: none; width: 400px; min-height: 15px; margin: 0px 0px 7px 20px;"><input class="inputModel_input" type="checkbox" style="display: inline-block; vertical-align: top; margin-top: 1px;" id="resvPKGfirm"><label class="inputModel_label" style="width: 93%; display: inline-block; margin-left: 10px; font-weight: bold;" for="resvPKGfirm">본 영화는 동시상영 영화로 부분환불이 불가한 영화입니다.</label></span><span class="inputModel" style="display: block; width: 420px; min-height: 15px; margin: 0px 0px 0px 20px; clear: both;"><input class="inputModel_input" type="checkbox" style="display: inline-block; vertical-align: top; margin-top: 1px;" id="resvConfirm"><label class="inputModel_label" style="width: 93%; display: inline-block; margin-left: 5px; font-weight: bold;" for="resvConfirm">상기 결제 내역을 모두 확인 했습니다</label></span></div></div>
    </div><!-- //bd -->
    <div class="ft">
        <a title="예매 결제하기" href="#" onclick="" class="reservation"><span class="sreader">예매 결제하기</span></a>
        <a title="예매 취소" href="#" onclick=";" class="cancel"><span class="sreader">예매 취소</span></a>
    </div><!-- //ft -->
</div>
       		<!-- Contents Start -->
			
				<!-- 실컨텐츠 시작 -->
            <!--/ Contents End -->
		<!-- E > 공지사항 & 고객센터 -->
		</div>
    <!-- E Contaniner -->
    <!-- S Footer -->
	    <%@include file = "../../../infra/common/user/mainFooter.jsp" %>
	</div>
<!-- end -->
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script>
	var formVo = $("form[name=formVo]");
	var goPurchase = "/purchase/ticketingForm";				/* #-> */
	var goAfter = "/purchase/approve";
	$("#backTo").on("click", function(){
		formVo.attr("action", goPurchase).submit();
	});
	
/* 	$("#tnb_step_btn_right").on("click", function(){
		formVo.attr("action", goAfter).submit();
	}); */
	 
	$(document).ready(function(){
	var scScreenType = ${dto.scScreenType};
	var mAgeLimit = ${dto.mAgeLimit};
	var stRow = ${dto.stRow};
	var scNumber = ${dto.scNumber};
	var stCol = ${dto.stCol};
	console.log(scNumber);
	<c:set var="listCodeAge" value="${CodeServiceImpl.selectListCachedCode('7')}"/>
		var arr = new Array();
	<c:forEach items="${listCodeAge}" var="listAge" varStatus="listAgeStatus">
		arr.push({
			num : "${listAge.ccSeq}"
			,name : "${listAge.ccCodeName}"
		});
	</c:forEach>
	<c:set var="listCodeScreen" value="${CodeServiceImpl.selectListCachedCode('10')}"/>
		var arr2 = new Array();
	<c:forEach items="${listCodeScreen}" var="listScreen" varStatus="listScreenStatus">
		arr2.push({
			num : "${listScreen.ccSeq}"
			,name : "${listScreen.ccCodeName}"
		});
	</c:forEach>
	for(var i=0; i<arr.length; i++){
		if(arr[i].num == mAgeLimit){
			var ageLimit = arr[i].name;
		}
	};
	
	for(var j=0; j<arr2.length; j++){
		if(arr2[j].num == scScreenType){
			var screenType = arr2[j].name;
		}
	};
	
	var arr3 = ["A", "B", "C", "D", "E", "F", "G", "H"];
	
	for(var k=0; k<arr3.length; k++){
		if(k+1 == stRow){
			var seat = arr3[k];
		}
	};
	$('div.movie_type').children('span.data').text(screenType);
	$('div.movie_rating').children('span.data').text(ageLimit + ' 관람가');
	$('div.screen').children('span.data').text(scNumber + '관');
	$('div.seat_no').children('span.data').text(seat + stCol);
	});
	
	function kakao(name, price, row, col, location, date, time, id) {
		$.ajax({
			dataType:"json" 	
			,url: "/purchase/kakaopay"
			,data:{
				name : name,
				price : price,
				row : row,
				col : col,
				location : location,
				date : date,
				time : time,
				id : id}
				,success: function(data) {
				console.log(data);
				var box = data.next_redirect_pc_url;
				window.open(box);
				} ,
				error:function(error){
					alert(error);
				}
		});
	};
	
	
</script>
</body>
</html>