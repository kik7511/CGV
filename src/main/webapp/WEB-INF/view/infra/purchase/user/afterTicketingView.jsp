<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
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
						<div class="steps">
			<div class="step step4" style="display: block;">
			<!-- complement of payment 섹션 -->
			<div class="section section-complement" style="height: 698px;">
		    	<div class="col-head">
		        <!--<img src="/resources/images/user /title_complement.png" alt="예매 완료" />-->
		    	</div>
			<div class="col-body">
		        <div class="article result">
		            <div class="text_complement" style="margin-top: 40px; margin-bottom: -35px;"><img src="/resources/images/user/text_complement.png" alt="예매가 완료 되었습니다."></div>
		            <div class="ticket_summary_wrap">
		                <div class="ticket_summary">
		                    <div class="poster">
		                    	<img src="/resources/images/user/${dto.src}_320.jpg" alt="" style="visibility: visible; display: inline;">
		                   	</div>
		                    <table>
		                        <caption>예매정보</caption>
		                        <thead></thead>
		                        <tbody>
		                            <tr class="ticket_no">
		                                <th scope="row">예매번호</th> 
		                                <td><span class="red">0155-0805-4772-271</span></td>
		                            </tr>
		                            <tr class="movie_name">
		                                <th scope="row">영화</th>
		                                <td><em>${dto.mNameKor}</em></td>
		                            </tr>
		                            <tr class="theater">
		                                <th scope="row">극장</th>
		                                <td>
		                                	<em>
		                                		<span class="theater_name">${dto.thName}</span> / <span class="theater_loc">${dto.scNumber}관</span>
		                               		</em>
		                               	</td>
		                            </tr>
		                            <tr class="movie_date">
		                                <th scope="row">일시</th>
		                                <td><em>${dto.dDate} ${dto.dTime} ~ </em></td>
		                            </tr>
		                            <tr class="people">
		                                <th scope="row">인원</th>
		                                <td><em>일반 1명</em></td>
		                            </tr>
		                            <tr class="seat">
		                                <th scope="row">좌석</th>
		                                <td><em>${dto.stRow}${dto.stCol}</em></td>
		                            </tr>
		                            <tr class="payment_price">
		                                <th scope="row">결제금액</th>
		                                <td><span class="price">${dto.totalPrice}</span> 원</td>
		                            </tr>
		                            <tr class="payment_method">
		                                <th scope="row">결제수단</th>
		                                <td>
		                                    <!--
		                                    <div class="row">
		                                        <span class="title"><em>신용카드</em></span>
		                                        <span class="content"><span class="price">5,000</span>원 (BC카드 할인 <span class="price">3,000</span>원)</span>
		                                    </div>
		                                    <div class="row">
		                                        <span class="title"><em>휴대폰</em></span>
		                                        <span class="content"><span class="price">5,000</span>원</span>
		                                    </div>
		                                    -->
		                                	<div class="row">
		                                		<span class="title"><em>카카오페이</em></span>
		                                		<span class="content"><span class="price">${dto.totalPrice}</span> 원</span>
		                               		</div>
		                                </td>
		                            </tr>
		                        </tbody>
		                    </table>
		                </div>
		            </div>
		            <div class="ticket_exception" style="display: none;">
		                <em>CGV 청담씨네시티는 대중교통이용을 권장합니다.</em><br>
		                <span class="desc">발레파킹을 이용하실 수 있으나, 가능 차량수가 한정적이며 주변 교통상황에 따라 지연될 수 있습니다.</span>
		                <!--<br/><a class="btn_traffic_info" href="#" onclick=""><img src="http://img.cgv.co.kr/CGV_RIA/Ticket/image/reservation/step4/btn_traffic_info.png" alt="교통안내"/></a>-->
		            </div>
		            <div class="ticket_button_group"><div>
		                <a class="btn_step4 btn_red btn_ticket_print" href="#" onclick="printHomeTicket();" style="margin: 0px 5px;"><span>예매정보 출력</span></a>
		                <a class="btn_step4 btn_result_smssend" href="#" onclick="sendTicketResultSMS();" style="margin: 0px 5px;"><span>예매결과 SMS발송</span></a>
		                <a class="btn_step4 btn_ticket_check" href="#" onclick="confirmCancelTicketResult();" style="margin: 0px 5px;"><span>예매확인/취소</span></a>
		                <a class="btn_step4 btn_red btn_ticket_check_red" href="#" onclick="confirmCancelTicketResult();" style="margin: 0px 5px;"><span>예매확인/취소</span></a>
		                <a class="btn_step4 btn_ticket_message" href="#" onclick="enterTicketMessage();" style="margin: 0px 5px;"><span>티켓메시지 입력</span></a>
		                <a class="btn_step4 btn_cinedechef" href="#" onclick="ticketPopupShow('popup_cinedechef', $(this));" style="display: none; margin: 0px 5px;"><span>CINE de CHEF 이용안내</span></a>
		            </div></div>
		            <div class="ticket_instructions">
		                <dl>
		                    <dt><img src="/resources/images/user/text_ticket_instructions.png" alt="예매 유의 사항"></dt>
		                    <dd>
		                        <ul>
		                            <li>CJ ONE 포인트는 상영일 익일 적립됩니다.<em>(영화관람권, 비회원 예매 제외)</em></li>
		                            <!--li>홈티켓 출력 시, 별도의 티켓 발권 없이 바로 입장 가능합니다.<br /><em>(그 외에는 신분증 소지 후, 티켓판매기 혹은 매표소에서 티켓을 발권 받으셔야 합니다)</em></li-->
		                            <li>영화 상영 스케줄은 영화관사정에 의해 변경될 수 있습니다.</li>
		                            <li>비회원 예매하신 경우는 예매내역이 이메일로  발송되지 않습니다.</li>
		                        </ul>
							</dd>
		                </dl>
		            </div>
		        </div>
		        <div class="article sub_contents">
		            <div class="ad_unit shop">
						<div class="option">
							<ul>
								<li class="photoTicket">
									<a href="#" class="btn_photo_ticket" onclick="editPhotoTicket();" title="포토티켓 꾸미기">
										<span>포토티켓 꾸미기</span>
									</a>
								</li>
							</ul>
						</div>
						<div class="giftcon_area">
							<div class="tit_area">
								<h3>
									<img src="/resources/images/user/h3_tit_text_combo_ko.png" alt="영화만 보시려구요?">
									<a class="more" href="">
										<img src="/resources/images/user/btn_more.png" alt="MORE" target="_blank" title="새창열기">
									</a>
								</h3>
								<p><img src="/resources/images/user/text_combo_ko.png" alt="온라인 구매 시, 콤보 500원 할인해드립니다!"></p>
							</div>
							<div class="giftcon_list">
								<ul class="ad">
									<li>
										<div class="thumb">
											<img src="/resources/images/user/15468205507850.png" alt="CGV 콤보" width="90">
										</div>
										<div class="desc">
											<dl>
												<dt>CGV 콤보</dt>
												<dd>
													<span class="price_sale">8,500원</span>&nbsp;&nbsp;<span>8,000원</span>
													<div class="btn_area cf">
														<a class="btn_gift" title="선물하기" data-no="8796" href=" ">
															<span>선물하기</span>
														</a>
														<a class="btn_buy" title="구매하기" data-no="8796" href="">
															<span>구매하기</span>
														</a>
													</div>
												</dd>
											</dl>
										</div>
									</li>
									<li>
										<div class="thumb">
											<img src="/resources/images/user/15468205507070.png" alt="라지콤보" width="90">
										</div>
										<div class="desc">
											<dl>
												<dt>라지콤보</dt>
													<dd>
														<span class="price_sale">13,500원</span>&nbsp;&nbsp;<span>13,000원</span>
														<div class="btn_area cf">
															<a class="btn_gift" title="선물하기" data-no="9057" href="">
																<span>선물하기</span>
															</a>
															<a class="btn_buy" title="구매하기" data-no="9057" href="">
																<span>구매하기</span>
															</a>
														</div>
													</dd>
												</dl>
											</div>
										</li>
										<li>
											<div class="thumb">
												<img src="/resources/images/user/15337793954160.png" alt="더블콤보" width="90">
											</div>
											<div class="desc">
												<dl>
													<dt>더블콤보</dt>
													<dd>
														<span class="price_sale">11,500원</span>&nbsp;&nbsp;<span>11,000원</span>
														<div class="btn_area cf">
															<a class="btn_gift" title="선물하기" data-no="9041" href="">
															<span>선물하기</span>
															</a>
															<a class="btn_buy" title="구매하기" data-no="9041" href="">
																<span>구매하기</span>
															</a>
														</div>
													</dd>
												</dl>
											</div>
										</li>
									</ul>
								</div>
							</div>
						</div>
		        	</div>
		        	<div class="banner_area">
			        	<a target="_blank" href=";click_id=85714&amp;maid=&amp;event=" style="background-color: rgb(255, 255, 255);">
			        		<span>CGV湲고?몄뭅?</span>
			        		<img src="/resources/images/user/1221_992x120.jpg" alt="CGV湲고?몄뭅?">
			       		</a>
		   			</div>
			    </div>
			</div>
		</div>
									</div>
								</div>
							</div>
		<div id="ticket_tnb" class="tnb_container ">
					<div class="tnb step3" style="display: none;">
						<!-- btn-left -->
						<a class="btn-left" href="#" onclick="OnTnbLeftClick();" title="좌석선택">이전단계로 이동</a>
						<div class="info movie">
							<span class="movie_poster"><img src="http://img.cgv.co.kr/Movie/Thumbnail/Poster/000085/85465/85465_185.JPG" alt="영화 포스터" style="display: inline;"></span>
							<div class="row movie_title colspan2" style="display: block;">
								<span class="data letter-spacing-min ellipsis-line2"><a href="http://www.cgv.co.kr/movies/detail-view/?midx=85465" target="_blank" onmousedown="javascript:logClick('SUMMARY/영화상세보기');" title="비상선언">비상선언</a></span>
							</div>
							<div class="row movie_type" style="display: block;">
								<span class="data ellipsis-line1" title="SCREENX 2D">SCREENX 2D</span>
							</div>
							<div class="row movie_rating" style="display: block;">
								<span class="data" title="12세 관람가">12세 관람가</span>
							</div>
							<div class="placeholder" title="영화선택" style="display: none;"></div>
						</div>
						<div class="info theater">
							<div class="row name" style="display: block;">
								<span class="header">극장</span>
								<span class="data letter-spacing-min ellipsis-line1"><a target="_blank" onmousedown="javascript:logClick('SUMMARY/극장상세보기');" href="http://www.cgv.co.kr/theaters/?theaterCode=0056" title="CGV 강남">CGV 강남</a></span>
							</div>
							<div class="row date" style="display: block;">
								<span class="header">일시</span>
								<span class="data" title="2022.8.4(목) 12:10">2022.8.4(목) 12:10</span>
							</div>
							<div class="row screen" style="display: block;">
								<span class="header">상영관</span>
								<span class="data" title="4관[SCREENX] 8층">4관[SCREENX] 8층</span>
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
								<span class="data ellipsis-line3" title="D9">D9</span>
							</div>
							<div class="placeholder" title="좌석선택" style="display: none;"></div>
						</div>
						<div class="info payment-ticket" style="width: 155px;">
							<div class="row payment-millitary" style="display: none;">
								<span class="header">군인</span>
								<span class="data"><span class="price">0</span><span class="exe"> 원 X </span><span class="quantity">0</span></span>
							</div>
							<div class="row payment-adult" style="display: block;">
								<span class="header">일반</span>
								<span class="data"><span class="price">15,000</span><span class="exe"> 원 X </span><span class="quantity">1</span></span>
							</div>
							<div class="row payment-youth" style="display: none;">
								<span class="header">청소년</span>
								<span class="data"><span class="price">0</span><span class="exe"> 원 X </span><span class="quantity">0</span></span>
							</div>
							<div class="row payment-child" style="display: none;">
								<span class="header">어린이</span>
								<span class="data"><span class="price">0</span><span class="exe"> 원 X </span><span class="quantity">0</span></span>
							</div>						
							<div class="row payment-senior" style="display: none;">
								<span class="header">경로</span>
								<span class="data"><span class="price">0</span><span class="exe"> 원 X </span><span class="quantity">0</span></span>
							</div>
							<div class="row payment-special" style="display: none;">
								<span class="header">우대</span>
								<span class="data"><span class="price">0</span><span class="exe"> 원 X </span><span class="quantity">0</span></span>
							</div>
							<div class="row payment-final" style="display: block;">
								<span class="header">총금액</span>
								<span class="data"><span class="price">15,000</span><span class="won">원</span></span>
							<span id="priceMapInfoIco" style="position: absolute; right: -17px; margin-top: 3px; cursor: pointer; display: none;"><img src="http://img.cgv.co.kr/CGV_RIA/Ticket/image/reservation/step2/ico_circle_14.png" height="14" width="14" alt="mappingIco"></span><div id="priceMappingContainer" style="display: none; position: absolute; right: -80px; z-index: 100; width: 150px; height: auto; padding: 10px; background: rgb(51, 51, 51);">container!<br>container!<br>container!</div></div>
						</div>
						<div class="info path">
							<div class="row colspan4">
								<span class="path-step2" title="좌석선택">&nbsp;</span>
								<span class="path-step3" title="결제">&nbsp;</span>
							</div>
						</div>
						<!-- btn-right -->
						<div class="tnb_step_btn_right_before" id="tnb_step_btn_right_before"></div>
						<a class="btn-right on" id="tnb_step_btn_right" href="#" onclick="OnTnbRightClick(); " title="결제하기">다음단계로 이동 - 레이어로 서비스 되기 때문에 가상커서를 해지(Ctrl+Shift+F12)한 후 사용합니다.</a>
					</div>
				</div>
				<div class="banner" id="ticket_bottom_banner" style="padding-top: 0px;">
					<img src="/resources/images/user/0803_996x140.jpg" alt="由щ명" onload="ticketNeedResize();" style="width:996px;height:140px">
				</div>
				<div id="ticket_banner" class="ticket_banner">
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
                            <td>한산-용의 출현</td>
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
           		<a class="refundNotice" href="" target="_blank">&gt; 예약취소 및 환불규정 안내</a>
       		</div>
       		<div class="agreement" style="border-top: 1px solid rgb(204, 204, 204); padding-top: 15px; background: rgb(238, 238, 238); height: 80px; text-align: left; border-bottom: 1px solid rgb(204, 204, 204); padding-bottom: 15px; margin: 0px 0px 28px;">
       			<div id="paymentAgreement" style="float: left; width: 47%; height: 100%; padding-left: 3%; border-right: 1px solid rgb(204, 204, 204);">
       				<span class="inputModel" style="display: block; width: 410px; min-height: 15px; margin: 0px 0px 10px;">
       					<input class="inputModel_input" type="checkbox" style="display: inline-block; vertical-align: top; margin-top: 1px;" id="agreementAll">
       					<label class="inputModel_label" style="width: 93%; display: inline-block; margin-left: 5px; font-weight: bold;" for="agreementAll">결제대행서비스 약관에 모두 동의</label>
   					</span>
     				<span class="inputModel" style="display: block; width: 99%; min-height: 15px; margin-bottom: 5px; margin-left: 10px;" id="agreeMent0">
     					<input class="inputModel_input agreeMentChk" type="checkbox" style="display: inline-block; vertical-align: top; margin-top: 1px;" id="agreeMent0val">
     					<label class="inputModel_label" style="width: 325px; display: inline-block; margin-left: 10px;" for="agreeMent0val">전자금융거래 이용약관</label>
     					<button class="detailView" style="background: none; text-decoration: underline; font-size: 1em; color: rgb(32, 124, 202); padding: 0px; height: 16px; vertical-align: top;">전문확인</button>
    				</span>
    				<span class="inputModel" style="display: block; width: 99%; min-height: 15px; margin-bottom: 5px; margin-left: 10px;" id="agreeMent1">
    					<input class="inputModel_input agreeMentChk" type="checkbox" style="display: inline-block; vertical-align: top; margin-top: 1px;" id="agreeMent1val">
    					<label class="inputModel_label" style="width: 325px; display: inline-block; margin-left: 10px;" for="agreeMent1val">개인정보 수집 이용약관</label>
    					<button class="detailView" style="background: none; text-decoration: underline; font-size: 1em; color: rgb(32, 124, 202); padding: 0px; height: 16px; vertical-align: top;">전문확인</button>
    				</span>
    				<span class="inputModel" style="display: block; width: 99%; min-height: 15px; margin-bottom: 5px; margin-left: 10px;" id="agreeMent2">
    					<input class="inputModel_input agreeMentChk" type="checkbox" style="display: inline-block; vertical-align: top; margin-top: 1px;" id="agreeMent2val">
    					<label class="inputModel_label" style="width: 325px; display: inline-block; margin-left: 10px;" for="agreeMent2val">개인정보 제공 및 위탁 안내 약관</label>
    					<button class="detailView" style="background: none; text-decoration: underline; font-size: 1em; color: rgb(32, 124, 202); padding: 0px; height: 16px; vertical-align: top;">전문확인</button>
    				</span>
    			</div>
    			<div id="paymentInfoConfirm" style="float: left; width: 45%; height: 100%;">
    				<span class="inputModel" style="display: none; width: 400px; min-height: 15px; margin: 0px 0px 7px 20px;">
    					<input class="inputModel_input" type="checkbox" style="display: inline-block; vertical-align: top; margin-top: 1px;" id="resvNoshowfirm">
    					<label class="inputModel_label" style="width: 93%; display: inline-block; margin-left: 10px; font-weight: bold;" for="resvNoshowfirm">취소 기한을 확인하였으며, 이에 동의합니다.</label>
    				</span>
    				<span class="inputModel" style="display: none; width: 400px; min-height: 15px; margin: 0px 0px 7px 20px;">
    					<input class="inputModel_input" type="checkbox" style="display: inline-block; vertical-align: top; margin-top: 1px;" id="resvPKGfirm">
    					<label class="inputModel_label" style="width: 93%; display: inline-block; margin-left: 10px; font-weight: bold;" for="resvPKGfirm">본 영화는 동시상영 영화로 부분환불이 불가한 영화입니다.</label>
    				</span>
    				<span class="inputModel" style="display: block; width: 420px; min-height: 15px; margin: 0px 0px 0px 20px; clear: both;">
    					<input class="inputModel_input" type="checkbox" style="display: inline-block; vertical-align: top; margin-top: 1px;" id="resvConfirm">
    					<label class="inputModel_label" style="width: 93%; display: inline-block; margin-left: 5px; font-weight: bold;" for="resvConfirm">상기 결제 내역을 모두 확인 했습니다</label>
    				</span>
    			</div>
    		</div>
   		</div><!-- //bd -->
		<div class="ft">
 			<a title="예매 결제하기" href="#" onclick="" class="reservation"><span class="sreader">예매 결제하기</span></a>
 			<a title="예매 취소" href="#" onclick=";" class="cancel"><span class="sreader">예매 취소</span></a>
		</div><!-- //ft -->
	</div>
</div>
    <!-- E Contaniner -->
    <!-- S Footer -->
	    <%@include file = "../../../infra/common/user/mainFooter.jsp" %>
<!-- end -->
</body>
</html>