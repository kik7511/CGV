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
	<link rel="stylesheet" href="//code.jquery.com/ui/1.13.2/themes/base/jquery-ui.css">
	<link rel="stylesheet" href="/resources/demos/style.css">
	<link rel="stylesheet"  href="https://cdn.jsdelivr.net/npm/swiper@8/swiper-bundle.min.css"/>
	<script src="https://cdn.jsdelivr.net/npm/swiper@8/swiper-bundle.min.js"></script>
	<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
	<script src="https://code.jquery.com/ui/1.13.2/jquery-ui.js"></script>
	<link rel="shortcut icon" href="/resources/images/user/favicon.ico" type="image/x-icon">
</head>
<body>
<!-- start -->
	<%@include file = "../../../infra/common/user/mainHeader.jsp" %>
		<!-- container -->
		<div id="contaniner">
			<input type="hidden" id="isOpenUserEmailYNPopup" name="isOpenUserEmailYNPopup" value="False">
			<div id="ctl00_PlaceHolderContent_divMovieSelection_wrap" class="movieSelection_wrap">
                <div class="contents">
                    <div class="video_wrap">
                    <video autoplay="autoplay" muted="" id = "video">
                        <source src="/resources/images/user/hansan_1080x608.mp4" type="video/mp4">
                        이 브라우저는 Video 태그를 지원하지 않습니다. (Your browser does not support the video tag.)
                    </video>
                        <strong id="ctl00_PlaceHolderContent_AD_MOVIE_NM" class="movieSelection_title">한산: 용의 출현</strong>
                        <span id="ctl00_PlaceHolderContent_AD_DESCRIPTION_NM" class="movieSelection_txt">나라의 운명을 바꾼 압도적 승리!<br>7월 27일 대개봉!</span>
                        <div class="movieSelection_video_controller_wrap">
                        	<!-- 한산 상세보기로 이동 -->
                            <a href="/movie/movieInfoView?mSeq=3" id="ctl00_PlaceHolderContent_AD_CLIP_DETAIL_URL" class="btn_movieSelection_detailView">상세보기</a>
                            <!-- 시작/소리 버튼 -->
                            <a href="#none" id="ctl00_PlaceHolderContent_playStop" class="btn_movieSelection_playStop active"></a>
                            <a href="#none" id="ctl00_PlaceHolderContent_soundOnOff" class="btn_movieSelection_soundOnOff"></a>
                            <input name="ctl00$PlaceHolderContent$AD_CNT_URL" type="hidden" id="ctl00_PlaceHolderContent_AD_CNT_URL" value="">
                        </div>
                    </div>
                </div>
            </div>
			<div class="movieChartBeScreen_wrap">
                <div class="contents">
                    <div class="movieChartBeScreen_btn_wrap">
                        <div class="tabBtn_wrap">
                            <h3><a href="#none" class="active" id="btnMovie">무비차트</a></h3>
                        </div>
                        <a href="/movie/movieList" id="btn_allView_Movie" class="btn_allView">전체보기</a>
                    </div>
                    <div class="swiper movieChart_list swiper-container-initialized swiper-container-horizontal" id="movieChart_list" style="display: block;">
                        <div class="swiper-wrapper" style="transform: translate3d(0px, 0px, 0px);">
                       		<c:forEach items="${list}" var="list" varStatus="status">
                                <div class="swiper-slide swiper-slide-movie" style="width: 170.4px; margin-right: 32px;">
                                    <div class="img_wrap" data-scale="false">
                                        <img src="/resources/images/user/${list.src}_320.jpg" alt="영화포스터" >
                                        <div class="movieAgeLimit_wrap">
                                            <img src="/resources/images/user/grade-${list.mAgeLimit}.png" alt="연령제한">
                                        </div>
                                        <div class="movieChart_btn_wrap">
                                            <a href="/movie/movieInfoView?mSeq=${list.mSeq}" class="btn_movieChart_detail">상세보기</a>
                                            <a href="/purchase/ticketingForm" class="btn_movieChart_ticketing">예매하기</a>
                                        </div>
                                    </div>
                                    <div class="movie_info_wrap">
                                        <strong class="movieName">${list.mNameKor}</strong>
                                        <span> <img src="/resources/images/user/eggGoldenegggreat.png" alt="Golden Egg great"> ${list.mGoldEgg}%</span>
                                        <span>예매율 ${list.mRate}%</span>
                                    </div>
                                </div>
                             </c:forEach>
                        </div>
                        <div class="swiper-button-next" tabindex="0" role="button" aria-label="다음 슬라이드" aria-disabled="true" id="right-btn"></div>
                        <div class="swiper-button-prev" tabindex="0" role="button" aria-label="이전 슬라이드" aria-disabled="false" id="left-btn"></div>
                    	<span class="swiper-notification" aria-live="assertive" aria-atomic="true"></span>
                   </div>
                </div>
            </div>
			<!-- E > 무비차트 | 상영예정작 -->
			<!-- S > EVENT -->
			<div id="ctl00_PlaceHolderContent_event_wrap" class="event_wrap">
				<div class="contents">
            		<div class="event_title_wrap">
                  		<h3>EVENT</h3>
                    	<a href="#none" id="btn_allView_Event" class="btn_allView">전체보기</a>
                    	<a href="#none" class="btn_eventControl active">playStop</a>
                	</div>
	                <div class="event_list_wrap">
						<div class="swiper event_list swiper-container-initialized swiper-container-horizontal">
							<div class="swiper-wrapper" style="transform: translate3d(0px, 0px, 0px); transition-duration: 0ms;">
								<div class="swiper-slide swiper-slide-active" style="width: 310.667px; margin-right: 24px;">
									<a onclick="gaEventLog('PC_메인', '이벤트', '씨지밤  VIP 인센티브');" href="#none">
										<div class="img_wrap"><img src="/resources/images/user/16576736191670.jpg" alt="씨지밤  VIP 인센티브" ></div>
										<strong>씨지밤  VIP 인센티브</strong>
										<span>2022.07.13~2022.08.31</span>
									</a>
								</div>
								<div class="swiper-slide swiper-slide-next" style="width: 310.667px; margin-right: 24px;">
									<a onclick="gaEventLog('PC_메인', '이벤트', '[비상선언] 사전예매하고 스페셜 필름마크 받자!');" href="#none">
										<div class="img_wrap"><img src="/resources/images/user/16577003018730.jpg" alt="[비상선언] 사전예매하고 스페셜 필름마크 받자!" ></div>
										<strong>[비상선언] 사전예매하고 스페셜 필름마크 받자!</strong>
										<span>2022.07.14~2022.07.24</span>
									</a>
								</div>
								<div class="swiper-slide" style="width: 310.667px; margin-right: 24px;">
									<a onclick="gaEventLog('PC_메인', '이벤트', '[엘비스]CGV 필름마크');" href="#none">
										<div class="img_wrap"><img src="/resources/images/user/16570831118770.jpg" alt="[엘비스]CGV 필름마크" ></div>
										<strong>[엘비스]CGV 필름마크</strong>
										<span>2022.07.06~2022.07.31</span>
									</a>
								</div>
								<div class="swiper-slide" style="width: 310.667px; margin-right: 24px;">
									<a onclick="gaEventLog('PC_메인', '이벤트', '[토르: 러브 앤 썬더]PET 북마크');" href="#none">
										<div class="img_wrap"><img src="/resources/images/user/16581234608560.jpg" alt="[토르: 러브 앤 썬더]PET 북마크" ></div>
										<strong>[토르: 러브 앤 썬더]PET 북마크</strong>
										<span>2022.07.18~2022.08.14</span>
									</a>
								</div>
								<div class="swiper-slide" style="width: 310.667px; margin-right: 24px;">
									<a onclick="gaEventLog('PC_메인', '이벤트', '[토르: 러브 앤 썬더]필름마크');" href="#none">
										<div class="img_wrap"><img src="/resources/images/user/16572570587010.jpg" alt="[토르: 러브 앤 썬더]필름마크" ></div>
										<strong>[토르: 러브 앤 썬더]필름마크</strong>
										<span>2022.07.08~2022.07.31</span>
									</a>		
								</div>
							</div>
	                    <div class="swiper-button-next" tabindex="0" role="button" aria-label="다음 슬라이드" aria-disabled="false"></div>
	                    <div class="swiper-button-prev swiper-button-disabled" tabindex="0" role="button" aria-label="이전 슬라이드" aria-disabled="true"></div>
	                    <span class="swiper-notification" aria-live="assertive" aria-atomic="true"></span></div>
        			</div>
				</div>
			</div>
			<!-- E > EVENT -->
			<!-- S > 공지사항 & 고객센터 -->
            <div class="noticeClient_wrap">
                <div class="contents">
                    <div class="noticeClient_container">
                        <div class="noticeClient_content">
                            
                            <div id="ctl00_PlaceHolderContent_notice_wrap" class="notice_wrap">
                                <strong>공지사항
                                </strong>
                                    <a href="#" class="btn_link">[기타]22년 VIP 선정 기준 변경 및 추가 기준 관련 안내</a>
                            </div>

                            <div class="client_wrap">
                                <dl class="client_list">
                                    <dt><strong>고객센터</strong></dt>
                                    <dd>
                                        <strong>1544-1122</strong>
                                        <span>고객센터 운영시간 (평일 09:00~18:00)
                                        <p>업무시간 외 자동응답 안내 가능합니다.</p>
                                    </span></dd>
                                </dl>
                            </div>
                        </div>
                        <div class="qr_wrap">
                            <strong>앱 다운로드</strong>
                            <span>CGV앱에서 더 편리하게 이용하세요</span>
                            <div class="img_wrap" data-scale="false"><img src="/resources/images/user/img_qrcode.gif" alt="QR CODE"></div>
                            <p>QR코드를 스캔하고<br>앱설치 페이지로 바로 이동하세요</p>
                        </div>
                    </div>
                    <div class="noticeClient_banner_wrap">
                        <!-- <div class="event_list_wrap"> -->
                        <div class="swiper noticeClient_banner_list swiper-container-initialized swiper-container-horizontal">
                            <div class="swiper-wrapper" style="transform: translate3d(0px, 0px, 0px); transition-duration: 0ms;">
                                <div class="swiper-slide swiper-slide-prev" style="width: 211px;">
                                    <a id="bannerType1" href="#"><img src="/resources/images/user/16405823683780.png" alt="카카오페이카드"></a>
                                </div>
                            </div>
                        <span class="swiper-notification" aria-live="assertive" aria-atomic="true"></span></div>
                        <a href="#none" class="btn_noticeClientBannerControl active">playStop</a>
                    </div>
                </div>
            </div>
	<!-- E > 공지사항 & 고객센터 -->
	</div>
    <!-- E Contaniner -->
      <!-- S Footer -->
		<!-- footer_area (s) -->
		<%@include file = "../../../infra/common/user/mainFooter.jsp" %>
		<!-- footer_area (s) -->
<!-- end -->
	<script>
	<!-- 영화 슬라이드 -->
      var swiper = new Swiper(".movieChart_list", {
        spaceBetween: 35,
        slidesPerView: 5,
        slidesPerGroup : 5,
        loopFillGroupWithBlank : true,
        direction: 'horizontal',
        autoplay:  false,
        navigation: {
          nextEl: ".swiper-button-next",
          prevEl: ".swiper-button-prev",
        },
      });
      
      var swiper2 = new Swiper(".event_list", {
          spaceBetween: 35,
          slidesPerView: 3,
          loopFillGroupWithBlank : true,
          direction: 'horizontal',
          autoplay:  true,
          navigation: {
            nextEl: ".swiper-button-next",
            prevEl: ".swiper-button-prev",
          },
        });
      <!-- 동영상 조작버튼 -->
      var sample = $("#video").get(0);
      
      $(".btn_movieSelection_playStop").on("click", function(){
	      if($("#ctl00_PlaceHolderContent_playStop").hasClass("active") === true) {
	    	  	sample.pause();
	    	  	$("#ctl00_PlaceHolderContent_playStop").removeClass("active");
	    	} else {
	   			sample.play();
	      	  	$("#ctl00_PlaceHolderContent_playStop").addClass("active");
	    	}
      })
      
      $(".btn_movieSelection_soundOnOff").on("click", function(){
	      if($("#ctl00_PlaceHolderContent_soundOnOff").hasClass("active") === true) {
	    	  $("#video").prop("muted", false);
	    	  	$("#ctl00_PlaceHolderContent_soundOnOff").removeClass("active");
	    	} else {
	    		$("#video").prop("muted", true);
	      	  	$("#ctl00_PlaceHolderContent_soundOnOff").addClass("active");
	    	}
      })
      
     </script>
</body>
</html>