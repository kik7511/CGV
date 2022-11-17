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
	<link rel="stylesheet" type="text/css" href="/resources/css/user/mypagenew.css">
	<link rel="shortcut icon" href="/resources/images/user/favicon.ico" type="image/x-icon">
	<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
	<script src="https://code.jquery.com/ui/1.13.2/jquery-ui.js"></script>
</head>
<body>

<!-- start -->
	<%@include file = "../../../infra/common/user/mainHeader.jsp" %>
		<!-- container -->
        <div id="contaniner" class=""><!-- 벽돌 배경이미지 사용 시 class="bg-bricks" 적용 / 배경이미지가 없을 경우 class 삭제  -->
			<!-- Contents Area -->
			<div id="contents" class="">
				<form>
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
							<input type="hidden" name = "sessSeq" value="<c:out value="${sessSeq}"/>"/>
							<input type="hidden" name = "ifMmId" value="${sessId}">
							<c:set var="listCodeRank" value="${CodeServiceImpl.selectListCachedCode('14')}"/>
							<div class="box-image">
								<span class="thumb-image">
									<img src="/resources/images/user/default_profile.gif" alt="김대겸님 프로필 사진" onerror="errorImage(this, {'type':'profile'})">
									<span class="profile-mask"></span>
								</span>
							</div>
							<div class="box-contents newtype">
								<div class="person-info">
									<strong>${sessName}님</strong>
									<em>${sessId}</em>
									<span>닉네임 : ${sessNickname}</span>
									<button id="go_edit_page" type="button" title="새창열림">나의 정보 변경</button>
								</div>
								<div class="grade-info">
									<c:choose>
										<c:when test="${empty sessRank || sessRank eq 0}">
											<p style="margin-bottom:4px;color: #342929;font-family: 'NanumBarunGothicBold', '맑은 고딕', '돋움', Dotum, sans-serif;font-size: 20px;line-height: 20px;">
													현재 고객등급 조정 기간입니다.
											</p>
										</c:when>
										<c:otherwise>
											<c:forEach items="${listCodeRank}" var="listRank" varStatus="statusRank">
												<p style="margin-bottom:4px;color: #342929;font-family: 'NanumBarunGothicBold', '맑은 고딕', '돋움', Dotum, sans-serif;font-size: 20px;line-height: 20px;">
													<c:if test="${listRank.ccSeq eq sessRank}">${listRank.ccCodeName} 회원이십니다. 환영합니다</c:if>	
												</p>
											</c:forEach>
										</c:otherwise>
									</c:choose>
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
										<a href="/member/mypageForm?ifMmId=${sessId}">MY CGV HOME <i></i></a>
									</li>
									<li>
										<a href="/member/mypageTicketForm?ifMmId=${sessId}" title="현재 선택">나의 예매내역 <i></i></a>                                    
									</li>                                                                
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
								<p><em>${result}건</em> <a href="/member/mypageTicketForm?ifMmId=${sessId}">예매내역 더보기</a></p>
								<span>예매번호로만 티켓을 찾을 수 있으니 반드시 확인 부탁드립니다.</span>
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
											<c:forEach items="${list}" var="list" varStatus="status">																												
												<div class="lst-item">
							                       <div class="box-number">
							                           <em>예매번호</em>
							                           <strong class="aid_number">${list.aid}</strong>
							                           <span>(${list.dDate})</span>
							                       </div>
							                       <div class="box-image">
							                           <a href="/movie/movieInfoView/?mSeq=${list.mSeq}">
									                    <span class="thumb-image"> 
										                    <img src="/resources/images/user/${list.src}_320.jpg">
									                    </span>
								                    </a>
							                       </div>
							                       <div class="box-contents has_not_storeitem">
							                           <dl>
							                               <dt>
							                                   <a href="/movie/movieInfoView/?mSeq=${list.mSeq}">${list.mNameKor}</a>
							                               </dt>
							                               <dd>
							                                   <em>관람극장</em>
							                                   <strong>${list.thName}</strong>
							                               </dd>
							                               <dd>
							                                   <em>관람일시</em>
							                                   <strong>${list.dDate} ${list.dTime}</strong>
							                               </dd>
							                               <dd>
							                                   <em>관람좌석</em>
							                                   <strong>
							                                   		${list.stRow}
							                                   		${list.stCol}
						                                   	   </strong>
							                               </dd>
							                           </dl>
							                       </div>
							                       <div class="box-detail">
							                                                                           
							                       </div>
							                       <div class="price-n-btns">
							                           <div class="bd-wrap">
							                               <dl>
							                                   <dt>총 결제금액</dt>
							                                   <dd>
							                                       <strong class="txt-lightblue"><fmt:formatNumber value="${list.stPrice}" type="currency" currencySymbol="" />원</strong>
							                                   </dd>
							                               </dl>                                
							                               <div class="set-btn">
							                                   <input type="hidden" class="reserve-no" name="reserve-no" value="HQGbTPHR7oMOyxgOrAr6Qm6d/GuYUZzlaRAXI+DNRig=">
							                               </div>
							                           </div>
							                       </div>
							                   </div>	
						                   </c:forEach>										
										</div>
									</div>
								</div>
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
                        </div>						
                    </div>
                    </form>
                </div>
            </div>
           </div>
		<!-- E Contaniner -->
    	  <!-- S Footer -->
		<!-- footer_area (s) -->
		<%@include file = "../../../infra/common/user/mainFooter.jsp" %>
		<!-- footer_area (s) -->
		<script>
		
		</script>
<!-- end -->
</body>
</html>