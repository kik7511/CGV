<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%> 

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
	<link rel="stylesheet" type="text/css" href="/resources/css/user/mypagenew.css">
</head>
<body>

<!-- start -->
	<%@include file = "../../../infra/common/user/mainHeader.jsp" %>
		<!-- container -->
        <div id="contaniner" class=""><!-- 벽돌 배경이미지 사용 시 class="bg-bricks" 적용 / 배경이미지가 없을 경우 class 삭제  -->
			<!-- Contents Area -->
			<div id="contents" class="">
				<!-- Contents Start -->
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
									<li class="on">
										<a href="../member/mypageForm.html">MY CGV HOME <i></i></a>
									</li>
									<li>
										<a href="/member/mypageTicketForm" title="현재 선택">나의 예매내역 <i></i></a>                                    
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
										<a href="/user/mycgv/myinfo/?g=1">회원정보<i></i></a>
										<ul>
	
											<li>
												<a href="/user/mycgv/myinfo/edit-myinfo-cjone.aspx?g=1">개인정보 변경</a>
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
                            <div class="sect-mycgv-reserve movielog col3">
                                <div class="box-polaroid">
                                    <div class="box-inner preegg">
                                        <a href="" title="기대되는 영화">
                                            <h3>기대되는 영화</h3>
                                            <span>보고 싶은 영화들을 미리 <br>담아두고 싶다면?</span>
                                        </a>
                                    </div>
                                    <div class="box-inner watched">
                                        <a href="" title="내가 본 영화">
                                            <h3>내가 본 영화</h3>
                                            <span>관람한 영화들을 한번에 <br>모아 보고 싶다면?</span>
                                        </a>
                                    </div>
                                    <div class="box-inner mvdiary">
                                        <a href="" title="내가 쓴 평점">
                                            <h3>내가 쓴 평점</h3>
                                            <span>관람 후 내 감상평을 적어 <br>추억하고 싶다면?</span>
                                        </a>
                                    </div>                                                                                   
                                </div>
                            </div>
							<div class="tit-mycgv">
								<h3>MY 예매내역</h3>
								<p><em>0건</em> <a href="/user/mycgv/reserve/">예매내역 더보기</a></p>
								<span>예매번호로만 티켓을 찾을 수 있으니 반드시 확인 부탁드립니다.</span>
							</div>
							<form name="aspnetForm" method="post" action="./default.aspx" id="aspnetForm" novalidate="novalidate">
								<div>
									<input type="hidden" name="__EVENTTARGET" id="__EVENTTARGET" value="">
									<input type="hidden" name="__EVENTARGUMENT" id="__EVENTARGUMENT" value="">
									<input type="hidden" name="__VIEWSTATE" id="__VIEWSTATE" value="/wEPDwUKMTc0NzIwMTk3M2RkGpTZbHfO8pvW/Ta9En5loRX6E2E=">
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
									<input type="hidden" name="__VIEWSTATEGENERATOR" id="__VIEWSTATEGENERATOR" value="F268F2D4">
									<input type="hidden" name="__EVENTVALIDATION" id="__EVENTVALIDATION" value="/wEdAANOZtRado8flmBd6Juf8OumAAaiyC+ogOIlg3pscMtiP2lKUwCIH8TI/sjrTPJzW37qSeqQYBLB9CRMYU4y53rNrIwxzA==">
								</div>
								<!-- 팝업시작 -->
								<!-- 팝업 노출 시 .layer-wrap 에 클래스 .off는 없애고 .on 추가해주세요.-->
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
													<a id="ctl00_ctl00_PlaceHolderContent_ChildPlaceHolderContents_LinkButton1" class="round inblack" href="javascript:__doPostBack('ctl00$ctl00$PlaceHolderContent$ChildPlaceHolderContents$LinkButton1','')"><span>로그인 연장</span></a>
													<a id="ctl00_ctl00_PlaceHolderContent_ChildPlaceHolderContents_LinkButton2" class="round gray" href="javascript:__doPostBack('ctl00$ctl00$PlaceHolderContent$ChildPlaceHolderContents$LinkButton2','')"><span>로그아웃</span></a>
												</div>
											</div>
										</div>                
									</div>
								</div>												
								<!-- 팝업끝 -->
								<!-- MY 예매내역 -->
								<input type="hidden" id="hidCancelReserveNo" name="hidCancelReserveNo">
								<div class="sect-base-booking">
									<div class="box-polaroid">
										<div class="box-inner">																																
											<div class="lst-item">
												고객님의 최근 예매내역이 존재하지 않습니다.
											</div>												
										</div>
									</div>
								</div>
							</form>
							<div class="sect-mycgv-part">
								<div class="box-polaroid type1">
								  <!--  <div class="box-inner">
										<div class="tit-mycgv">
											<h3>MY 참여이벤트</h3>
											<p><em>0건</em> <a href="/user/mycgv/event/">MY 참여이벤트 더보기</a></p>
										</div>
										<div class="col-myevt">											
											<ol>
												<li>고객님의 이벤트 참여내역이 존재하지 않습니다.</li>
											</ol>											
										</div>
									</div>-->
									<div class="box-inner">
										<div class="tit-mycgv">
											<h3>MY Q&amp;A</h3>
											<p><em>0건</em> <a href="/user/mycgv/inquiry/qna/list.aspx">MY Q&amp;A 더보기</a></p>
										</div>
										<div class="col-myqna">											
											<ul>
												<li>고객님의 1:1 문의내역이 존재하지 않습니다.</li>
											</ul>											
										</div>
									</div>
								</div>
							</div>
							<!-- //MY 참여이력 -->
							<!-- MY 구매정보 -->
							<!-- 비노출 처리 : 20211013
							<div class="sect-mycgv-buying">
								<div class="box-polaroid">
									<div class="box-inner">
										<div class="tit-mycgv">
											<h3>MY 구매정보</h3>
											<span>현재 사용하실 수 있는 쿠폰정보입니다. 상품명을 클릭하시면 내역조회페이지로 이동합니다.</span>
										</div>
										<ul>
											<li class="booth">
												<a href="/user/mycgv/popcorn-store/default.aspx"><strong>내 기프트콘</strong></a>
												<span><em>0</em> 개</span>
											</li>		      
											<li class="funcon">
												<a href="/user/mycgv/culture-shop/fun-con.aspx"><strong>FUN-CON 기프트콘</strong></a>
												<span><em></em>준비중</span>
											</li>
											<li class="collage">
												<a href="/user/mycgv/culture-shop/movie-collage-passcard/"><strong>무비꼴라쥬 패스카드</strong></a>
												<span><em>0</em> 개</span>
											</li>
										</ul>
									</div>
								</div>
							</div>
							//-->
							<form name="targetform" id="targetform" method="post" novalidate="novalidate">
								<input type="hidden" name="reverse_no" id="reverse_no">
							</form>
							<script type="text/javascript" src=""></script>							
                        </div>						
                    </div>
                </div>
            </div>
        </div>							
		<!-- E Contaniner -->
    	  <!-- S Footer -->
		<!-- footer_area (s) -->
		<%@include file = "../../../infra/common/user/mainFooter.jsp" %>
		<!-- footer_area (s) -->
	</div>
<!-- end -->
</body>
</html>