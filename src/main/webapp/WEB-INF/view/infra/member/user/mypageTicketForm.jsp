<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%> 

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ page session="false" %>
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
	<link rel="stylesheet" type="text/css" href="/resources/css/user/mypagenew.css">
</head>
<body>

<!-- start -->
	<div class="skipnaiv">
		<a href="#contents" id="skipHeader">메인 컨텐츠 바로가기</a>
	</div>
	<div class="cgvwrap">
		<!-- 최상단 광고 -->
		<div class="cgv-ad-wrap" id="cgv_main_ad">
	        <div id="TopBarWrapper" class="sect-head-ad">
	            <div class="top_extend_ad_wrap">
	                <div class="adreduce" id="adReduce" style="background-color:#0C0F14; text-align:center;border:0">                    
				   		 <div class="cgv_ad_top" style="position:relative;width:980px;height:80px;margin:0 auto">
				                 <!--배너이미지-->
				            <img src="/resources/images/user/980x801.jpg" alt="한산광고" border="0"/>
				   		 </div>                
	                </div> 
	                <div class="adextend" id="adExtend"></div>
	            </div>
	        </div>    
 		 </div> 
		<!-- header -->
		<div class="header">
			<div class="header_content">
				<div class="contents">
					 <h1 onclick="">
					 	<a href="../main/mainView.html"><img src="/resources/images/user/logoRed.png" alt="CGV"></a>
					 </h1>
					 
				<!-- /Advertisement -->
				
					<ul class="memberInfo_wrap">
						<li><a href="../main/mainView.html"><img src="/resources/images/user/loginPassword.png" alt="로그인"><span>로그인</span></a></li>
						<li><a href="../member/signupForm.html"><img src="/resources/images/user/loginJoin.png" alt="회원가입"><span>회원가입</span></a></li>
						<li><a href="../member/mypageForm.html"><img src="/resources/images/user/loginMember.png" alt="MY CGV"><span>MY CGV</span></a></li>
					</ul>
				</div>
			</div>
			<div class="nav" style="left: 0px;">
				<div class="contents">
					<h1>
						<a href="/" tabindex="-1"><img src="/resources/images/user/logoWhite.png" alt="CGV"></a>
					</h1>
					<ul class="nav_menu">
						<li>
							<h2>
								<a href="../main/mainView.html">홈</a>
							</h2>
						</li>
						<li>
							<h2>
								<a href="../movie/movieChartView.html">영화</a>
							</h2>
						</li>
						<li>
							<h2>
								<a href="../purchase/ticketingForm.html"><strong>예매</strong></a>
							</h2>
						</li>
						<li></li>
						<li></li>
					</ul>
				</div>
			</div>
		</div>
		<!-- container -->
		<div id="contaniner" class=""><!-- 벽돌 배경이미지 사용 시 class="bg-bricks" 적용 / 배경이미지가 없을 경우 class 삭제  -->
			<!-- Contents Area -->
			<div id="contents" class="">
				<!-- Contents Start -->
				<script type="text/javascript">
				//<![CDATA[
					(function ($) {
						$(function () {
				
							//특별관 >
				
				
							//동성로타운
							$('.special1_pop').on('click', function () {
								openDownTown();
								return false;
							});
				
				
				
							function openDownTown() {
								//var win = window.open('http://section.cgv.co.kr/event/2016/0419_dongsungro_town/pop_service.aspx', 'winDownTown', 'left=0,top=0,width=670,height=800,toolbar=no,scrollbars=yes');
								//win.focus();
							}
						});
					})(jQuery);
					//]]>
				</script>
				<div class="sect-common">
					<input type="hidden" id="isTown" name="isTown" value="Y">
					<input type="hidden" id="userTownMemberInfo" name="userTownMemberInfo" value="">
					<div class="mycgv-info-wrap">
						<div class="skipnaiv">
							<a href="#menu" id="skipPersoninfo">개인화영역 건너띄기</a>
						</div>
						<div class="sect-person-info">
							<h2 class="hidden">개인화 영역</h2> 
							<div class="box-image">
								<span class="thumb-image">
									<img src="/resources/images/user/default_profile.gif" alt="김대겸님 프로필 사진" onerror="errorImage(this, {'type':'profile'})">
									<span class="profile-mask"></span>
								</span>
							</div>
							<div class="box-contents newtype">
								<div class="person-info">
									<strong>김대겸님</strong>
									<em>kr00456</em>
									<span>닉네임 : 탱탕구 </span>
									<button id="go_edit_page" type="button" title="새창열림">나의 정보 변경</button>
								</div>
								<div class="grade-info">
									<p style="margin-bottom:4px;color: #342929;font-family: 'NanumBarunGothicBold', '맑은 고딕', '돋움', Dotum, sans-serif;font-size: 20px;line-height: 20px;">
											현재 고객등급 조정 기간입니다.
									</p>
									<button type="button" id="view_usergrade" class="round black"><span>MY 지난등급이력 보기</span></button> 
									<div class="mycgv_btn_special2">
									<!-- 대구 아이피접속자 중 : 동성로 미가입 고객시 a.special_pop_text 노출/ 가입 고객은 a.special0_pop 노출 부탁드립니다.
										또한 아무 해당 없는 고객에게는 .mycgv_btn_special2 에 클래스 none 추가 부탁드립니다. 
										-->
									</div>
								</div>
							</div>
						</div>
						<div class="cols-benefit-info">
							<div class="col-my-coupon">
								<h3>MY COUPON</h3>
								<ul>				                    
									<li>
										<strong>CGV VIP에 도전하세요!</strong>
										<span><a href="" class="round black1"><i>CGV VIP 혜택보기</i></a></span>
									</li>				                    
									<li>
										<strong>CGV 할인쿠폰</strong>
										<span><em><a href="">0</a></em> 개</span>
									</li>
									<li>
										<strong>영화관람권</strong>
										<span><em><a href="">0</a></em> 개</span>
									</li>
								</ul>
							</div>
							<div class="col-one-point">
									<h3>CJ ONE POINT</h3>
								<a href="">CJ ONE POINT 더보기</a>
								<ul>
									<li>
										<strong>CJ ONE 사용가능 포인트</strong>
										<span><em class="txt-maroon"><a href="">0</a></em> 점</span>
									</li>
									<li class="tooltip_list cf">
										<strong>VIP선정 포인트</strong><a href="" class="mycgv_tooltip"><img src="/resources/images/user/ico_tooltip.png" alt="i"></a>				
										<div class="tooltip_con tc2"><span><img src="/resources/images/user/tooltip_con2.png" alt="CGV에서 구매를 통해 적립된 매표 구매 포인트/매점&amp;씨네샵 구매 포인트/VIP 선정에 포함되는 이벤트 포인트가 누적으로 합산된 포인트 입니다"></span></div>
										<span><em>0</em> 점</span>
									</li>
								</ul>
							</div>
							<div class="col-favorite-theater">
								<h3 class="hidden">자주가는 CGV</h3>
								<div class="sect-favorite">
									<ul id="favoriteTheaters">
										<li><a href="#" data-regioncode="" data-theatercode=""><span>1<em>순위</em></span></a></li>
										<li><a href="#" data-regioncode="" data-theatercode=""><span>2<em>순위</em></span></a></li>
										<li><a href="#" data-regioncode="" data-theatercode=""><span>3<em>순위</em></span></a></li>
										<li><a href="#" data-regioncode="" data-theatercode=""><span>4<em>순위</em></span></a></li>
										<li><a href="#" data-regioncode="" data-theatercode=""><span>5<em>순위</em></span></a></li>
									</ul>
									<button id="btn_set_my_favorite" title="새창" type="button" class="setting">자주가는 CGV<br>설정하기</button>
								</div>
							</div>
							<div class="cols-point-wrap"></div>
						</div>
					</div>
				</div>
	
				<div class="cols-content" id="menu">
						<div class="col-aside">
							<div class="skipnaiv">
								<a href="#mycgv_contents" id="skipMycgvMenu">MYCGV 서브메뉴 건너띄기</a>
							</div>
							<h2>MY CGV 서브메뉴</h2>
							<div class="snb">
								<ul>
									<li>
										<a href="../member/mypageForm.html">MY CGV HOME <i></i></a>
									</li>
									<li class="on">
										<a href="../member/mypageTicketForm.html" title="현재 선택">나의 예매내역 <i></i></a>                                    
									</li>                                                                
									<!-- 비노출 처리
	
									<li >
										<a href="javascript:fncMoveToPhototicket()" >내가꾸민포토티켓 <i></i></a>
	
										<script language="javascript">
											function fncMoveToPhototicket() {
												alert('<리뉴얼작업에 따른 홈페이지 포토티켓 서비스 종료 안내>\n\nCGV에서는 보다 폭넓은 서비스를 제공하기 위해 ‘포토티켓’ 서비스를 리뉴얼하고 있습니다.\n이에 따라 홈페이지 포토티켓 서비스는 2020년 7월 28일부로 종료될 예정이며,\n리뉴얼 이후 CGV APP을 통해 포토티켓 서비스를 이용하실 수 있습니다');
	
												//var sWidth = Number($(window).width()) + Number(12);    //parent 창의 크기와 동일하게 만들어준다.
												//var sHeight = Number($(window).height()) + Number(35);
	
												//var substr = 'scrollbars=yes,menubar=yes,resizable=yes,width=' + sWidth + 'px,height=' + sHeight + 'px';
	
												window.open('http://phototicket.cgv.co.kr/Phototicket/HTML/myPhototicket.aspx?g=1');
											}
										</script>
									</li>
									//-->                                                           
									<li>
										<a href="">회원정보<i></i></a>
										<ul>
	
											<li>
												<a href="">개인정보 변경</a>
											</li>                                        
											<li>
												<a href="">회원탈퇴</a>
											</li>                                        
										</ul>
									</li>                                
									
									<li class="my-event"><a href="/user/movielog/watched.aspx">내가 본 영화</a></li> 
									<!-- <li class="my-event"><a href="/user/mycgv/event/?g=1">나의 참여 이벤트</a></li> -->
								</ul>
	
								<div class="ad-partner01">
									<img src="/resources/images/user/160x300_ad1.jpg" width="160" height="300" title="영화광고-놉" frameborder="0" scrolling="no" marginwidth="0" marginheight="0" id="M_Rectangle"></img>
								</div>                            
							</div>
						</div>
						<div class="col-detail" id="mycgv_contents">
							
							<script type="text/javascript">
								//<![CDATA[
		
								var myVar;
								jQuery(document).ready(function () {
									myVar = setInterval(function () { checkCookieExp() }, 1000 * 10);
								});
		
								function checkCookieExp() {
									//alert("도는건가");
									$.ajax({
										type: "POST",
										url: "/common/ajax/loginExpireCheck.aspx/expireCheck",
										data: "{ pageSize : 20 }",
										contentType: "application/json; charset=utf-8",
										dataType: "json",
		
										success: function (data) {
											var rst = $.parseJSON(data.d);
											rst = Number(rst) + 2;
											if (rst > 1 && rst < 62) {
												//alert("크다");
												jQuery(".logpopup").removeClass("on").removeClass("off");
												jQuery(".logpopup").addClass("on");
												$('#expTime').text(rst);
												clearInterval(myVar);
												timerMyVar = setInterval(function () { expTimeValue() }, 1000);
		
											} else {
												jQuery(".logpopup").removeClass("on").removeClass("off");
												jQuery(".logpopup").addClass("off");
											}
										},
										error: function (request, error) {
											//alert("error:" + error);
											clearInterval(myVar);
										}
									});
		
		
		
									// 로그인 연장 확인 클릭 시
									//clearInterval(myVar);
								}
								function expTimeValue() {
		
									if (Number($('#expTime').text()) <= 0) {
										clearInterval(timerMyVar);
										window.location.href = "http://www.cgv.co.kr/user/login/logoutAuto.aspx";
									}
									else {
										$('#expTime').text($('#expTime').text() - 1);
									}
								}
		
		
								//팝업 닫기 
								jQuery(document).ready(function () {
									$('.pop_corp_session .btn-close').click(function () {
										$('.pop_corp_session').removeClass('on');
									});
								});
		
		
		
								//팝업 닫기 
								jQuery(document).ready(function () {
									$('.photi_agree .btn-close').click(function () {
										$('.layer-wrap.photi_agree').hide();
									});
								});
		
								//팝업 창 가운데로 뜨도록  
								function fnOpenChapter() {
									var obj = $('#layer-wrap');
									var iHeight = (document.body.clientHeight / 2) - obj.height() / 2 + document.body.scrollTop;
									var iWidth = (document.body.clientWidth / 2) - obj.width() / 2 + document.body.scrollLeft;
		
									obj.css({
										position: 'absolute'
											, display: 'block'
											, top: iHeight
											, left: iWidth
									});
								}
								//]]>
							</script>
							<div class="tit-mycgv type2">
								<h3>나의 예매내역</h3>
								<p>지난 <em>1개월</em>까지의 예매내역을 확인하실 수 있으며, 영수증은 <em>신용카드 결제 내역</em>만 출력 가능합니다.</p>
								<a href="" class="round inblack"><span>내가 본 영화</span></a>
							</div>
							<input type="hidden" id="isIPIN" name="isIPIN" value="R+BX0MenjSND24vwxmnZmSj2j9ei6LnVXyV8ycqfsEpmoJVspKI2Z5RWupCX90g5HN2T8WwCRVUPMcPjY7/p9Q==">
							<!-- 팝업시작 -->
							<!-- 팝업 노출 시 .layer-wrap 에 클래스 .off는 없애고 .on 추가해주세요.-->
							<form name="aspnetForm" method="post" action="./?g=1" id="aspnetForm" novalidate="novalidate">
								<div>
									<input type="hidden" name="__EVENTTARGET" id="__EVENTTARGET" value="">
									<input type="hidden" name="__EVENTARGUMENT" id="__EVENTARGUMENT" value="">
									<input type="hidden" name="__VIEWSTATE" id="__VIEWSTATE" value="/wEPDwUJNTA1NzIzNjU1ZGQosR2CqW6VPifp/ciP2Tew8flWyg==">
								</div>
	
								<script type="text/javascript">
									//<![CDATA[
									var theForm = document.forms['aspnetForm'];
									if (!theForm) {
										theForm = document.aspnetForm;
									}
									function __doPostBack(eventTarget, eventArgument) {
										if (!theForm.onsubmit || (theForm.onsubmit() != false)) {
											theForm.__EVENTTARGET.value = eventTarget;
											theForm.__EVENTARGUMENT.value = eventArgument;
											theForm.submit();
										}
									}
									//]]>
								</script>
								<div>
									<input type="hidden" name="__VIEWSTATEGENERATOR" id="__VIEWSTATEGENERATOR" value="34AE05C7">
									<input type="hidden" name="__EVENTVALIDATION" id="__EVENTVALIDATION" value="/wEdAANRCHLEzdllUEo8np/PZ6CZAAaiyC+ogOIlg3pscMtiP2lKUwCIH8TI/sjrTPJzW370Bxin3AqveinZV3BDTcc+vGq2Cg==">
								</div>
								<div class="layer-wrap pop_corp_session logpopup off">
									<div class="pop_wrap">
										<h1>자동 로그아웃 안내</h1>
										<button type="button" class="btn-close">자동 로그아웃 안내 팝업 닫기</button>
										<div class="pop-contents">
											<div class="sect-corp-session">
												<div class="cf ss_con_wrap">
													<h5>자동 로그아웃 남은 시간 : <span class="col_red"><em><span id="expTime"></span></em>초</span></h5>
													<p>로그인 시간을 연장하시려면 <br>로그인 연장 버튼을 클릭해주세요.</p>
												</div>
												<div class="cf ss_btn_wrap">
													<a id="ctl00_ctl00_PlaceHolderContent_ChildPlaceH   olderContents_LinkButton1" class="round inblack" href="javascript:__doPostBack('ctl00$ctl00$PlaceHolderContent$ChildPlaceHolderContents$LinkButton1','')"><span>로그인 연장</span></a>
													<a id="ctl00_ctl00_PlaceHolderContent_ChildPlaceHolderContents_LinkButton2" class="round gray" href="javascript:__doPostBack('ctl00$ctl00$PlaceHolderContent$ChildPlaceHolderContents$LinkButton2','')"><span>로그아웃</span></a>
												</div>
											</div>
										</div>                
									</div>
								</div>
							</form>        
							<!-- 팝업끝 -->
							<!--포토티켓 수집 동의-->
							<div class="layer-wrap photi_agree" id="agree" style="display:none">
								<div class="popwrap">
									<h1>선택 입력(수집) 항목</h1>                
									<button type="button" class="btn-close">개인정보 수집 및 활용 동의 닫기</button>    
									<div class="pop-contents">
										<div class="tbl-breakdown-re pop">
											<form novalidate="novalidate">
												<fieldset>            
													<legend>선택 입력(수집) 항목</legend>                
													<table summary="개인정보 수집 및 활용 동의 표">
														<caption>개인정보 수집 및 활용 동의</caption>
														<colgroup>
															<col class="col1">
															<col class="col2">
															<col class="col3">
															<col class="col4">
														</colgroup>
														<thead>
															<tr>
																<th scope="col">항목</th>
																<th scope="col">이용목적</th>
																<th scope="col">보유기간</th>
																<th scope="col">동의여부</th>
															</tr>
														</thead>
														<tbody>
															<tr>
																<th scope="row">본인 사진 및 이미지</th>
																<td>·포토티켓 서비스 이용</td>
																<td>약권 철회 후 1주일 까지</td>
																<td>                        
																	<div>
																		<input type="radio" id="agree1" name="agree_photo" value="Y">
																		<label for="agree1">동의함</label>
																	</div>
																	<div>
																		<input type="radio" id="agree2" name="agree_photo" value="N">
																		<label for="agree2">동의안함</label>
																	</div>
																</td>
															</tr>
														</tbody>
													</table>
													<p class="marginT10">※ 동의를 거부하실 권리가 있으며, 이 경우 포토티켓 서비스는 이용하실 수 없습니다.<br>단, 동의 철회시에도 기존 이용 내역은 조회가 가능합니다.</p>
													<div class="set-btn">
														<button type="submit" class="round inred" id="btnPhoto"><span>확인</span></button>
													</div>
												</fieldset>
											</form>
										</div>                    
									</div>                            
								</div>
							</div>
		
							<div style="display:none;">
								<input type="hidden" id="status1" name="status1" value="">
								<input type="hidden" id="message1" name="message1" value="">
								<input type="hidden" id="reserveNo1" name="reserveNo1" value="">
								<input type="hidden" id="customNo1" name="customNo1" value="">
								<input type="hidden" id="saleNo1" name="saleNo1" value="">
							</div>
							<!--// 포토티켓 수집 동의-->
							<div class="cols-mycgv-booking">
								<div class="sect-register booking">
									<p>
										<strong>현장에서 발권하실 경우 꼭 <em>예매번호</em>를 확인하세요.</strong>
										<span>티켓판매기에서 예매번호를 입력하면 티켓을 발급받을 수 있습니다.</span>
									</p>
								</div>                    
								<div class="lst-item">
									<div class="box-set-info">
										<div class="box-number">
											<em>예매번호</em>
											<strong>0155-<i>0805-4772-271</i></strong>
										</div>                                            
										<!-- 
											Description js 20190904
											PC홈페이지 추가
											s:나의예매내역 출력 수정
										-->  
										<div class="box-info">
											<div class="box-image">
												<a href="">
													<span class="thumb-image">
														<img src="/resources/images/user/83280_126.jpg" alt="한산-용의 출현 포스터" onerror="errorImage(this)">
														<span class="ico-grade grade-12">												
														</span>
													</span>
												</a>
											</div>                                                
											<div class="detail-area">
												<div class="reservation-info-wrap">
													<h2 class="box-contents artHouse">
														<a href="" class="res-title">한산-용의 출현</a>                                                                          
														<span class="res-price">28,000원</span>
													</h2>
													<ul class="reservation-mv-info">
														<li>
															<dl>
																<dt>관람극장</dt>
																<dd>CGV 범계                                                        
																	<a href="javascript:theaterMove('0155');">[극장정보]</a>
																</dd>
															</dl>
														</li>
														<li>
															<dl>
																<dt>관람인원</dt>
																<dd> 리클라이너 일반 2</dd>
															</dl>
														</li>
														<li>
															<dl>
																<dt>관람일시</dt>
																<dd class="txt-red">2022.08.06(토) 16:00</dd>
															</dl>
														</li>
														<li>
															<dl>
																<dt>관람좌석</dt>
																<dd>E 06,E 05</dd>
															</dl>
														</li>
														<li>
															<dl>
																<dt>상영관</dt>
																<dd>2관 (리클라이너)</dd>
															</dl>
														</li>
														<li>
															<dl>
																<dt>매수</dt>
																<dd>2매</dd>
															</dl>
														</li>
													</ul>
												</div>
			
												<div class="reservation-info-wrap store-history" style="display: none;">
													<h2>
														<span class="res-title">                                                                                       
															<button type="button" class="all-goods-btn" title="상품모두 열기/닫기" onclick="fn_SnackVisible(this, '0155202208054772277')">
																<span>전체상품보기버튼</span>
															</button>
														</span>
														<span class="res-price">원</span>
													</h2>
													<ul class="store-goods-list" id="divSnackList0155202208054772277">                                    
													</ul>
												</div>
											</div>
										</div>
										<div class="resevation-payment-info">
											<h2>결제내역</h2>
											<div class="resevation-payment">
												<p class="resevation-payment-total">
													<span class="totel-title">총 결제금액</span>
													<span class="res-price">28,000원</span>
												</p>
												<p class="resevation-payment-part"><span>카카오페이</span><span class="part-price">28,000원</span></p>
											</div>
										</div>
										<div class="set-btn">
											<input type="hidden" class="reserve-no" name="reserve-no" value="6AOTxRA4BgTvL9WNTyOcntgb11biHrn6ODNiXRxcSVU=">
											<div class="col-edit"></div><div class="col-print"> <button type="button" title="새창" data="6AOTxRA4BgTvL9WNTyOcntgb11biHrn6ODNiXRxcSVU%3d" class="round inblack hometicket"><span>예매정보 출력</span></button> <button type="button" title="새창" class="round black sendsmspopup"><span>문자보내기</span></button> <button type="button" data-status="94" onclick="noshowYN('N', '20220806', '00', '01', '1746.82445159833', '', '' )" class="round black cancel"><span>예매취소</span></button></div>
										</div>
										<!-- 
											e:나의예매내역 출력 수정
										-->  
									</div>
								</div>                                     
							</div>
						<!-- TODAY BEST 무비차트 -->
						<div class="sect-today-best">
							<div class="info-log best">TODAY BEST 무비차트</div>
								<div class="sect-slider">
									<div class="slider" id="slider">
										<div class="item-wrap">
											<div class="item" style="width: 798px; height: 332px;">
												<ul>
													<li>
														<div class="box-image">
															<a href="">
																<span class="thumb-image">
																	<img src="/resources/images/user/83280_126.jpg" alt="한산-용의 출현 포스터" onerror="errorImage(this)" style="width: 100%; height: 100%;">
																	<span class="ico-grade grade-12"></span>
																</span>
															</a>
														</div>
														<div class="box-contents">
															<a href="">
																<strong class="title">한산-용의 출현</strong>
															</a>
															<div class="score">
																<strong class="percent">예매율<span>22.4%</span></strong>
																<!-- 2020.05.07 개봉전 프리에그 노출, 개봉후 골든에그지수 노출변경 -->
																<div class="egg-gage small">
																	<span class="egg great"></span>
																	<span class="percent">95%</span>
																</div>
															</div>
															<span class="txt-info">
																<i>2022.07.27 </i>
																<strong>개봉</strong>                                                        
															</span>
														</div>
													</li>                                                                                                                                
													<li>
														<div class="box-image">
															<a href="">
																<span class="thumb-image">
																	<img src="/resources/images/user/83127_185.jpg" alt="미니언즈2 포스터" onerror="errorImage(this)" style="width: 100%; height: 100%;">
																	<span class="ico-grade grade-all"></span>
																</span>
															</a>
														</div>
														<div class="box-contents">
															<a href="">
																<strong class="title">미니언즈2</strong>
															</a>
															<div class="score">
																<strong class="percent">예매율<span>2.1%</span></strong>
																<!-- 2020.05.07 개봉전 프리에그 노출, 개봉후 골든에그지수 노출변경 -->
																<div class="egg-gage small">
																	<span class="sprite_preegg default"></span>
																	<span class="percent">92%</span>
																</div>
															</div>
															<span class="txt-info">
																<i>2022.07.20 </i>
																<strong>개봉</strong>                                                        
															</span>
														</div>
													</li>                                                                                                                                    
													<li>
														<div class="box-image">
															<a href="">
																<span class="thumb-image">
																	<img src="/resources/images/user/82120_185.jpg" alt="탑건-매버릭 포스터" onerror="errorImage(this)" style="width: 100%; height: 100%;">
																	<span class="ico-grade grade-12"></span>
																</span>
															</a>
														</div>
														<div class="box-contents">
															<a href="">
																<strong class="title">탑건-매버릭</strong>
															</a>
															<div class="score">
																<strong class="percent">예매율<span>12.7%</span></strong>
																<!-- 2020.05.07 개봉전 프리에그 노출, 개봉후 골든에그지수 노출변경 -->
																<div class="egg-gage small">
																	<span class="egg great"></span>
																	<span class="percent">99%</span>
																</div>
															</div>
															<span class="txt-info">
																<i>2022.06.22 </i>
																<strong>개봉</strong>                                                        
															</span>
														</div>
													</li>
												</ul>
											</div>
										</div>
										<button class="btn-prev" type="button">이전 페이지 이동</button>
										<button class="btn-next" type="button">다음 페이지 이동</button>
									</div>
								</div>
						</div>					
						
						<div class="sect-mycgv-cancle">
							<div class="tit-mycgv">
								<h4>MY 취소내역</h4>
								<p>상영일 기준 지난 7일 동안의 취소내역입니다.</p>
							</div>
							<div class="tbl-data">
								<table summary="상영일 기준 지난 7일 동안의 취소내역">
									<caption>MY 취소내역</caption>
									<thead>
										<tr>
											<th scope="col">관람 영화/매점</th>
											<th scope="col">관람CGV</th>
											<th scope="col">관람 일시</th>
											<th scope="col">취소일</th>
											<th scope="col">결제취소 금액</th>
										</tr>
									</thead>
									<tbody>                                        
										<tr>
											<td>                                                    
												한산-용의 출현                                                    
											</td>
											<td>CGV 범계</td>
											<td>2022.08.12(금) 10:55</td>
											<td>2022.08.08(월)</td>
											<td><strong>
											11,000                        
											</strong> 원 </td>
										</tr>
									
										<tr>
											<td>                                                    
												한산-용의 출현                                                    
											</td>
											<td>CGV 범계</td>
											<td>2022.08.06(토) 16:00</td>
											<td>2022.08.05(금)</td>
											<td><strong>
											28,000                        
											</strong> 원 </td>
										</tr>                                                                                   
									</tbody>
								</table>
							</div>
						</div>

						<div class="sect-box-descri">
							<h4>CGV 예매 관련 정책 안내</h4>
							<!-- Box Moudle -->
							<div class="box-polaroid">
								<div class="box-inner">
									<ul>
										<li>
											<dl>
												<dt>이용안내</dt>
												<dd>
													<ul>
														<li>예매 변경은 불가능하며, 취소 후 재 예매를 하셔야만 합니다.</li>
														<li>영수증은 상영 시간 전까지 My CGV 에서 출력하실 수 있습니다. 단, 신용카드로 예매하신 경우만 한합니다.</li>
														<li>상영 시간 이후 관람하신 영화의 영수증 출력을 원하실 경우, 1544-1122로 문의 주시기 바랍니다.</li>
														<li>취소하신 내역이 나타나지 않거나 궁금하신 사항이 있으시면, 고객센터로 문의해 주시기 바랍니다.</li>
													</ul>
												</dd>
											</dl>
										</li>
										<li>
											<dl>
												<dt>티켓 교환방법</dt>
												<dd>
													<ul>
														<li>
															<p><strong>티켓판매기(ATM)에서 발권하실 경우</strong><br>예매번호 또는 고객인증번호 (법정생년월일 6자리 + 휴대폰번호 뒷 7~8자리)를 입력하시면 티켓을 편하게 발권하실 수 있습니다.</p>
														</li>
														<li>
															<p><strong>매표소에서 발권하실 경우</strong><br>티켓교환권을 출력하여 매표소에 방문하시면 티켓으로 교환하실 수 있습니다.<br>
															(티켓교환권 출력이 어려운 경우, 예매번호와 신분증을 지참하시면 매표소에서 티켓을 수령하실 수 있습니다.)</p>
														</li>
													</ul>
												</dd>
											</dl>
										</li>
										<li>
											<dl>
												<dt>예매 취소 안내</dt>
												<dd>
													<ul>
														
														<li>
															<p><strong>신용카드</strong><br> 결제 후 3일 이내 취소 시 승인 취소 가능, 3일 이후 매입 취소시 영업일 기준 3~5일 소요</p>
														</li>
														<li>
															<p><strong>체크카드</strong><br>결제 후 3일 이내 취소 시 당일 카드사에서 환불처리. 3일 이후 매입 취소 시 카드사에 따라 3~10일 이내 카드사에서 환불</p>
														</li>
														<li>
															<p><strong>휴대폰 결제</strong><br> 
																결제 일자 기준 당월(1~말일)취소만 가능. 익월 취소 관련 문의는 CGV고객센터(1544-1122) 연락 요망<br>
																예매취소 후 당일 환불이 원칙이나 현장 취소 시 경우에 따라 익일 처리 될 수 있음.</p>
														</li>
														<li>
															<p><strong>카카오페이</strong><br>
																카카오페이머니나 카카오포인트를 사용하신 경우 각각의 잔액으로 원복되며, 카드 결제를 하신 경우는 카드사 정책에 따라 승인취소가 진행되며 3일 이후 매입 취소시 영업일 기준 3~10일 소요됩니다.</p>
														</li>
														<li>
															<p><strong>PAYCO</strong><br>
																PAYCO 쿠폰/포인트를 사용하신 경우 각각의 쿠폰/포인트로 원복되며 쿠폰의 경우 조건에 따라 재사용이 불가 할 수 있습니다. 카드 결제금액은&nbsp;카드사 정책에 따라 승인취소가 진행되며&nbsp;3일 이후 매입 취소시 영업일 기준 3~10일 소요됩니다.</p>
														</li>
														<li>
															<p><strong>스마일페이</strong><br> 
																스마일캐시를 사용하신 경우 스마일캐시로 원복되며, 카드 결제금액은 카드사 정책에 따라 승인취소가 진행되며 3일 이후 매입취소 시 영업일 기준 3~10일 소요됩니다.</p>
														</li>
														<li>
															<p><strong>NAVER Pay</strong><br>
																NAVER Pay 포인트를 사용하신 경우 NAVER Pay 포인트로 원복되며, 카드사 결제를 하신 경우는 카드사 정책에 따라 승인취소가 진행되며 3일 이후 매입 취소시 영업일 기준 3~10일 소요됩니다.</p>
														</li>
														<li>
															<p><strong>카카오톡 선물하기 복합상품</strong><br>
																카카오톡 선물하기 복합상품 (2인 PKG / 1인 PKG)은 매점쿠폰 사용 시, 예매 티켓 환불 불가.<br>
																※ 단, 매점 쿠폰 미 사용 시, 예매 티켓 환불 가능하며 재 예매 시, 새로운 매점 쿠폰 발급.</p>                                        
														</li>
														<li>
															<p><strong>계좌이체</strong><br> 
																1. 예매일 이후 7일 이내 취소 시<br>
																- 자동 환불 은행: 취소 후 즉시 처리가능<br>
																- 조흥, 신한, 외한, 한미, 우리, 우체국, 전북, 경남, 광주, 대구, 새마을, 제주<br>
																- 우리은행의 경우 당일 취소분만 즉시 처리 가능<br>
																- 수동 환불 은행: 농협(취소 후 2~3일 이내 입금), 부산/제일/우리(취소 후 3~5일 이내 입금)<br><br>
						
																2. 예매 7일 이후~상영시간 30분 전 취소 시(단, 일부 당일 취소 불가 행사의 경우 전일 취소 시)<br>
																- 환불은 환불 요청일로부터 7일 이상 소요됨<br><br>
						
																※ 기타 환불 관련 문의는 CGV고객센터 1544-1122로 연락바랍니다.
															</p>
														</li>
													</ul>
												</dd>
											</dl>
										</li>
						
										<li>
											<dl>
												<dt>환불 규정 안내</dt>
												<dd>
													<ul>
														<li>
															<p><strong>현장 취소를 하는 경우</strong><br>상영시간 이전까지만 가능하며, 상영시간 이후 취소나 환불은 되지 않습니다.</p>
																			
														</li>
														<li>
															<p>
																<strong>홈페이지에서 예매 취소할 경우</strong><br>
																부분 취소는 불가능합니다. (ex. 4장을 인터넷으로 예매한 경우 4장 모두 취소만 가능)<br>
																홈페이지 예매 취소는 상영시간 20분전까지 가능합니다.<br>
																<em style="color:#0000FF" ;="">(단, 씨네&amp;포레관, 씨네&amp;리빙룸, SUITE CINEMA 제외)</em><br>
																상영시간 이후 취소나 환불은 되지 않습니다</p>	            					
														</li>
														<li>
															<p>
																<strong>모바일 앱/웹(m.cgv.co.kr)에서 예매 취소할 경우</strong><br>
																부분 취소는 불가합니다.(ex. 4장을 인터넷으로 예매한 경우 4장 모두 취소만 가능)<br> 
																모바일 앱/웹 예매 취소는 상영시간 15분전까지 가능합니다.<br>
																<em style="color:#0000FF" ;="">(단, 씨네&amp;포레관, 씨네&amp;리빙룸, SUITE CINEMA 제외)</em><br> 
																상영시간 이후 취소나 환불은 되지 않습니다.
															</p>
														</li>
														<li>
															<p><strong>단, 일부 행사의 경우 행사 당일 취소, 변경 불가 합니다.</strong></p>
														</li>
													</ul>
												</dd>
											</dl>
										</li>
									</ul>
								</div>
							</div>
						</div>								

						<form name="targetform" id="targetform" method="post" novalidate="novalidate">
							<input type="hidden" name="reverse_no" id="reverse_no">
							<input type="hidden" name="theater_code" id="theater_code">
						</form>

						<script type="text/javascript" src="https://img.cgv.co.kr/R2014//js/system/crypto.js"></script>
						<script type="text/javascript">
						//<![CDATA[
		
							var nowDate = "20220805";
							var noshoMovie="";
							var movieViewDate="";
							var snackCancelDate="";
							var prdName="";
		
							var hotdeal="00";
							var moviescreenlavel = "00";
		
							//2020.09.23
							//씨네드쉐프 용산, 센텀, 압구정 페이지이동 
							function theaterMove(theaterCodeN) {
		
								if (theaterCodeN == "P013") {
									location.href="http://www.cgv.co.kr/theaters/special/show-times.aspx?regioncode=103&theatercode=0013";
								}
								else if (theaterCodeN == "P004") {
									location.href="http://www.cgv.co.kr/theaters/special/show-times.aspx?regioncode=103&theatercode=0089";
								}
								else if (theaterCodeN == "P001") {
									location.href="http://www.cgv.co.kr/theaters/special/show-times.aspx?regioncode=103&theatercode=0040";
								}
								else {
									location.href="http://www.cgv.co.kr/theaters/?theaterCode=" + theaterCodeN;
								}
							}
						//2019.12.10
						//매점상품 정보 조회
						function fn_SnackVisible(obj, reservationNo)
						{
								var showtarget = $(obj).parents(".store-history");
								if (!showtarget.hasClass("__showall")) {
									showtarget.children(".store-goods-list").stop().slideDown(300);
									
									fn_ShowSnackInfo(reservationNo, $(obj).parents(".store-history"));
								}
								else {
									showtarget.children(".store-goods-list").stop().slideUp(300);
									showtarget.removeClass("__showall");
								}
						}
		
						//2019.12.10
						//매점상품 정보 조회
						function fn_ShowSnackInfo(reservationNo, showtarget) {
								$.ajax({
									type: "POST",
									url: '/common/ajax/snack.aspx/GetReservationSnackInfo',
									data: "{ reservationNo :'" + reservationNo + "'}",
									contentType: "application/json; charset=utf-8",
									dataType: 'json',
									success: function (result) {                
										$("#divSnackList" + reservationNo).html(result.d);
		
										showtarget.addClass("__showall");
									},
									error: function(result)
									{
										alert(result);
									}
								});
						}
		
							function noshowYN(N, D, H, L, T, C, P) {
							
								noshoMovie =N;
								movieViewDate=D;
								hotdeal = H;
								moviescreenlavel = L;
								movieplaytime= T;
								snackCancelDate = C; //매점취소일자 2019-12-10
								prdName = P;         //매점상품명 2019-12-10
							}
		
		
							function hotdealYN(H)
							{
							// if(H =="01"){
								if(H =="01" || H =="03" ){
								alert('핫딜이 종료하여 영화 상영이 확정된 후부터\n\n포토플레이 제작이 가능합니다. ');
								return false;
								}
							}
		
							(function ($) {
								$(function () {
		
									//visualMotion.
									var sliderOptions = { 'effect': 'none', 'auto': true };
									$('#slider').visualMotion(sliderOptions);
		
									$('.receipt').on('click', function () {
										var url = 'https://cjpay.cjsystems.co.kr/cjs/pg/adj/receipt.fo?SHOP_SYS_NO=&SHOP_ID=051024100000&PAY_GRP_ID=0001&PG_CTRL_CD_P=' + $(this).attr("data");
										var win = window.open(url, "receipt", "left=0,top=o,width=440,height=800,toolbar=no,scrollbars=no");
										win.focus();
									});
		
									$('.hometicket').on('click', function () {
										var url = 'http://ticket.cgv.co.kr/CGV2011/RIA/home_ticket.aspx?booking_no=' + $(this).attr("data") + '&isMember=Y' + '&userPIN=' + "UG%2bbIy2o%2fFZjZIxyJFXq4Db3GqnutGJ%2bVJCfTYbzhOhEjybLILI%2ft4qcCA%2bNzB0r%2f%2bLmKAhDalpBeN7wefAZ29oQZNYv2SHgPn88%2fGN3k95ht1ySYVsKaV0QI%2foLLozC";
										// var url = 'http://ticket.cgv.co.kr/CGV2011/RIA/home_ticket.aspx?booking_no=' + $(this).attr("data"); 
										var win = window.open(url, "hometicket", "left=0,top=o,width=640,height=897,toolbar=no,scrollbars=no");
		
										win.focus();
									});
		
									// 2015-11-19 hayoto 상영시간 이후 예매정보 출력 메시지
									$('.hometicket_END').on('click', function () {
										if (!confirm('상영시간이 지난 영화입니다. \n예매정보를 출력하시겠습니까?'))
											return false;
		
										var url = 'http://ticket.cgv.co.kr/CGV2011/RIA/home_ticket.aspx?booking_no=' + $(this).attr("data");
										var win = window.open(url, "hometicket", "left=0,top=o,width=640,height=897,toolbar=no,scrollbars=no");
										win.focus();
									});
		
									$('.sendsmspopup').on('click', function () {
										var reserveNo = $(this).parents('.set-btn').find('.reserve-no').val();
		
										var $targetFrm = $('#targetform');
										$targetFrm.find('#reverse_no').val(reserveNo);
										$targetFrm.attr('target', 'sendsms');
										$targetFrm.attr('action', '/user/popup/send-sms.aspx');
		
										var win = window.open('about:blank', "sendsms", "left=0,top=o,width=664,height=300,toolbar=no,scrollbars=no");
										if (win) {
											$targetFrm.submit();
											win.focus();
										} else {
											alert('팝업이 허용되어 있지 않습니다.');
										}
		
										return false;
									});
		
									// 2015-11-19 hayoto 상영시간 이후 문자 보내기 메시지
									$('.sendsmspopup_END').on('click', function () {
										if (!confirm('상영시간이 지난 영화입니다. \n‘문자 보내기’서비스를 이용하시겠습니까?'))
											return false;
		
										var reserveNo = $(this).parents('.set-btn').find('.reserve-no').val();
		
										var $targetFrm = $('#targetform');
										$targetFrm.find('#reverse_no').val(reserveNo);
										$targetFrm.attr('target', 'sendsms');
										$targetFrm.attr('action', '/user/popup/send-sms.aspx');
		
										var win = window.open('about:blank', "sendsms", "left=0,top=o,width=664,height=300,toolbar=no,scrollbars=no");
										if (win) {
											$targetFrm.submit();
											win.focus();
										} else {
											alert('팝업이 허용되어 있지 않습니다.');
										}
		
										return false;
									});
		
		
		
									//상영시간 20분~30분
									//2019.12.10 통합결제 수정
									$('.cancel').on('click', function () {
										var photoTicketStatus = $(this).attr('data-status');
										var msg = '';
		
										var chk30 = false; // 30분 취소 불가
										var chk60 = false; // 60분 취소 불가 
										var chk120 = false; // 120분 취소 불가
										//자동차상영관 : 30 120분으로 변경 2020/08/30 - minmmm2
										if (moviescreenlavel == '30') chk120 = true; // 30 자동차극장 
		
										if (moviescreenlavel == '24' || moviescreenlavel == '26') chk30 = true; // 24 : 씨네포래, 26 : 씨네앤리빙룸
										if (moviescreenlavel == '32') chk60 = true;
										var chk30 = false; // 30분 취소 불가 
		
		
										if (moviescreenlavel == '24' || moviescreenlavel == '26') chk30 = true; // 24 : 씨네포래, 26 : 씨네앤리빙룸
		
										if(chk30 && movieplaytime <= 30){
										alert("영화상영 시간 기준 30분 전까지 온라인 예매 취소가 가능하며,\n\n 이후에는 현장에서 취소 하셔야 합니다. (영화 상영 후 취소 불가)");
										return false; 
										}     
		
										if(chk60 && movieplaytime <= 60){
										alert("영화상영 시간 기준 1시간 전까지 온라인 예매 취소가 가능하며,\n\n 이후에는 현장에서 취소 하셔야 합니다. (영화 상영 후 취소 불가)");
										return false; 
										}     
		
										if(chk120 && movieplaytime <= 120){
										alert("영화상영 시간 기준 2시간 전까지 온라인 예매 취소가 가능하며,\n\n 이후에는 현장에서 취소 하셔야 합니다. (영화 상영 후 취소 불가)");
										return false; 
										}
		
										if(hotdeal == 'A1' ){
										alert("핫딜이 종료된 영화의 예매취소는 불가합니다.\n\n(핫딜 실패 영화는 1시간 내 자동 취소됩니다)");
										return false; 
										}      
		
										if(hotdeal == '02'){
										alert("핫딜에 성공하여 상영이 확정된 영화로 예매 취소가 불가합니다.");
										return false; 
		
										}              
										else if(hotdeal== '01'){
											if (!confirm('핫딜영화 예매를 취소하시겠습니까?\n\n ※ 핫딜영화 예매 취소는 핫딜 종료일까지 가능하며,\n\n핫딜 종료 후 영화 상영 확정 시 예매 취소가 불가합니다.')) {
												return false;
											}
										}                  
										
										if(noshoMovie =='Y'){
											if(nowDate >= movieViewDate){
												alert('※ 본 행사는 진행 당일 취소, 변경이 불가합니다.');
												return false;
											}else{
												msg ="예매를 취소하시겠습니까?\n\n※ 본 행사는 진행 당일 취소, 변경이 불가합니다.";
											}
										}else{                  
		
											if (photoTicketStatus == '98' || photoTicketStatus == '96') {
												if (chk30 || chk60) {
													msg = '예매를 취소하시겠습니까?\n포토플레이을 만들었을 경우 함께 취소됩니다.';
												}else{
													msg = '예매를 취소하시겠습니까?\n포토플레이을 만들었을 경우 함께 취소됩니다.\n\n※ 인터넷 예매 취소는 상영시간 20분 전까지 가능하며, \n예매 가능은 상영시간 30분 전까지 가능합니다.';
												}
		
											}else{
												if (chk30) {
													msg = '예매를 취소하시겠습니까?\n\n※ 인터넷 예매 취소는 상영시간 30분 전까지 가능합니다.';
												} else if (chk60) {
													msg = '예매를 취소하시겠습니까?\n\n※ 인터넷 예매 취소는 상영시간 1시간 전까지 가능합니다.';
												} else if (chk120) {
													msg = '예매를 취소하시겠습니까?\n\n※ 인터넷 예매 취소는 상영시간 2시간 전까지 가능합니다.';
												} else {
													//2019.12.10 통합결제
													if(prdName == "" || snackCancelDate != "") {
														//영화 상영시간 20분 이전 구매한 매점 상품이 없는 경우(또는 매점 상품 부분 취소된 경우)
														msg = '예매를 취소하시겠습니까?\n\n※ 인터넷 예매 취소는 상영시간 20분 전까지 가능하며, \n예매 가능은 상영시간 30분 전까지 가능합니다.';
													}
													else if(prdName != "" && snackCancelDate == "") {
														//영화 상영시간 20분 이전 구매한 매점 상품이 있는 경우
														msg = '예매를 취소하시겠습니까?\n함께 구매하신 매점 상품도 취소됩니다.\n\n※ 인터넷 예매 취소는 상영시간 20분 전까지 가능하며, \n예매 가능은 상영시간 30분 전까지 가능합니다.';
													}
												}
											}
										}
		
										if (!confirm(msg))
											return false;
		
										CancelReserve($(this));
									});
		
									// 2015-11-19 hayoto 상영시작 20분 전부터 상영시간 전까지
									$('.cancel_A20').on('click', function () {
										if(noshoMovie =='Y'){
											alert('※ 본 행사는 진행 당일 취소, 변경이 불가합니다.');
										}else{
											alert("상영시작시간 20분전 영화는 \n취소하실 수 없습니다.\n \n※ 홈페이지 예매 취소는 상영 시작시간 20분전까지 가능합니다.");
										}
									});
		
									// 2015-11-19 hayoto 상영이 시작한 후부터 12시간 후까지
									$('.cancel_END').on('click', function () {
										if(noshoMovie =='Y'){
											alert('상영시간이 지난 영화입니다. \n \n ※ 본 행사는 진행 당일 취소, 변경이 불가합니다.');
										}else{
											alert("상영시간이 지난 영화입니다. \n \n ※ 상영 시작시간이 지난 영화로 취소가 불가 합니다.");
										}
									});
		
		
									$('#btnPhoto').on('click', function () {
										if ($('input:radio[name="agree_photo"]:checked').val() == "Y") {
		
											alert("포토플레이 본인 사진 및 이미지 수집설정이\n완료되었습니다.");
											getAgree();
											return true;
										}
										else {
		
											if (confirm("동의하지 않으실 경우,  포토플레이을 이용하실 수 없습니다.\n계속하시겠습니까?\n단, 동의 철회시에도 기존 이용 내역은 조회가 가능합니다.")) {
												$('#agree').hide();
												return false;
											}
											else {
												return false;
											}
										}
		
									});
		
		
		
									function getAgree() {
		
										var usercode = $("#isIPIN").val();
		
										var status = $('#status1').val();
										var message = $('#message1').val();
										var reserveNo = $('#reserveNo1').val();
										var customNo = $('#customNo1').val();
										var saleNo = $('#saleNo1').val();
		
		
										var agreeflag = "1";
										$.support.cors = true;
		
										//포토시작1
										$.ajax({
											type: "POST",
											url: '/common/ajax/theaters.aspx/SetUserInfoAgreePHOTOREG',
											data: "{ usercode :'" + usercode + "', agreeflag : '" + agreeflag + "'}",
											contentType: "application/json; charset=utf-8",
											dataType: 'json',
											success: function (result) {
												switch (result.d.toString()) {
													case "0":
														// 등록되지 않음
														break;
													case "1":
														// 등록완료
														switch (status) {
															case '1':
																openMakePhotoTicketPopup(reserveNo, customNo, saleNo);
																break;
															case '97':
																alert('동반관람자가 이미 포토플레이을 제작하셨습니다.'); // TODO : 문구확인필요
																break;
															case '98':
																alert('이미 포토플레이을 제작하셨습니다.\n내가 만든 포토플레이에서 확인해주세요.');
																break;
															default:
																alert(message);
																break;
														}
														break;
													default:
														//  alert('Error result Value : ' + result);
														break;
												}
											}
										});
									}
									
		
									function CancelReserve(obj) {
										var reserveNo = obj.parents('.set-btn').find('.reserve-no').val();
		
										var url = '/common/ajax/user.aspx/CancelReserveByMember';
										var data = { 'reserveNo': reserveNo };
										var callback = function (result) {
											obj.attr('disabled', false);
											$('.loading').remove();
											if (result == null || result["resultCode"] == null)
												return;
		
											var resultCode = result["resultCode"];
											var resultMessage = result["resultData"];
		
		
											switch (resultCode) {
												case "-9":
													alert('매점 상품을 수령하였으므로 예매 취소가 불가합니다.');
													break;
												case "-8":
													alert('잘못된 경로로 접근하였습니다.\n확인 후 다시 진행해 주세요.');
													break;
												case "-1":
													alert('이미 취소되었거나 존재하지 않는 예매번호입니다.\n확인 후 다시 진행해 주세요.');
													break;
												case "-2":
													alert('예매취소 가능시간이 종료되었습니다.\n자세한 문의는 고객센터 1544-1122를 통하여 진행 가능합니다.');
													break;
												case "0":
													alert('취소처리가 실패하였습니다.\n(' + resultMessage + ')');
													break;
												case "1":
													if ($('.cols-mycgv-booking > .lst-item').length < 2) {
														obj.parents('.lst-item').remove();
														$('.cols-mycgv-booking .info-log').after('<div class="lst-item"><div class="box-set-info nodata">고객님의 최근 예매내역이 존재하지 않습니다.</div></div>');
													}
													else {
														obj.parents('.lst-item').remove();
													}
		
													var options = { '$target': null, 'type': 'center', 'position': 'position', 'mask': true };
													app.htmlLoad2(options, app.config('html').reservation_cancel);
		
													break;
											}
										};
										app.loading().show({ 'target': obj.parents('.lst-item'), 'circleType': 'large' });
										obj.attr('disabled', true);
		
										app.ajax().set({ dataType: 'json', url: url, data: JSON.stringify(data), contentType: "application/json; charset=utf-8", successHandler: callback });
									}
		
		
						//            $('.create-phototicket').on('click', function () {
						//                //시작1
		
		
						//                var status = $(this).attr("data-status");
						//                var message = $(this).attr("data-message");
						//                var reserveNo = $(this).attr("data-reserveno");
						//                var customNo = $(this).attr("data-customno");
						//                var saleNo = $(this).attr("data-saleno");
		
						//                var theaterCode = $(this).attr("data-theatercode");
						//                var multiplexCode = $(this).attr("data-multiplexcode");
						//                var movieplayDate = $(this).attr("data-movieplaydate");
						//                var movieplayTurn = $(this).attr("data-movieplayturn");
						//                var cgvCode = $(this).attr("data-cgvcode");
		
						//                $('#status1').val(status);
						//                $('#message1').val(message);
						//                $('#reserveNo1').val(reserveNo);
						//                $('#customNo1').val(customNo);
						//                $('#saleNo1').val(saleNo);
		
						//                //                $('#theaterCode1').val(theaterCode);
						//                //                $('#multiplexCode1').val(multiplexCode);
						//                //                $('#movieplayDate1').val(movieplayDate);
						//                //                $('#movieplayTurn1').val(movieplayTurn);
						//                //                $('#cgvCode1').val(cgvCode);
		
						//                // $.support.cors = true;
						//                var usercode = $("#isIPIN").val();
						//                // var subStr = "ipin=" + encodeURIComponent(usercode);
						//                //포토시작1
		
						//                $.ajax({
						//                    type: "POST",
						//                    url: '/common/ajax/theaters.aspx/SetUserInfoAgreePHOTO',
						//                    data: "{'usercode':'" + usercode + "'}",
						//                    contentType: "application/json; charset=utf-8",
						//                    dataType: 'json',
						//                    success: function (result) {
		
						//                        switch (result.d.toString()) {
		
		
						//                            case "2":
						//                                $("input:radio[id='agree1']").attr("checked", true);
						//                                $('#agree').show();
						//                                // 등록되지 않음
						//                                break;
						//                            case "0":
						//                                $("input:radio[id='agree2']").attr("checked", true);
						//                                $('#agree').show();
						//                                // 등록되지 않음
						//                                break;
						//                            case "1":
						//                                // 등록완료
						//                                //$("input:radio[id='rd_agree_preferPhototicket_Y']").attr("checked", true);
		
						//                                switch (status) {
						//                                    case '1':
						//                                        // openMakePhotoTicketPopup(reserveNo, customNo, saleNo);
						//                                        openMakePhotoTicketPopup(reserveNo, customNo, saleNo, theaterCode, multiplexCode, movieplayDate, movieplayTurn, cgvCode);  // 오프라인확장
						//                                        break;
						//                                    case '97':
						//                                        alert('동반관람자가 이미 포토티켓을 제작하셨습니다.'); // TODO : 문구확인필요
						//                                        break;
						//                                    case '98':
						//                                        alert('이미 포토티켓을 제작하셨습니다.\n내가 만든 포토티켓에서 확인해주세요.');
						//                                        break;
						//                                    default:
						//                                        alert(message);
						//                                        break;
						//                                }
						//                                break;
						//                            default:
						//                                alert('Error result Value : ' + result);
						//                                break;
						//                        }
						//                    }
						//                });
										//끝1
						//            });
		
		
		
						//            $('.cancel-phototicket').on('click', function () {
						//                var saleNo = $(this).attr("data-saleno");
						//                var url = '/common/ajax/user.aspx/CancelPhotoTicket';
						//                var data = { 'saleNo': saleNo };
						//                var callback = function (result) {
						//                    if (result == null)
						//                        return;
		
						//                    if (parseInt(result['Result']) == 1) {
						//                        alert('포토티켓 취소가 완료되었습니다.\n다시 포토티켓 만들기가 가능합니다.');
						//                        location.replace('./');
						//                    }
						//                    else {
						//                        alert(result['Msg']);
						//                    }
						//                };
		
						//                if (!confirm('포토티켓을 취소하시겠습니까?\n결제하신 포토티켓 금액은 환불처리 됩니다.'))
						//                    return false;
		
						//                app.ajax().set({ dataType: 'json', url: url, data: JSON.stringify(data), contentType: "application/json; charset=utf-8", successHandler: callback });
						//            });
		
									var map = null;
									var myVar;
		
									function openMakePhotoTicketPopup(reserveNo, customNo, saleNo, theaterCode, multiplexCode, movieplayDate, movieplayTurn, cgvCode) {
										var url = 'http://phototicket.cgv.co.kr/Popup/Editor/photoeditor.aspx';
		
										// TODO : 라이브 소스로 수정예정.
										var mapForm = document.createElement("form");
										mapForm.target = "MakePhotoTicket";
										mapForm.method = "POST";
										mapForm.action = url;
		
										var mapInput = document.createElement("input");
										mapInput.type = "text";
										mapInput.name = "ReserveNo";
										mapInput.value = reserveNo;
										mapForm.appendChild(mapInput);
		
										var mapInput1 = document.createElement("input");
										mapInput1.type = "text";
										mapInput1.name = "memberreserveno";
										mapInput1.value = customNo;
										mapForm.appendChild(mapInput1);
		
										var mapInput2 = document.createElement("input");
										mapInput2.type = "text";
										mapInput2.name = "SaleNo";
										mapInput2.value = saleNo;
										mapForm.appendChild(mapInput2);
										//****
										var mapInput3 = document.createElement("input");
										mapInput3.type = "text";
										mapInput3.name = "CinemaCode";
										mapInput3.value = theaterCode;
										mapForm.appendChild(mapInput3);
		
										var mapInput4 = document.createElement("input");
										mapInput4.type = "text";
										mapInput4.name = "ScreenCode";
										mapInput4.value = multiplexCode;
										mapForm.appendChild(mapInput4);
		
										var mapInput5 = document.createElement("input");
										mapInput5.type = "text";
										mapInput5.name = "ScreenDate";
										mapInput5.value = movieplayDate;
										mapForm.appendChild(mapInput5);
		
										var mapInput6 = document.createElement("input");
										mapInput6.type = "text";
										mapInput6.name = "ScreenNumber";
										mapInput6.value = movieplayTurn;
										mapForm.appendChild(mapInput6);
		
										var mapInput7 = document.createElement("input");
										mapInput7.type = "text";
										mapInput7.name = "MovieCode";
										mapInput7.value = cgvCode;
										mapForm.appendChild(mapInput7);
		
										//2015.10.02 추가
										var mapInput8 = document.createElement("input");
										mapInput8.type = "text";
										mapInput8.name = "ipin";
										mapInput8.value = encodeURIComponent("R+BX0MenjSND24vwxmnZmSj2j9ei6LnVXyV8ycqfsEpmoJVspKI2Z5RWupCX90g5HN2T8WwCRVUPMcPjY7/p9Q==");
										mapForm.appendChild(mapInput8);
		
										var mapInput9 = document.createElement("input");
										mapInput9.type = "text";
										mapInput9.name = "memberid";
										mapInput9.value = "kr00456";
										mapForm.appendChild(mapInput9);
		
										var mapInput10 = document.createElement("input");
										mapInput10.type = "text";
										mapInput10.name = "infotype";
										mapInput10.value = "R";
										mapForm.appendChild(mapInput10);
										//***
		
		
										document.body.appendChild(mapForm);
		
										map = window.open('about:blank', 'MakePhotoTicket', 'width=950, height=650, left=50%, top=50%, toolbars=no, scrollbars=no, menubar=no, resizable=no,');
		
										if (map) {
											mapForm.submit();
											myVar = setInterval(function () { myTimer() }, 1000);
										} else {
											alert('팝업이 허용되어 있지 않습니다.');
										}
									}
		
									function myTimer() {
										if (map == null || map == "undefined" || map.closed) {
											clearInterval(myVar);
											document.location.reload();
										}
									}
		
								});
							})(jQuery);
		
						//]]>
						</script>
					</div>
				</div>
				<script id="temp_view_usergrade" type="text/x-jquery-tmpl">
				</script>
				<script type="text/javascript">
					//<![CDATA[
					(function ($) {
						$(function () {
		
							$('#go_edit_page').on('click', function () {
								var win = window.open("/user/popup/edit-profile.aspx", "profile", "left=0,top=o,width=445,height=440,toolbar=no,scrollbars=no");
								win.focus();
							});
		
							$('#btn_set_my_favorite').on('click', function () {
								var win = window.open("/user/popup/favoriteTheaters.aspx?ismycgv=true", "url", "left=0,top=o,width=645,height=370,toolbar=no,scrollbars=no");
								win.focus();
							});
		
							$('#view_usergrade').on('click', function () {
								GetUserGradeList(this);
								return false;
							});
		
							function GetUserGradeList(_this) {
		
								var url = '/common/ajax/user.aspx/GetUserGradeList_2017';
								var data = null;
								var callback = function (result) {
									app.log(result);
		
									var $std = $(_this),
									options = {
										'$target': $std,
										'html': $('#temp_view_usergrade').html(),
										'position': 'absolute',
										'mask': 'none'
									};
									app.instWin.add(options);
		
									var $tbody = $('#mytable > tbody:last'),
										$tr1 = $('#tempUserGradeTbodyTr1')
									//  $tr2 = $('#tempUserGradeTbodyTr2');
									$.each(result, function (i, v) {
		
										$tbody.append("<tr><th scope='row'>" + v.YearMonthSub + "년" + v.MonthSub + "월" + "</th><td>" + v.GradeCode + "</td></tr>");
		
									});
								}
								app.ajax().get({ dataType: 'json', url: url, data: data, contentType: "application/json; charset=utf-8", successHandler: callback });
							}
							//개인화영역스킵
							$('#skipPersoninfo').on('click', function () {
								var $ctn = $('#menu');
								$ctn.attr({
									tabIndex: -1
								}).focus();
								return false;
							});
							//mycgv 메뉴스킵
							$('#skipMycgvMenu').on('click', function () {
								var $ctn = $('#mycgv_contents');
								$ctn.attr({
									tabIndex: -1
								}).focus();
								return false;
							});
		
							//my cgv 상단영역 skip처리
							var isGoContainer = "True";
							if (isGoContainer == "True") {
								location.href = location.href + "#contaniner";
							}
		
						});
					})(jQuery);
					//]]>
				</script>
			</div>            		
		</div>
		<!-- E Contaniner -->
    	<!-- S Footer -->
	    <footer>
			<!-- footer_area (s) -->
			<div class="cgv_cp_ad" style="background-color:#FFA443;background-image: url(/resources/images/user/bg_temp_foot_banner2021.gif); background-repeat:repeat-x;margin:0 auto">
				<div style="width:980px;margin:0 auto">
					<img src="/resources/images/user/bottom_980x240.png" alt="광고-CGV 기프트 카드" border="0">
				</div>
			</div>
			<article class="company_info_wrap">
	    		<section class="company_info">
	        		<address>(06611)서울특별시 서초구 서초대로 77길 55, 에이프로스퀘어 3층</address>
	        		<dl class="company_info_list">
	            		<dt>대표이사</dt>
	            		<dd>김대겸</dd>
	            		<dt>사업자등록번호</dt>
	            		<dd>104-19-19040</dd>
	            		<dt>통신판매업신고번호</dt>
	            		<dd>2022-서울서초-7511</dd>
	        		</dl>
	        		<dl class="company_info_list">
	            		<dt>호스팅사업자</dt>
	            		<dd>CJ올리브네트웍스</dd>
	            		<dt>개인정보보호 책임자</dt>
	            		<dd>김대겸</dd>
	            		<dt>대표이메일</dt>
	            		<dd>kik7511@naver.com</dd>
	        		</dl>
	        		<p class="copyright">© CJ CGV. All Rights Reserved</p>
	    		</section>
			</article>
		</footer>
	</div>
<!-- end -->
</body>
</html>