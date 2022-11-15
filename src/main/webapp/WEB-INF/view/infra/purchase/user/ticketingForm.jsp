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
	<link rel="stylesheet" type="text/css" href="/resources/css/user/reservation_step3_popup.css">
	<link rel="stylesheet" href="//code.jquery.com/ui/1.13.2/themes/base/jquery-ui.css">
	<link rel="stylesheet" href="/resources/demos/style.css">
	<link rel="shortcut icon" href="/resources/images/user/favicon.ico" type="image/x-icon">
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
								<a class="button button-reservation-restart" href="/purchase/ticketingForm"></a>
							</span>
						</div>
						<div class="steps">
							<div class="step step1" style="height: 500px; display: block;">
								<div class="section section-movie">
									<div class="col-head" id="skip_movie_list"> 
										<h3 class="sreader">영화</h3>
									</div>
									<div class="col-body" style="height: 685px;">
										<div class="movie-select">
											<div class="movie-list nano has-scrollbar has-scrollbar-y" id="movie_list">
												<ul class="content scroll-y" onscroll="movieSectionScrollEvent();" tabindex="-1" style="right: -17px;">
													<c:forEach items="${list}" var="list" varStatus="listStatus">
														<li class="rating-${list.mAgeLimit}">
															<a href="javascript:selectTheater(${list.mSeq})">
																<span class="icon">&nbsp;</span>
																<span class="text">${list.mNameKor}</span>
																<span class="sreader"></span>
															</a>
														</li>
													</c:forEach>
												</ul>
											</div>
										</div>
									</div>
								</div>
								<div class="section section-theater">
									<div class="col-head" id="skip_theater_list">
										<h3 class="sreader">극장</h3>
									</div>
									<div class="col-body" style="height: 685px;">
										<div class="theater-select" style="height: 554px;">
											
											<div class="theater-list" style="height: 513px;">
												<div class="theater-area-list" id="theater-area-list">
													<ul>
													</ul>
												</div>
											</div>
										</div>
									</div>
								</div>
								<div class="section section-date">
									<div class="col-head" id="skip_date_list">
										<h3 class="sreader">날짜</h3>
									</div>
									<div class="col-body" style="height: 660px;">
										<div class="date-list nano has-scrollbar has-scrollbar-y" id="date_list">
											<ul class="content scroll-y" tabindex="-1" style="right: -17px;">
												<div id="reserveDate">
													<!-- <li class="month dimmed">
														<div>
															<span class="year">2022</span>
															<span class="month">8</span>
															<div></div>
														</div>
													</li> -->
												</div>
											</ul>
											<!-- <div class="pane pane-y" style="display: block; opacity: 1; visibility: visible;">
												<div class="slider slider-y" style="height: 50px; top: 0px;"></div>
											</div>  -->
										</div>
									</div>
								</div>
								<div class="section section-time">
									<div class="col-head" id="skip_time_list">
										<h3 class="sreader">시간</h3>
									</div>
									<div class="col-body" style="height: 660px;">
										<div class="placeholder hidden">영화, 극장, 날짜를 선택해주세요.
										</div>
										<div class="time-list nano has-scrollbar">
											<div class="content scroll-y" tabindex="-1" style="right: -17px;">
												<!-- <div class="theater" screen_cd="014" movie_cd="20030132">
													<span class="title">
														<span class="name">SCREENX 2D</span>
														<span class="floor">4관[SCREENX] 8층</span>
														<span class="seatcount">(총124석)</span>
													</span>
													<ul>
														<li data-index="0" data-remain_seat="124" play_start_tm="0920" screen_cd="014" movie_cd="20030132" play_num="1">
															<a class="button" href="#" onclick="screenTimeClickListener(event);">
																<span class="time">
																	<span>09:20</span>
																</span>
																<span class="count">106석</span>
																<div class="sreader">종료시간 11:51</div>
																<span class="sreader mod"> 조조</span>
															</a>
														</li>
														<li data-index="1" data-remain_seat="124" play_start_tm="1210" screen_cd="014" movie_cd="20030132" play_num="2">
															<a class="button" href="#" onclick="screenTimeClickListener(event);">
																<span class="time">
																	<span>12:10</span>
																</span>
																<span class="count">122석</span>
																<div class="sreader">종료시간 14:41</div>
																<span class="sreader mod"></span>
															</a>
														</li>
														<li data-index="2" data-remain_seat="124" play_start_tm="1500" screen_cd="014" movie_cd="20030132" play_num="3">
															<a class="button" href="#" onclick="screenTimeClickListener(event);">
																<span class="time">
																	<span>15:00</span>
																</span>
																<span class="count">115석</span>
																<div class="sreader">종료시간 17:31</div>
																<span class="sreader mod"></span>
															</a>
														</li>
														<li data-index="0" data-remain_seat="124" play_start_tm="0920" screen_cd="014" movie_cd="20030132" play_num="1">
															<a class="button" href="#" onclick="screenTimeClickListener(event);">
																<span class="time">
																	<span>09:20</span>
																</span>
																<span class="count">106석</span>
																<div class="sreader">종료시간 11:51</div>
																<span class="sreader mod"> 조조</span>
															</a>
														</li>
														<li data-index="1" data-remain_seat="124" play_start_tm="1210" screen_cd="014" movie_cd="20030132" play_num="2">
															<a class="button" href="#" onclick="screenTimeClickListener(event);">
																<span class="time">
																	<span>12:10</span>
																</span>
																<span class="count">122석</span>
																<div class="sreader">종료시간 14:41</div>
																<span class="sreader mod"></span>
															</a>
														</li>
														<li data-index="2" data-remain_seat="124" play_start_tm="1500" screen_cd="014" movie_cd="20030132" play_num="3">
															<a class="button" href="#" onclick="screenTimeClickListener(event);">
																<span class="time">
																	<span>15:00</span>
																</span>
																<span class="count">115석</span>
																<div class="sreader">종료시간 17:31</div>
																<span class="sreader mod"></span>
															</a>
														</li>
													</ul>
												</div> -->
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="step step2" style="display: block; height: 530px;">
								<div class="section section-seat dimmed">
									<div class="col-head" id="skip_seat_list">
										<h3 class="sreader">
											인원 / 좌석
											<span class="sreader">인원/좌석선택은 레이어로 서비스 되기 때문에 가상커서를 해지(Ctrl+Shift+F12)한 후 사용합니다.</span>
										</h3>
									</div>
									<div class="col-body">
										<div class="person_screen" style="height: 101.19px;">
											<div class="section section-numberofpeople">
												<div class="col-body">
			
													<!-- 인접좌석 -->
													<!-- <div class="adjacent_seat_wrap">
														<div class="adjacent_seat" id="adjacent_seat">
															<span class="title">좌석 붙임 설정</span>
															<div class="block_wrap">
																<span class="seat_block block1"><label><input type="radio" name="adjacent_seat" onclick="ftSetAdjacentSeatSelector(1, this);" disabled><span class="box"></span><span class="sreader">1석 좌석붙임</span></label></span>
																<span class="seat_block block2"><label><input type="radio" name="adjacent_seat" onclick="ftSetAdjacentSeatSelector(2, this);" disabled><span class="box"></span><span class="box"></span><span class="sreader">2석 좌석붙임</span></label></span>
																<span class="seat_block block3"><label><input type="radio" name="adjacent_seat" onclick="ftSetAdjacentSeatSelector(3, this);" disabled><span class="box"></span><span class="box"></span><span class="box"></span><span class="sreader">3석 좌석붙임</span></label></span>
																<span class="seat_block block4"><label><input type="radio" name="adjacent_seat" onclick="ftSetAdjacentSeatSelector(4, this);" disabled><span class="box"></span><span class="box"></span><span class="box"></span><span class="box"></span><span class="sreader">4석 좌석붙임</span></label></span>
															</div>
														</div>
													</div> -->
			
													<div id="nopContainer" class="numberofpeople-select" style="min-width: 426px;">
														<!-- 2021.05.25 - 좌석 거리두기 -->
														<!-- 최대 선택 가능 인원 표기 -->
														<div id="maximum_people" style="padding-bottom: 5px; text-align: right; font-size: 11px !important; color: red;">* 최대 8명 선택 가능</div>
														<div class="group millitary" id="nop_group_millitary" style="display: none;">
															<span class="title">군인</span>
															<ul>
																<li data-count="0" class="selected" type="millitary"><a href="#" onclick=" "><span class="sreader mod">군인</span>0<span class="sreader">명</span></a></li>
																<li data-count="1" type="millitary"><a href="#" onclick=" "><span class="sreader mod">군인</span>1<span class="sreader">명</span></a></li>
																<li data-count="2" type="millitary"><a href="#" onclick=" "><span class="sreader mod">군인</span>2<span class="sreader">명</span></a></li>
																<li data-count="3" type="millitary"><a href="#" onclick=" "><span class="sreader mod">군인</span>3<span class="sreader">명</span></a></li>
																<li data-count="4" type="millitary"><a href="#" onclick=" "><span class="sreader mod">군인</span>4<span class="sreader">명</span></a></li>
															</ul>
														</div>
														<div class="group adult" id="nop_group_adult" style="display: block;">
															<span class="title">일반</span>
															<ul>
																<li data-count="0" type="adult"><a href="#" onclick="rejectAnswer()"><span class="sreader mod">일반</span>0<span class="sreader">명</span></a></li>
																<li data-count="1" type="adult" class="selected"><a href="#" onclick=" "><span class="sreader mod">일반</span>1<span class="sreader">명</span></a></li>
																<li data-count="2" type="adult"><a href="#" onclick="rejectAnswer()"><span class="sreader mod">일반</span>2<span class="sreader">명</span></a></li>
																<li data-count="3" type="adult"><a href="#" onclick="rejectAnswer()"><span class="sreader mod">일반</span>3<span class="sreader">명</span></a></li>
																<li data-count="4" type="adult"><a href="#" onclick="rejectAnswer()"><span class="sreader mod">일반</span>4<span class="sreader">명</span></a></li>
																<li data-count="5" type="adult"><a href="#" onclick="rejectAnswer()"><span class="sreader mod">일반</span>5<span class="sreader">명</span></a></li>
																<li data-count="6" type="adult"><a href="#" onclick="rejectAnswer()"><span class="sreader mod">일반</span>6<span class="sreader">명</span></a></li>
																<li data-count="7" type="adult"><a href="#" onclick="rejectAnswer()"><span class="sreader mod">일반</span>7<span class="sreader">명</span></a></li>
																<li data-count="8" type="adult"><a href="#" onclick="rejectAnswer()"><span class="sreader mod">일반</span>8<span class="sreader">명</span></a></li>
															</ul>
														</div>
														<div class="group youth" id="nop_group_youth" style="display: block;">
															<span class="title">청소년</span>
															<ul>
																<li data-count="0" class="selected" type="youth"><a href="#" onclick=" "><span class="sreader mod">청소년</span>0<span class="sreader">명</span></a></li>
																<li data-count="1" type="youth"><a href="#" onclick="rejectAnswer()"><span class="sreader mod">청소년</span>1<span class="sreader">명</span></a></li>
																<li data-count="2" type="youth"><a href="#" onclick="rejectAnswer()"><span class="sreader mod">청소년</span>2<span class="sreader">명</span></a></li>
																<li data-count="3" type="youth"><a href="#" onclick="rejectAnswer()"><span class="sreader mod">청소년</span>3<span class="sreader">명</span></a></li>
																<li data-count="4" type="youth"><a href="#" onclick="rejectAnswer()"><span class="sreader mod">청소년</span>4<span class="sreader">명</span></a></li>
																<li data-count="5" type="youth"><a href="#" onclick="rejectAnswer()"><span class="sreader mod">청소년</span>5<span class="sreader">명</span></a></li>
																<li data-count="6" type="youth"><a href="#" onclick="rejectAnswer()"><span class="sreader mod">청소년</span>6<span class="sreader">명</span></a></li>
																<li data-count="7" type="youth"><a href="#" onclick="rejectAnswer()"><span class="sreader mod">청소년</span>7<span class="sreader">명</span></a></li>
																<li data-count="8" type="youth"><a href="#" onclick="rejectAnswer()"><span class="sreader mod">청소년</span>8<span class="sreader">명</span></a></li>
															</ul>
														</div>
													</div>
												</div>
											</div>
											<div class="section section-screen-select">
												<!-- UI 변경으로 삭제 
												<div class="title">선택하신 상영관<span>/</span>시간</div>
												-->
												<!-- UI 변경
												<div class="screen-time">
													<span class="screen"><b></b></span>
													<span class="seats seat_all"></span>
													<span class="time"></span>
													<span class="seats seat_remain"></span>
												</div>
												-->
												<div id="user-select-info">
													<p class="theater-info">
														<span class="site"><!-- CGV 강변 --></span>
														<span class="screen"><!-- 씨네앤포레 --></span>
														<span class="seatNum">남은좌석&nbsp;<b class="restNum"><!-- 38 --></b>/<b class="totalNum"><!-- 48 --></b></span>
													</p>
													<p class="playYMD-info"><b class="b_noImpact"><!-- 2022.08.03 --></b><b class="exe">&nbsp;</b><b><!-- 21:10 ~ 23:41 --></b></p>
												</div>
											</div>
										</div>
										<div class="theater_minimap" style="background-color: #F2F0E4; border: 0px;">
											<div class="theater nano has-scrollbar" id="seat_minimap_nano" style="margin-left: 90px;">
												<div class="content" tabindex="-1" style="right: -17px; bottom: -17px;">
													<div class="screen" title="SCREEN" style="width: 652px;">
														<span class="text"></span>
													</div>
													<div class="seats" id="seats_list" style="width: 144px; height: 144px;">
														<div class="seat_noImpact">
															<!-- <div class="row" style="top: 0px;">
																<div class="label">A</div>
																<div class="seat_group">
																	<div class="group">
																		<div class="seat reserved" style="left: 32px;" data-left="" data-left_zoom="">
																			<a href="#" "="" onclick="">
																				<span class="no">1</span>
																				<span class="sreader">빈백석</span>
																				<span class="sreader mod"> 선택불가</span>
																			</a>
																		</div>
																		<div class="seat reserved" style="left: 48px;" data-left="" data-left_zoom="">
																			<a href="#" "="" onclick="">
																				<span class="no">2</span>
																				<span class="sreader">빈백석</span>
																				<span class="sreader mod"> 선택불가</span>
																			</a>
																		</div>
																		<div class="seat reserved" style="left: 64px;" data-left="" data-left_zoom="">
																			<a href="#" "="" onclick="">
																				<span class="no">3</span>
																				<span class="sreader">빈백석</span>
																				<span class="sreader mod"> 선택불가</span>
																			</a>
																		</div>
																		<div class="seat reserved" style="left: 80px;" data-left="" data-left_zoom="">
																			<a href="#" "="" onclick="">
																				<span class="no">4</span>
																				<span class="sreader">빈백석</span>
																				<span class="sreader mod"> 선택불가</span>
																			</a>
																		</div>
																		<div class="seat reserved" style="left: 96px;" data-left="" data-left_zoom="">
																			<a href="#" "="" onclick="">
																				<span class="no">5</span>
																				<span class="sreader">빈백석</span>
																				<span class="sreader mod"> 선택불가</span>
																			</a>
																		</div>
																	</div>
																</div>
															</div>
															<div class="row" style="top: 16px;">
																<div class="label">B</div>
																<div class="seat_group">
																	<div class="group">
																		<div class="seat reserved" style="left: 32px;" data-left="" data-left_zoom="">
																			<a href="#" "="" onclick="">
																				<span class="no">1</span>
																				<span class="sreader">빈백석</span>
																				<span class="sreader mod"> 선택불가</span>
																			</a>
																		</div>
																		<div class="seat reserved" style="left: 48px;" data-left="" data-left_zoom="">
																			<a href="#" "="" onclick="">
																				<span class="no">2</span>
																				<span class="sreader">빈백석</span>
																				<span class="sreader mod"> 선택불가</span>
																			</a>
																		</div>
																		<div class="seat reserved" style="left: 64px;" data-left="" data-left_zoom="">
																			<a href="#" "="" onclick="">
																				<span class="no">3</span>
																				<span class="sreader">빈백석</span>
																				<span class="sreader mod"> 선택불가</span>
																			</a>
																		</div>
																		<div class="seat reserved" style="left: 80px;" data-left="" data-left_zoom="">
																			<a href="#" "="" onclick="">
																				<span class="no">4</span>
																				<span class="sreader">빈백석</span>
																				<span class="sreader mod"> 선택불가</span>
																			</a>
																		</div>
																		<div class="seat reserved" style="left: 96px;" data-left="" data-left_zoom="">
																			<a href="#" "="" onclick="">
																				<span class="no">5</span>
																				<span class="sreader">빈백석</span>
																				<span class="sreader mod"> 선택불가</span>
																			</a>
																		</div>
																	</div>
																</div>
															</div>
															<div class="row" style="top: 32px;">
																<div class="label">C</div>
																<div class="seat_group">
																	<div class="group">
																		<div class="seat reserved" style="left: 32px;" data-left="" data-left_zoom="">
																			<a href="#" "="" onclick="">
																				<span class="no">1</span>
																				<span class="sreader">빈백석</span>
																				<span class="sreader mod"> 선택불가</span>
																			</a>
																		</div>
																		<div class="seat reserved" style="left: 48px;" data-left="" data-left_zoom="">
																			<a href="#" "="" onclick="">
																				<span class="no">2</span>
																				<span class="sreader">빈백석</span>
																				<span class="sreader mod"> 선택불가</span>
																			</a>
																		</div>
																		<div class="seat reserved" style="left: 64px;" data-left="" data-left_zoom="">
																			<a href="#" "="" onclick="">
																				<span class="no">3</span>
																				<span class="sreader">빈백석</span>
																				<span class="sreader mod"> 선택불가</span>
																			</a>
																		</div>
																		<div class="seat reserved" style="left: 80px;" data-left="" data-left_zoom="">
																			<a href="#" "="" onclick="">
																				<span class="no">4</span>
																				<span class="sreader">빈백석</span>
																				<span class="sreader mod"> 선택불가</span>
																			</a>
																		</div>
																		<div class="seat reserved" style="left: 96px;" data-left="" data-left_zoom="">
																			<a href="#" "="" onclick="">
																				<span class="no">5</span>
																				<span class="sreader">빈백석</span>
																				<span class="sreader mod"> 선택불가</span>
																			</a>
																		</div>
																	</div>
																</div>
															</div>
															<div class="row" style="top: 48px;">
																<div class="label">D</div>
																<div class="seat_group">
																	<div class="group">
																		<div class="seat reserved" style="left: 32px;" data-left="" data-left_zoom="">
																			<a href="#" "="" onclick="">
																				<span class="no">1</span>
																				<span class="sreader">빈백석</span>
																				<span class="sreader mod"> 선택불가</span>
																			</a>
																		</div>
																		<div class="seat reserved" style="left: 48px;" data-left="" data-left_zoom="">
																			<a href="#" "="" onclick="">
																				<span class="no">2</span>
																				<span class="sreader">빈백석</span>
																				<span class="sreader mod"> 선택불가</span>
																			</a>
																		</div>
																		<div class="seat reserved" style="left: 64px;" data-left="" data-left_zoom="">
																			<a href="#" "="" onclick="">
																				<span class="no">3</span>
																				<span class="sreader">빈백석</span>
																				<span class="sreader mod"> 선택불가</span>
																			</a>
																		</div>
																		<div class="seat reserved" style="left: 80px;" data-left="" data-left_zoom="">
																			<a href="#" "="" onclick="">
																				<span class="no">4</span>
																				<span class="sreader">빈백석</span>
																				<span class="sreader mod"> 선택불가</span>
																			</a>
																		</div>
																		<div class="seat notavail" style="left: 96px;" data-left="" data-left_zoom="">
																			<a href="#" "="" onclick="">
																				<span class="no">5</span>
																				<span class="sreader">빈백석</span>
																				<span class="sreader mod"> 선택불가</span>
																			</a>
																		</div>
																	</div>
																</div>
															</div>
															<div class="row" style="top: 64px;">
																<div class="label">E</div>
																<div class="seat_group">
																	<div class="group">
																		<div class="seat reserved" style="left: 32px;" data-left="" data-left_zoom="">
																			<a href="#" "="" onclick="">
																				<span class="no">1</span>
																				<span class="sreader">빈백석</span>
																				<span class="sreader mod"> 선택불가</span>
																			</a>
																		</div>
																		<div class="seat reserved" style="left: 48px;" data-left="" data-left_zoom="">
																			<a href="#" "="" onclick="">
																				<span class="no">2</span>
																				<span class="sreader">빈백석</span>
																				<span class="sreader mod"> 선택불가</span>
																			</a>
																		</div>
																		<div class="seat" style="left: 64px;" data-left="" data-left_zoom="">
																			<a href="#" "="" onclick="">
																				<span class="no">3</span>
																				<span class="sreader">빈백석</span>
																				<span class="sreader mod"> 선택불가</span>
																			</a>
																		</div>
																		<div class="seat" style="left: 80px;" data-left="" data-left_zoom="">
																			<a href="#" "="" onclick="">
																				<span class="no">4</span>
																				<span class="sreader">빈백석</span>
																				<span class="sreader mod"> 선택불가</span>
																			</a>
																		</div>
																		<div class="seat" style="left: 96px;" data-left="" data-left_zoom="">
																			<a href="#" "="" onclick="">
																				<span class="no">5</span>
																				<span class="sreader">빈백석</span>
																				<span class="sreader mod"> 선택불가</span>
																			</a>
																		</div>
																	</div> -->
																</div>
															</div>
														</div>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<form id = "form" name="form">
					<div id="ticket_tnb" class="tnb_container ">
						<div class="tnb step2"> 
							<!-- btn-left -->
							<div class="info movie">
								<span class="movie_poster">
									<img src="" alt="영화 포스터" style="display: none;">
								</span>
								<div class="row movie_title colspan2" style="display: none;">
									<span class="data letter-spacing-min ellipsis-line2"></span>
								</div>
								<div class="row movie_type" style="display: none;">
									<span class="data ellipsis-line1"></span>
								</div>
								<div class="row movie_rating" style="display: none;">
									<span class="data" title=""></span>
								</div>
								<div class="placeholder" title="영화선택"></div>
							</div>
							<div class="info theater">
								<div class="row name" style="display: none;">
									<span class="header">극장</span>
									<span class="data letter-spacing-min ellipsis-line1"></span>
								</div>
								<div class="row date" style="display: none;">
									<span class="header">일시</span>
									<span class="data"></span>
								</div>
								<div class="row screen" style="display: none;">
									<span class="header">상영관</span>
									<span class="data"></span>
								</div>
								<div class="row number" style="display: none;">
									<span class="header">인원</span>
									<span class="data"></span>
								</div>
								<div class="placeholder" title="극장선택"></div>
							</div>
							<div class="info seat">
								<div class="row seat_name" style="height: 0px;">
									<span class="header">좌석명</span>
									<span class="data" title=""></span>
								</div>
								<div class="row seat_no colspan3">
									<span class="header">좌석번호</span>
									<span class="data ellipsis-line3" title=""></span>
								</div>
								<div class="placeholder" title="좌석선택"></div>
							</div>
							<div class="info payment-ticket">
								<div class="row payment-adult" style="display: none;">
									<span class="header">일반</span>
									<span class="data"><span class="price"></span>원 x <span class="quantity">1</span></span>
								</div>
								<div class="row payment-final" style="display: none;">
									<span class="header">총금액</span>
									<span class="data"><span class="price"></span><span class="won">원</span></span>
								</div>
							</div>
							<div class="info path">
								<div class="row colspan4">
									<span class="path-step2" title="좌석선택">&nbsp;</span>
									<span class="path-step2" title="결제">&nbsp;</span>
								</div>
							</div>
							<!-- btn-right -->
							<div class="tnb_step_btn_right_before" id="tnb_step_btn_right_before"></div>
							<a type="button" class="btn-right" id="tnb_step_btn_right" style="cursor: pointer;"></a>
						</div>
					</div>
					<input type="hidden" name="mSeq" value="">
					<input type="hidden" name="thLocation" value="">
					<input type="hidden" name="mNameKor" value="">
					<input type="hidden" name="mAgeLimit" value="">
					<input type="hidden" name="src" value="">
					<input type="hidden" name="scScreenType" value="">
					<input type="hidden" name="thName" value="">
					<input type="hidden" name="dDate" value="">
					<input type="hidden" name="dTime" value="">
					<input type="hidden" name="scNumber" value="">
					<input type="hidden" name="stRow" value="">
					<input type="hidden" name="stCol" value="">
					<input type="hidden" name="stPrice" value="">
					<input type="hidden" name="totalPrice" value="">
					<input type="hidden" name="thisDate" value="">
					<input type="hidden" name="thisTime" value="">
					<input type="hidden" name="dSeq" value="">
					<input type="hidden" name="scTotalSeat" value="">
					<input type="hidden" name="scRow" value="">
					<input type="hidden" name="scCol" value="">
					<input type="hidden" name="stSeq" value="">
				</form>
				<div class="banner" id="ticket_bottom_banner" style="padding-top: 0px;">
					<img src="/resources/images/user/0803_996x140.jpg" alt="由щ명"  style="width:996px;height:140px">
				</div>
				<div id="ticket_banner" class="ticket_banner">
					<div>
						<div class="AdvertiseCon" id="RIA_Skin_Seat_L" style="width: 160px; height: 300px; background: none; position: absolute; top: 318px; left: -164px; overflow: hidden; display: block;">
							<img src="/resources/images/user/1221_160x300.jpg" width="160" height="300" border="0" alt="광고-CGV 기프트 카드" style="width: 160px; height: 300px;">
						</div>
						<div class="AdvertiseCon" id="RIA_Skin_Seat_R" style="width: 160px; height: 300px; background: none; position: absolute; top: 318px; left: 1000px; overflow: hidden; display: block;">
							<img src="/resources/images/user/1221_160x300.jpg" width="160" height="300" border="0" alt="광고-CGV 기프트 카드" style="width: 160px; height: 300px;">
						</div>
					</div>
				</div>
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
	<script>
		function selectTheater(seq){
			$.ajax({
				async: true 
				,cache: false
				,type: "post"
				,dataType:"json" 	
				,url: "/purchase/selectTheater"
				,data : {"mSeq" : seq}
				,success: function(response) {
					if(response.rt == "success") {
						/* $('div.placeholder').css('display', 'none');
						$('span.movie_title').css('display', 'inline');
						$('div.movie_title').css('display', 'block');
						$('div.movie_type').css('display', 'block');
						$('div.movie_rating').css('display', 'block'); */
						<c:set var="listCodeLocation" value="${CodeServiceImpl.selectListCachedCode('8')}"/>
						var arr = new Array();
						<c:forEach items="${listCodeLocation}" var="listLocation" varStatus="listLocationStatus">
							arr.push({
								num : "${listLocation.ccSeq}"
								,name : "${listLocation.ccCodeName}"
							});
						</c:forEach>
						var theater = $('div.theater-area-list').children('ul');
						theater.empty();
						for(var i=0; i<response.result.length; i++){
							 var list = response.result[i];
							 var seq = list.mSeq;
							 var location = list.thLocation;
							 if(arr[i].num == list.thLocation){
								 var thName = arr[i].name
						 		}
							 theater.append('<li style="visibility: visible;"><a href="javascript:selectLocation(' + seq + ', '+ location +')"><span class="name">' + thName + '</span><span class="count"></span></a><div class="area_theater_list nano has-scrollbar has-scrollbar-y"><ul class="content scroll-y" tabindex="-1" style="right: -17px;"></ul></div></li>');
					}
				}else{
					}
				}
				,error : function(jqXHR, textStatus, errorThrown){
					alert("ajaxUpdate " + jqXHR.textStatus + " : " + jqXHR.errorThrown);
				}	
			});
	};
	
	
	function selectLocation(seq, location){
		$.ajax({
			async: true 
			,cache: false
			,type: "post"
			,dataType:"json" 	
			,url: "/purchase/selectLocation"
			,data : {"mSeq" : seq, "thLocation" : location}
			,success: function(response) {
				if(response.rt == "success") {
					var location = $('div.area_theater_list').children('ul.content');
					location.empty();
					for(var i=0; i<response.result.length; i++){
						 var list = response.result[i];
						 location.append('<li class="" data-index="1" areaindex="0" style="display: list-item;"><a href="javascript:selectDate(' + seq + ', '+ list.thLocation +')"><span>' + list.thName + '</span><span class="sreader"></span></a></li>');
					}
				} else {
					//byPass
				}
			}
			,error : function(jqXHR, textStatus, errorThrown){
				alert("ajaxUpdate " + jqXHR.textStatus + " : " + jqXHR.errorThrown);
			}
		});
	};
	
	//날짜 넣기
	const date = new Date();
	const lastDay = new Date(date.getFullYear(), date.getMonth()+1, 0);
	const reserveDate = document.querySelector("#reserveDate");
	
	const weekOfDay = ["일", "월", "화", "수", "목", "금", "토"]
	const year = date.getFullYear();
    const month = (date.getMonth()+1);
    const day = date.getDay();
    for (i = date.getDate(); i <= lastDay.getDate(); i++) {
    	const li = document.createElement("li");
    	const a = document.createElement("a");
        const spanWeekOfDay = document.createElement("span");
        const spanDay = document.createElement("span");
        const spanSreader = document.createElement("span");

        //class넣기
        li.classList = "day";
        a.classList = "noImpact";
        spanWeekOfDay.classList = "dayweek";
        spanDay.classList = "day";
        spanSreader.classList = "sreader";

        //weekOfDay[new Date(2020-03-날짜)]
        const dayOfWeek = weekOfDay[new Date(year + "-" + month + "-" + i).getDay()];

        //요일 넣기
        if (dayOfWeek === "일") {
        	li.classList.add("day-sun");
        } 
        spanWeekOfDay.innerHTML = dayOfWeek;
        li.append(a);
        a.append(spanWeekOfDay);
        //날짜 넣기
        if(i<10){
        	spanDay.innerHTML = '0'+i;
        	}else{
        spanDay.innerHTML = i;
        	}
        a.append(spanDay);
        //button.append(i);
        a .append(spanSreader);
        reserveDate.append(li);
    }
    
    function selectDate(seq, location){
		$.ajax({
			async: true 
			,cache: false
			,type: "post"
			,dataType:"json" 	
			,url: "/purchase/selectDate"
			,data : {"mSeq" : seq, "thLocation" : location}
			,success: function(response) {
				if(response.rt == "success") {
					$('#reserveDate').children('li').addClass('dimmed');
					var location = $('div.date-list').children('ul.content');
					for(var i=0; i<response.result.length; i++){
						 var list = response.result[i];
						 var year =list.dDate.substr(0,4);
						 var month = list.dDate.substr(5,2);
						 var day = list.dDate.substr(8,2);
						 console.log(year);
						 console.log(month);
						 console.log(day);
						 var thisDay = $("span.day");
						 console.log(thisDay.text());
						 var arr2 = new Array();
						 for(j=0; j<thisDay.text().length/2; j++){
							if(j==0){ 
								var day2 = thisDay.text().substr(0, 2);
							}else{
								var day2 = thisDay.text().substr((2*j), 2);
							}
							arr2.push(day2)
						 } 
						 console.log(arr2);
						 console.log(day);
						 var aImpact = $("a.noImpact");
						 var thisDayWeek = $("span.dayweek");
						 for(a=0; a<arr2.length; a++){
							 var items = $( 'span:contains('+arr2[a]+')');
							 //return false;
							 if(day == arr2[a]){
								 items.parent().parent().removeClass('dimmed');
								 items.parent().attr('href', 'javascript:selectTime(' + list.mSeq + ', ' + list.thLocation + ', ' + '"' + list.dDate + '"' + ', ' + '"' + list.thName + '"' + ', ' + list.scNumber + ')');
						 	}else{
						 	}
						}
					}
				} else {
					//byPass
				}
			}
			,error : function(jqXHR, textStatus, errorThrown){
				alert("ajaxUpdate " + jqXHR.textStatus + " : " + jqXHR.errorThrown);
			}
		});
	};
	
	function selectTime(seq, location, date, thName, scNumber){
		$.ajax({
			async: true 
			,cache: false
			,type: "post"
			,dataType:"json" 	
			,url: "/purchase/selectTime"
			,data : {"mSeq" : seq, "thLocation" : location, "dDate" : date, "thName" : thName, "scNumber" : scNumber}
			,success: function(response) {
				if(response.rt == "success") {
					<c:set var="listCodeScreen" value="${CodeServiceImpl.selectListCachedCode('10')}"/>
						var arr = new Array();
					<c:forEach items="${listCodeScreen}" var="listScreen" varStatus="listScreenStatus">
						arr.push({
							num : "${listScreen.ccSeq}"
							,name : "${listScreen.ccCodeName}"
						});
					</c:forEach>
					var location = $('div.time-list').children('div.content');
					location.empty();
					var div = "";
		 			div += '<div class="theater"></div>';
	 				location.append(div);
	 				for(var j=0; j<response.result2.length; j++){
		 				var item = response.result2[j];
		 				var location2 = $('div.time-list').children('div.content').children('div.theater');
		 				for(var k=0; k<arr.length; k++){
		 					if(arr[k].num == item.scScreenType){
								 var scScreenType = arr[k].name
								 console.log(scScreenType);
						 		}		 					
		 				}
				 		var li ="";
						 li += '<span class="title">';
						 li += '	<span class="name">' + scScreenType + '</span>';
						 li += '	<span class="floor">' + item.scNumber + '관[' + scScreenType + ']</span>';
						 li += '	<span class="seatcount">(총' + item.scTotalSeat + '석)</span>';
						 li += '</span>';
						 li += '<ul class="screenThis"></ul>';
				 		location2.append(li);
						for(var i=0; i<response.result.length; i++){
						 	var list = response.result[i];
					 		var location3 = $('ul.screenThis');
				 			var timeThis = list.dTime.substr(0, 5);
				 			var li2 = "";
				 				li2 += '<li>';
				 				li2 += '	<a class=\'button\' href=\'javascript:selectSeat(' + list.mSeq + ', ' + list.thLocation + ', \"' + list.dDate + '\", \"' + list.thName + '\", ' + list.scNumber + ',\"' + list.dTime + '\")\'>';
				 				li2 += '		<span class="time">';
				 				li2 += '			<span>' + timeThis + '</span>';
				 				li2 += '		</span>';
				 				li2 += '		<span class="count">' + list.scTotalSeat + '석</span>';
				 				li2 += '		<div class="sreader">종료시간</div>';
				 				li2 += '		<span class="sreader mod"></span>';
				 				li2 += '	</a>';
				 				li2 += '</li>';
				 			location3.append(li2);   
							}
		 				}
					}else {
					//byPass
				}
			}
			,error : function(jqXHR, textStatus, errorThrown){
				alert("ajaxUpdate " + jqXHR.textStatus + " : " + jqXHR.errorThrown);
			}
		});
	};   
	
	function selectSeat(seq, location, date, name, number, time){
		$.ajax({
			async: true 
			,cache: false
			,type: "post"
			,dataType:"json" 	
			,url: "/purchase/selectSeat"
			,data : {"mSeq" : seq, "thLocation" : location, "dDate" : date, "thName" : name, "dTime" : time, "scNumber" : number}
			,success: function(response) {
				if(response.rt == "success") {
					var location = $('div.seats').children('div.seat_noImpact');
					location.empty();
					var list = response.result[0];
					var time = list.dTime.substr(0, 5);
					var date = list.dDate.replace(/-/g, ".")
					$('span.site').text(list.thName);
					$('span.screen').text(list.scNumber + '관');
					/* $('span.seatNum').text('남은좌석 '); */
					$('b.restNum').text(list.scTotalSeat);
					$('b.totalNum').text(list.scTotalSeat);
					$('p.playYMD-info').children('b.b_noImpact').text(date);
					$('b.exe').next('b').text(time + ' ~ ');
					var arr = ["A", "B", "C", "D", "E", "F", "G", "H"];
					for(var i=1; i<=list.scRow; i++){
						var li = "";
						li += '<div class="row" style="top: ' + (32 + (16*(i-1))) + 'px;">';
						li += '	<div class="label">' + arr[i-1] + '</div>';
						li += '	<div class="seat_group">';
						li += '		<div class="group">';
						li += '		</div>';
						li += '	</div>';
						li += '</div>';
				 	   	location.append(li);
						 for(var j=1; j<=list.scCol; j++){
							 var location2 = $('div.label:contains(' + arr[i-1] + ')').next('div.seat_group').children('div.group');
							 console.log(i+ ", " + j);
							/* alert(i); */
							 var li2 = "";
							 li2 += '<div class="seat" style="left: ' + (32 + (16*(j-1))) + 'px;">';
							 li2 += '	<a class=\'button\' href=\'javascript:selectPurchase(' + list.mSeq + ', ' + list.thLocation + ', \"' + list.dDate + '\", \"' + list.thName + '\", ' + list.scNumber + ',\"' + list.dTime + '\", ' + i + ', ' + j + ')\'>';
							 li2 += '		<span class="no">' + j + '</span>';
							 li2 += '		<span class="sreader"></span>';
							 li2 += '		<span class="sreader mod"></span>';
							 li2 += '	</a>';
							 li2 += '</div>';
							 location2.append(li2);	
						 }
					}
				} else {
					//byPass
				}
			}
			,error : function(jqXHR, textStatus, errorThrown){
				alert("ajaxUpdate " + jqXHR.textStatus + " : " + jqXHR.errorThrown);
			}
		});
	};
	var is_action = false;
	function selectPurchase(seq, location, date, name, number, time, row, col){
		$.ajax({
			async: true 
			,cache: false
			,type: "post"
			,dataType:"json" 	
			,url: "/purchase/selectPurchase"
			,data : {"mSeq" : seq, "thLocation" : location, "dDate" : date, "thName" : name, "dTime" : time, "scNumber" : number, "stRow" : row, "stCol" : col}
			,success: function(response) {
				if(response.rt == "success") {
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
						if(arr[i].num == response.result[0].mAgeLimit){
							var ageLimit = arr[i].name;
						}
					};
					
					for(var j=0; j<arr2.length; j++){
						if(arr2[j].num == response.result[0].scScreenType){
							var screenType = arr2[j].name;
						} 
					};
					
					var arr3 = ["A", "B", "C", "D", "E", "F", "G", "H"];
					
					for(var k=0; k<arr3.length; k++){
						if(k+1 == response.result[0].stRow){
							var seat = arr3[k];
						}
					};
					var moviePrice = response.result[0].stPrice.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ',');
					$(this).parent('div.seat').addClass('selected');
					$('div.placeholder').css("display", "none");
					$('span.movie_poster').children('img').css('display', 'inline');
					$('span.movie_poster').children('img').attr('src', '/resources/images/user/' + response.result[0].src + '_320.jpg')
					$('div.movie_title').css("display", "block");
					$('div.movie_title').children('span.letter-spacing-min').text(response.result[0].mNameKor);
					$('div.movie_type').css("display", "block");
					$('div.movie_type').children('span.data').text(screenType);
					$('div.movie_rating').css("display", "block");
					$('div.movie_rating').children('span.data').text(ageLimit + ' 관람가');
					$('div.theater').children('div.name').css("display", "block");
					$('div.theater').children('div.name').children('span.data').text(response.result[0].thName);
					$('div.theater').children('div.date').css("display", "block");
					var thisTime = response.result[0].dTime.substr(0, 5);
					var thisDate = response.result[0].dDate.replace(/-/g, ".")
					$('div.theater').children('div.date').children('span.data').text(thisDate + ' ' + thisTime);
					$('div.theater').children('div.screen').css("display", "block");
					$('div.theater').children('div.screen').children('span.data').text(response.result[0].scNumber + '관');
					$('div.theater').children('div.number').css("display", "block");
					$('div.theater').children('div.number').children('span.data').text('일반 1명');
					$('div.seat_name').css("display", "block");
					$('div.theater').children('div.number').children('span.data').text('일반 1명');
					$('div.payment-ticket').children('div.payment-adult').css("display", "block");
					$('div.payment-ticket').children('div.payment-adult').children('span.data').children('span.price').text(moviePrice);
					$('div.payment-ticket').children('div.payment-final').css("display", "block");
					$('div.payment-ticket').children('div.payment-final').children('span.data').children('span.price').text((response.result[0].stPrice* 1).toString().replace(/\B(?=(\d{3})+(?!\d))/g, ','));
					$('div.seat_no').children('span.data').text(seat + response.result[0].stCol);
					$('div.seat_name').children('span.data').text('일반석');
					$('input:hidden[name="mSeq"]').attr("value", seq);
					$('input:hidden[name="thLocation"]').attr("value", location);
					$('input:hidden[name="mNameKor"]').attr("value", response.result[0].mNameKor);
					$('input:hidden[name="mAgeLimit"]').attr("value", response.result[0].mAgeLimit);
					$('input:hidden[name="src"]').attr("value", response.result[0].src);
					$('input:hidden[name="scScreenType"]').attr("value", response.result[0].scScreenType);
					$('input:hidden[name="thName"]').attr("value", name);
					$('input:hidden[name="dDate"]').attr("value", response.result[0].dDate);
					$('input:hidden[name="dTime"]').attr("value", response.result[0].dTime);
					$('input:hidden[name="scNumber"]').attr("value", number);
					$('input:hidden[name="stRow"]').attr("value", row);
					$('input:hidden[name="stCol"]').attr("value", col);
					$('input:hidden[name="stPrice"]').attr("value", response.result[0].stPrice);
					$('input:hidden[name="totalPrice"]').attr("value", (response.result[0].stPrice*1).toString().replace(/\B(?=(\d{3})+(?!\d))/g, ','));
					$('input:hidden[name="thisDate"]').attr("value", thisDate);
					$('input:hidden[name="thisTime"]').attr("value", thisTime);
					$('input:hidden[name="dSeq"]').attr("value", response.result[0].dSeq);
					$('input:hidden[name="scTotalSeat"]').attr("value", response.result[0].scTotalSeat);
					$('input:hidden[name="scRow"]').attr("value", response.result[0].scRow);
					$('input:hidden[name="scCol"]').attr("value", response.result[0].scCol);
					$('input:hidden[name="stSeq"]').attr("value", response.result[0].stSeq);
				}
			}
			,error : function(jqXHR, textStatus, errorThrown){
				alert("ajaxUpdate " + jqXHR.textStatus + " : " + jqXHR.errorThrown);
			}
		});
	};
	var goPurchase = "/purchase/selectPayment";
	var form = $("form[name=form]");
	var seq = $("input:hidden[name=mSeq]"); 
	
	 $("#tnb_step_btn_right").on("click", function(){
		 form.attr("action", goPurchase).submit();
	 });
	
	 function rejectAnswer(){
		 alert('현재 선택 불가능합니다');
	 }
	</script>
</body>
</html>