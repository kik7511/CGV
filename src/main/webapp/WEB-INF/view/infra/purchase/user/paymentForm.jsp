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
						<!-- <div class="steps">
							<div class="step step1" style="height: 500px; display: none;">
								<div class="section section-movie" >
									<div class="col-head" id="skip_movie_list"> 
										<h3 class="sreader">영화</h3>
									</div>
									<div class="col-body" style="height: 685px;">
										<div class="movie-select">
											<div class="movie-list nano has-scrollbar has-scrollbar-y" id="movie_list">
												<ul class="content scroll-y" onscroll="movieSectionScrollEvent();" tabindex="-1" style="right: -17px;">
													<li class="rating-12" data-index="0" movie_cd_group="" movie_idx="">
														<a href="#" title="외계+인 1부" alt="외계+인 1부">
															<span class="icon">&nbsp;</span>
															<span class="text">외계+인 1부</span>
															<span class="sreader"></span>
														</a>
													</li>
													<li class="rating-all" data-index="1" movie_cd_group="" movie_idx="">
														<a href="#" title="미니언즈2" alt="미니언즈2">
															<span class="icon">&nbsp;</span>
															<span class="text">미니언즈2</span>
															<span class="sreader"></span>
														</a>
													</li>
													<li class="rating-12" data-index="2" movie_cd_group="" movie_idx="">
														<a href="#" title="한산-용의출현" alt="한산-용의출현">
															<span class="icon">&nbsp;</span>
															<span class="text">한산-용의출현</span>
															<span class="sreader"></span>
														</a>
													</li>
													<li class="rating-15" data-index="3" movie_cd_group="" movie_idx="">
														<a href="#" title="탑건-매버릭" alt="탑건-매버릭">
															<span class="icon">&nbsp;</span>
															<span class="text">탑건-매버릭</span>
															<span class="sreader"></span>
														</a>
													</li>
													<li class="rating-15" data-index="4" movie_cd_group="" movie_idx="">
														<a href="#" title="헤어질결심" alt="헤어질결심">
															<span class="icon">&nbsp;</span>
															<span class="text">헤어질결심</span>
															<span class="sreader"></span>
														</a>
													</li>
													<li class="rating-12" data-index="5" movie_cd_group="" movie_idx="">
														<a href="#" title="비상선언" alt="비상선언">
															<span class="icon">&nbsp;</span>
															<span class="text">비상선언</span>
															<span class="sreader"></span>
														</a>
													</li>
													<li class="rating-12" data-index="6" movie_cd_group="" movie_idx="">
														<a href="#" title="명탕점 코난-할로윈의 신부" alt="명탕점 코난-할로윈의 신부">
															<span class="icon">&nbsp;</span>
															<span class="text">명탕점 코난-할로윈의 신부</span>
															<span class="sreader"></span>
														</a>
													</li>
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
														<li style="visibility: visible;">
															<a href="#" onclick="theaterAreaClickListener(event);">
																<span class="name">서울</span>
																<span class="count">(4)</span>
															</a>
															<div class="area_theater_list nano has-scrollbar has-scrollbar-y">
																<ul class="content scroll-y" tabindex="-1" style="right: -17px;">
																	<li class="" data-index="1" areaindex="0" theater_cd="" rating_cd="undifined" style="display: list-item;">
																		<a href="#" onclick="theaterListClickListener(event);">강남
																			<span class="sreader"></span>
																		</a>
																	</li>
																	<li class="" data-index="2" areaindex="0" theater_cd="" rating_cd="undifined" style="display: list-item;">
																		<a href="#" onclick="theaterListClickListener(event);">강변
																			<span class="sreader"></span>
																		</a>
																	</li>
																	<li class="" data-index="3" areaindex="0" theater_cd="" rating_cd="undifined" style="display: list-item;">
																		<a href="#" onclick="theaterListClickListener(event);">여의도
																			<span class="sreader"></span>
																		</a>
																	</li>
																	<li class="" data-index="4" areaindex="0" theater_cd="" rating_cd="undifined" style="display: list-item;">
																		<a href="#" onclick="theaterListClickListener(event);">송파
																			<span class="sreader"></span>
																		</a>
																	</li>
																</ul>
															</div>
														</li>
														<li class="selected" style="visibility: visible;">
															<a href="#" onclick="theaterAreaClickListener(event);">
																<span class="name">경기</span>
																<span class="count">(4)</span>
															</a>
															<div class="area_theater_list nano has-scrollbar has-scrollbar-y">
																<ul class="content scroll-y" tabindex="-1" style="right: -17px;">
																	<li class="" data-index="0" areaindex="0" theater_cd="0056" rating_cd="undefined" style="display: list-item;">
																		<a href="#" onclick="theaterListClickListener(event);">평촌
																			<span class="sreader"></span>
																		</a>
																	</li>
																	<li class="" data-index="1" areaindex="0" theater_cd="0056" rating_cd="undefined" style="display: list-item;">
																		<a href="#" onclick="theaterListClickListener(event);">범계
																			<span class="sreader"></span>
																		</a>
																	</li>
																	<li class="" data-index="2" areaindex="0" theater_cd="0056" rating_cd="undefined" style="display: list-item;">
																		<a href="#" onclick="theaterListClickListener(event);">수원
																			<span class="sreader"></span>
																		</a>
																	</li>
																	<li class="" data-index="3" areaindex="0" theater_cd="0056" rating_cd="undefined" style="display: list-item;">
																		<a href="#" onclick="theaterListClickListener(event);">용인
																			<span class="sreader"></span>
																		</a>
																	</li>
																</ul>
															</div>
														</li>
														<li style="visibility: visible;">
															<a href="#" onclick="theaterAreaClickListener(event);">
																<span class="name">인천</span>
																<span class="count">(2)</span>
															</a>
															<div class="area_theater_list nano has-scrollbar has-scrollbar-y">
																<ul class="content scroll-y" tabindex="-1" style="right: -17px;">
																	<li class="" data-index="0" areaindex="0" theater_cd="0056" rating_cd="undefined" style="display: list-item;">
																		<a href="#" onclick="theaterListClickListener(event);">인천
																			<span class="sreader"></span>
																		</a>
																	</li>
																	<li class="" data-index="1" areaindex="0" theater_cd="0056" rating_cd="undefined" style="display: list-item;">
																		<a href="#" onclick="theaterListClickListener(event);">부평
																			<span class="sreader"></span>
																		</a>
																	</li>
																</ul>
															</div>
														</li>
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
												<div>
													<li class="month dimmed">
														<div>
															<span class="year">2022</span>
															<span class="month">8</span>
															<div></div>
														</div>
													</li>
													<li data-index="0" date="20220803" class="day selected">
														<a href="#" onclick="">
															<span class="dayweek">수</span>
															<span class="day">3</span>
															<span class="sreader"></span>
														</a>
													</li>
													<li data-index="1" date="20220804" class="day">
														<a href="#" onclick="">
															<span class="dayweek">목</span>
															<span class="day">4</span>
															<span class="sreader"></span>
														</a>
													</li>
													<li data-index="2" date="20220804" class="day">
														<a href="#" onclick="">
															<span class="dayweek">금</span>
															<span class="day">5</span>
															<span class="sreader"></span>
														</a>
													</li>
													<li data-index="3" date="20220804" class="day">
														<a href="#" onclick="">
															<span class="dayweek">토</span>
															<span class="day">6</span>
															<span class="sreader"></span>
														</a>
													</li>
													<li data-index="4" date="20220804" class="day">
														<a href="#" onclick="">
															<span class="dayweek">일</span>
															<span class="day">7</span>
															<span class="sreader"></span>
														</a>
													</li>
												</div>
											</ul>
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
												<div class="theater" screen_cd="014" movie_cd="20030132">
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
												</div>
												<div class="theater" screen_cd="014" movie_cd="20030132">
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
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="step step2" style="display: none;">
								<div class="section section-seat dimmed">
									<div class="col-head" id="skip_seat_list">
										<h3 class="sreader">
											인원 / 좌석
											<span class="sreader">인원/좌석선택은 레이어로 서비스 되기 때문에 가상커서를 해지(Ctrl+Shift+F12)한 후 사용합니다.</span>
										</h3>
									</div>
									<div class="col-body">
										<div class="person_screen">
											<div class="section section-numberofpeople">
												<div class="col-body"> -->
			
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
			
													<!-- <div id="nopContainer" class="numberofpeople-select" style="min-width: 426px;">
														2021.05.25 - 좌석 거리두기
														최대 선택 가능 인원 표기
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
																<li data-count="0" class="selected" type="adult"><a href="#" onclick=" "><span class="sreader mod">일반</span>0<span class="sreader">명</span></a></li>
																<li data-count="1" type="adult"><a href="#" onclick=" "><span class="sreader mod">일반</span>1<span class="sreader">명</span></a></li>
																<li data-count="2" type="adult"><a href="#" onclick=" "><span class="sreader mod">일반</span>2<span class="sreader">명</span></a></li>
																<li data-count="3" type="adult"><a href="#" onclick=" "><span class="sreader mod">일반</span>3<span class="sreader">명</span></a></li>
																<li data-count="4" type="adult"><a href="#" onclick=" "><span class="sreader mod">일반</span>4<span class="sreader">명</span></a></li>
																<li data-count="5" type="adult"><a href="#" onclick=" "><span class="sreader mod">일반</span>5<span class="sreader">명</span></a></li>
																<li data-count="6" type="adult"><a href="#" onclick=" "><span class="sreader mod">일반</span>6<span class="sreader">명</span></a></li>
																<li data-count="7" type="adult"><a href="#" onclick=" "><span class="sreader mod">일반</span>7<span class="sreader">명</span></a></li>
																<li data-count="8" type="adult"><a href="#" onclick=" "><span class="sreader mod">일반</span>8<span class="sreader">명</span></a></li>
															</ul>
														</div>
														<div class="group youth" id="nop_group_youth" style="display: block;">
															<span class="title">청소년</span>
															<ul>
																<li data-count="0" class="selected" type="youth"><a href="#" onclick=" "><span class="sreader mod">청소년</span>0<span class="sreader">명</span></a></li>
																<li data-count="1" type="youth"><a href="#" onclick=" "><span class="sreader mod">청소년</span>1<span class="sreader">명</span></a></li>
																<li data-count="2" type="youth"><a href="#" onclick=" "><span class="sreader mod">청소년</span>2<span class="sreader">명</span></a></li>
																<li data-count="3" type="youth"><a href="#" onclick=" "><span class="sreader mod">청소년</span>3<span class="sreader">명</span></a></li>
																<li data-count="4" type="youth"><a href="#" onclick=" "><span class="sreader mod">청소년</span>4<span class="sreader">명</span></a></li>
																<li data-count="5" type="youth"><a href="#" onclick=" "><span class="sreader mod">청소년</span>5<span class="sreader">명</span></a></li>
																<li data-count="6" type="youth"><a href="#" onclick=" "><span class="sreader mod">청소년</span>6<span class="sreader">명</span></a></li>
																<li data-count="7" type="youth"><a href="#" onclick=" "><span class="sreader mod">청소년</span>7<span class="sreader">명</span></a></li>
																<li data-count="8" type="youth"><a href="#" onclick=" "><span class="sreader mod">청소년</span>8<span class="sreader">명</span></a></li>
															</ul>
														</div>
													</div>
												</div>
											</div>
											<div class="section section-screen-select"> -->
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
												<!-- <div id="user-select-info">
													<p class="theater-info">
														<span class="site">CGV 강변</span>
														<span class="screen">씨네앤포레</span>
														<span class="seatNum">남은좌석  <b class="restNum">38</b>/<b class="totalNum">48</b></span>
													</p>
													<p class="playYMD-info"><b>2022.08.03</b><b class="exe">(수)</b><b>21:10 ~ 23:41</b></p>
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
														<div>
															<div class="row" style="top: 0px;">
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
							</div> -->
							<div class="step step3" style="display: block;">

								<div class="ticket_payment_method" style="min-height: 0px;">
									<a href="#" onclick="" id="ticket_payment_top" class="sreader">결제시작</a>
									
									<!-- 온라인 큭별 요금제 -->
									<div class="tpm_special" id="onlinePromotion" style="display: none;">
										<div class="special_header">
											<h3 class="title"></h3><span class="desc"></span>
												<!-- <a class="tpmh_btn"><span>펼치기</span></a> -->
											
										</div>
										<div class="special_body membership"> 
											<div class="row online_promotion">
												<div class="divider"></div>
												<div class="title"></div>
												<div class="card_no"><input id="onlinePayApply" type="checkbox"><label for="onlinePayApply" style="margin-left: 10px;"></label></div>
												<div class="result" style="text-align: left;"><span style="line-height: 20px; color: rgb(102, 102, 102);"></span></div>
											</div>
										</div>
									</div>
									
									<!-- 맴버쉽 결제 -->
									<div class="tpm_special tpm_wrap" id="paySpecial" style="display: none;">
										<h4 class="special_header">
											<span class="title">멤버십</span>
											<!-- <span class="desc">멤버십 결제는 다른 할인수단 적용 및 결제와 중복으로 사용하실 수 없습니다.</span> -->
											<a class="tpmh_btn"><span>펼치기</span></a>
										</h4>
										<div class="tpm_body special_body membership" style="display: none;">
											<!-- popupContainers -->
								
								<!-- formContainers -->
										<div class="row" id="spCGVian" style="display: none;">
									<div class="dimmCon" style="display: none;"></div>
									<div class="divider"></div>
									<div class="title name">CGV 임직원</div>
									<div class="msg"></div>
									<div class="card_no">
									<div class="title"><label for=""></label></div>
									<div class="wrap_input"><input type="text" value="" class="type-n nohan"></div>
										<a class="btn_toggle" href="#none">
											<span class="default"> 	조회/적용 	</span>
											<span class="cancel"> 	취소		</span>
										</a>
									</div>
									<!--보유티켓-->
									<div class="hold_ticket">
										<span class="title">	보유매수	</span>
										<span class="value">0</span><span class="exe">	매	</span>
									</div>
									<!--사용티켓-->
									<div class="use_ticket">
										<span class="title">	사용매수	</span>
										<span class="value">0</span><span class="exe">	매	</span>
									</div>
									<!--할인금액-->
									<div class="result">
										<span class="title"> 할인금액 :</span>
										<span class="price">0</span><span class="exe">	원	</span>
									</div>
								</div><div class="row" id="spCGVStaff" style="display: none;">
									<div class="dimmCon" style="display: none;"></div>
									<div class="divider"></div>
									<div class="title name">CGV 미소지기</div>
									<div class="msg"></div>
									<div class="card_no">
									<div class="title"><label for=""></label></div>
									<div class="wrap_input"><input type="text" value="" class="type-n nohan"></div>
										<a class="btn_toggle" href="#none">
											<span class="default"> 	조회/적용 	</span>
											<span class="cancel"> 	취소		</span>
										</a>
									</div>
									<!--보유티켓-->
									<div class="hold_ticket">
										<span class="title">	보유매수	</span>
										<span class="value">0</span><span class="exe">	매	</span>
									</div>
									<!--사용티켓-->
									<div class="use_ticket">
										<span class="title">	사용매수	</span>
										<span class="value">0</span><span class="exe">	매	</span>
									</div>
									<!--할인금액-->
									<div class="result">
										<span class="title"> 할인금액 :</span>
										<span class="price">0</span><span class="exe">	원	</span>
									</div>
								</div><div class="row" id="spFreepass" style="display: none;">
									<div class="dimmCon" style="display: none;"></div>
									<div class="divider"></div>
									<div class="title name">CGV 프리패스카드</div>
									<div class="msg"></div>
									<div class="card_no">
									<div class="title"><label for=""></label></div>
									<div class="wrap_input"><input type="text" value="" class="type-n nohan"></div>
										<a class="btn_toggle" href="#none">
											<span class="default"> 	조회/적용 	</span>
											<span class="cancel"> 	취소		</span>
										</a>
									</div>
									<!--보유티켓-->
									<div class="hold_ticket">
										<span class="title">	보유매수	</span>
										<span class="value">0</span><span class="exe">	매	</span>
									</div>
									<!--사용티켓-->
									<div class="use_ticket">
										<span class="title">	사용매수	</span>
										<span class="value">0</span><span class="exe">	매	</span>
									</div>
									<!--할인금액-->
									<div class="result">
										<span class="title"> 할인금액 :</span>
										<span class="price">0</span><span class="exe">	원	</span>
									</div>
								</div><div class="row" id="spCJEnt" style="display: none;">
									<div class="dimmCon" style="display: none;"></div>
									<div class="divider"></div>
									<div class="title name">CJ E&amp;M 임직원</div>
									<div class="msg"></div>
									<div class="card_no">
									<div class="title"><label for=""></label></div>
									<div class="wrap_input"><input type="text" value="" class="type-n nohan"></div>
										<a class="btn_toggle" href="#none">
											<span class="default"> 	조회/적용 	</span>
											<span class="cancel"> 	취소		</span>
										</a>
									</div>
									<!--보유티켓-->
									<div class="hold_ticket">
										<span class="title">	보유매수	</span>
										<span class="value">0</span><span class="exe">	매	</span>
									</div>
									<!--사용티켓-->
									<div class="use_ticket">
										<span class="title">	사용매수	</span>
										<span class="value">0</span><span class="exe">	매	</span>
									</div>
									<!--할인금액-->
									<div class="result">
										<span class="title"> 할인금액 :</span>
										<span class="price">0</span><span class="exe">	원	</span>
									</div>
								</div><div class="row" id="spEnMmaster" style="display: none;">
									<div class="dimmCon" style="display: none;"></div>
									<div class="divider"></div>
									<div class="title name">CJ E&amp;M Master/Power</div>
									<div class="msg"></div>
									<div class="card_no">
									<div class="title"><label for=""></label></div>
									<div class="wrap_input"><input type="text" value="" class="type-n nohan"></div>
										<a class="btn_toggle" href="#none">
											<span class="default"> 	조회/적용 	</span>
											<span class="cancel"> 	취소		</span>
										</a>
									</div>
									<!--보유티켓-->
									<div class="hold_ticket">
										<span class="title">	보유매수	</span>
										<span class="value">0</span><span class="exe">	매	</span>
									</div>
									<!--사용티켓-->
									<div class="use_ticket">
										<span class="title">	사용매수	</span>
										<span class="value">0</span><span class="exe">	매	</span>
									</div>
									<!--할인금액-->
									<div class="result">
										<span class="title"> 할인금액 :</span>
										<span class="price">0</span><span class="exe">	원	</span>
									</div>
								</div><div class="row" id="spPrestige" style="display: none;">
									<div class="dimmCon" style="display: none;"></div>
									<div class="divider"></div>
									<div class="title name">PRESTIGE 카드 결제</div>
									<div class="msg"></div>
									<div class="card_no">
									<div class="title"><label for=""></label></div>
									<div class="wrap_input"><input type="text" value="" class="type-n nohan"></div>
										<a class="btn_toggle" href="#none">
											<span class="default"> 	조회/적용 	</span>
											<span class="cancel"> 	취소		</span>
										</a>
									</div>
									<!--보유티켓-->
									<div class="hold_ticket">
										<span class="title">	보유매수	</span>
										<span class="value">0</span><span class="exe">	매	</span>
									</div>
									<!--사용티켓-->
									<div class="use_ticket">
										<span class="title">	사용매수	</span>
										<span class="value">0</span><span class="exe">	매	</span>
									</div>
									<!--할인금액-->
									<div class="result">
										<span class="title"> 할인금액 :</span>
										<span class="price">0</span><span class="exe">	원	</span>
									</div>
								</div><div class="row type2" id="spCJOfficer" style="display: none;">
									<div class="dimmCon" style="display: none;"></div>
									<div class="divider"></div>
									<div class="title name">CJ 임원결제</div>
									<div class="msg"></div>
									<div class="contents">
										<p class="title">정상 조회 되었습니다. 아래 적용 버튼을 클릭해 주세요.</p>
										<span class="payName">할인금액:</span>
										<span class="price">0</span><span class="won">원</span>
										<span class="btnCon">
											<a class="btn_toggle" href="#none">
												<span class="default"> 	적용 	</span>
												<span class="cancel"> 	취소		</span>
											</a>
										</span>
									</div>	
								</div><div class="row type2" id="spCJClub" style="display: none;">
									<div class="dimmCon" style="display: none;"></div>
									<div class="divider"></div>
									<div class="title name">CJ Club 카드 결제</div>
									<div class="msg"></div>
									<div class="contents">
										<p class="title">정상 조회 되었습니다. 아래 적용 버튼을 클릭해 주세요.</p>
										<span class="payName">할인금액:</span>
										<span class="price">0</span><span class="won">원</span>
										<span class="btnCon">
											<a class="btn_toggle" href="#none">
												<span class="default"> 	적용 	</span>
												<span class="cancel"> 	취소		</span>
											</a>
										</span>
									</div>	
								</div><div class="row type2" id="spCJClub2" style="display: none;">
									<div class="dimmCon" style="display: none;"></div>
									<div class="divider"></div>
									<div class="title name">CJ Club2 카드 결제</div>
									<div class="msg"></div>
									<div class="contents">
										<p class="title">정상 조회 되었습니다. 아래 적용 버튼을 클릭해 주세요.</p>
										<span class="payName">할인금액:</span>
										<span class="price">0</span><span class="won">원</span>
										<span class="btnCon">
											<a class="btn_toggle" href="#none">
												<span class="default"> 	적용 	</span>
												<span class="cancel"> 	취소		</span>
											</a>
										</span>
									</div>	
								</div><div class="row" id="spSupport" style="display: none;">
									<div class="dimmCon" style="display: none;"></div>
									<div class="divider"></div>
									<div class="title name">CGV 서포터즈 관람카드</div>
									<div class="msg"></div>
									<div class="card_no">
									<div class="title"><label for=""></label></div>
									<div class="wrap_input"><input type="text" value="" class="type-n nohan"></div>
										<a class="btn_toggle" href="#none">
											<span class="default"> 	조회/적용 	</span>
											<span class="cancel"> 	취소		</span>
										</a>
									</div>
									<!--보유티켓-->
									<div class="hold_ticket">
										<span class="title">	보유매수	</span>
										<span class="value">0</span><span class="exe">	매	</span>
									</div>
									<!--사용티켓-->
									<div class="use_ticket">
										<span class="title">	사용매수	</span>
										<span class="value">0</span><span class="exe">	매	</span>
									</div>
									<!--할인금액-->
									<div class="result">
										<span class="title"> 할인금액 :</span>
										<span class="price">0</span><span class="exe">	원	</span>
									</div>
								</div><div class="row" id="spVIPPartner" style="display: none;">
									<div class="dimmCon" style="display: none;"></div>
									<div class="divider"></div>
									<div class="title name">Partners(VIP)</div>
									<div class="msg"></div>
									<div class="card_no">
									<div class="title"><label for=""></label></div>
									<div class="wrap_input"><input type="text" value="" class="type-n nohan"></div>
										<a class="btn_toggle" href="#none">
											<span class="default"> 	조회/적용 	</span>
											<span class="cancel"> 	취소		</span>
										</a>
									</div>
									<!--보유티켓-->
									<div class="hold_ticket">
										<span class="title">	보유매수	</span>
										<span class="value">0</span><span class="exe">	매	</span>
									</div>
									<!--사용티켓-->
									<div class="use_ticket">
										<span class="title">	사용매수	</span>
										<span class="value">0</span><span class="exe">	매	</span>
									</div>
									<!--할인금액-->
									<div class="result">
										<span class="title"> 할인금액 :</span>
										<span class="price">0</span><span class="exe">	원	</span>
									</div>
								</div><div class="row" id="spJobworld" style="display: none;">
									<div class="dimmCon" style="display: none;"></div>
									<div class="divider"></div>
									<div class="title name">잡월드 관람카드</div>
									<div class="msg"></div>
									<div class="card_no">
									<div class="title"><label for=""></label></div>
									<div class="wrap_input"><input type="text" value="" class="type-n nohan"></div>
										<a class="btn_toggle" href="#none">
											<span class="default"> 	조회/적용 	</span>
											<span class="cancel"> 	취소		</span>
										</a>
									</div>
									<!--보유티켓-->
									<div class="hold_ticket">
										<span class="title">	보유매수	</span>
										<span class="value">0</span><span class="exe">	매	</span>
									</div>
									<!--사용티켓-->
									<div class="use_ticket">
										<span class="title">	사용매수	</span>
										<span class="value">0</span><span class="exe">	매	</span>
									</div>
									<!--할인금액-->
									<div class="result">
										<span class="title"> 할인금액 :</span>
										<span class="price">0</span><span class="exe">	원	</span>
									</div>
								</div><div class="row type2" id="vipHalfDisc" style="display: none;">
									<div class="dimmCon" style="display: none;"></div>
									<div class="divider"></div>
									<div class="title name">VIP 반값할인</div>
									<div class="msg"></div>
									<div class="body">
										<div class="block avail_count">
											<span class="title">사용 가능 수량</span>
											<span class="value"><span class="num">0</span>매</span>
										</div>
										<div class="block avail_point">
											<span class="title point">가용 포인트</span>
											<span class="value"><span class="num">0</span>P</span>
										</div>
										<div class="block apply_count"><span class="title">사용매수</span>
											<span class="ticket_type">
												<div class="type adult">
													<span class="title">일반</span>
													<a href="#"><span class="sreader"> 일반 </span><span>0</span><span class="sreader"> 명 </span></a>
													<a href="#"><span class="sreader"> 일반 </span><span>1</span><span class="sreader"> 명 </span></a>
													<a href="#"><span class="sreader"> 일반 </span><span>2</span><span class="sreader"> 명 </span></a>
													<a href="#"><span class="sreader"> 일반 </span><span>3</span><span class="sreader"> 명 </span></a>
													<a href="#"><span class="sreader"> 일반 </span><span>4</span><span class="sreader"> 명 </span></a>
												</div>
												<div class="type youth">
													<span class="title">청소년</span>
													<a href="#"><span class="sreader"> 청소년 </span><span>0</span><span class="sreader"> 명 </span></a>
													<a href="#"><span class="sreader"> 청소년 </span><span>1</span><span class="sreader"> 명 </span></a>
													<a href="#"><span class="sreader"> 청소년 </span><span>2</span><span class="sreader"> 명 </span></a>
													<a href="#"><span class="sreader"> 청소년 </span><span>3</span><span class="sreader"> 명 </span></a>
													<a href="#"><span class="sreader"> 청소년 </span><span>4</span><span class="sreader"> 명 </span></a>
												</div>
											</span>
										</div>
								
										<div class="block use_point">		<span class="title">사용할 포인트</span>		<span class="value"><span class="num">0</span>P</span></div>
										<div class="block remain_point"> 	<span class="title">잔여 포인트</span> 	<span class="value"><span class="num">0</span>P</span></div>
										<div class="result"> <span class="title">할인금액:</span> <span class="price">0</span> <span class="won">원</span> </div>
										<div class="guide">- 적용 대상: CGV VIP, RVIP, VVIP, SVIP<br>- 사용 한도: <span class="red">등급 기간 내 VIP 5매, RVIP 10매, VVIP 20매, SVIP 30매 / 일 한도 : 4매 (VIP 공통)</span><br>- 사용 조건: 일반 / IMAX / 4DX (무비꼴라쥬 포함) 관에서 상영하는 일반 2D영화와 일반관에서 상영하는 3D 영화 중 일반, 청소년으로 예매 시 적용 가능<br>- 조조, 심야, 일부 특정 상영회차 이용 불가<br>- 컬쳐데이, 온라인 특별 요금제 중복할인 불가<br>- SWEETBOX / GOLD CLASS / CINE de CHEF / 프리미엄 / STARIUM / IMAX / 4DX / PRIVATE CINEMA 이용 불가<br>- 영화 기획전, 영화제 등 특별 편성 프로그램 및 라이트톡, 시네마톡 등 톡프로그램 이용 불가<br></div>
									</div>
								</div><div class="row type2" id="sp4dxRed" style="display: none;">
									<div class="dimmCon" style="display: none;"></div>
									<div class="divider"></div>
									<div class="title name">CGV 4DX RED CARD</div>
									<div class="msg"></div>
									<div class="card_no"></div>
									<!--보유티켓-->
									<div class="hold_ticket">
										<span class="title">	사용 가능 매수	</span>
										<span class="value">0</span><span class="exe">	매	</span>
									</div>
									<!--사용티켓-->
									<div class="use_ticket">
										<span class="title">적용매수</span>
										<select class="useNum">
											<option value="0">0</option>
											<option value="1">1</option>
											<option value="2">2</option>
										</select>
										<span class="exe">매</span>
									</div>
									<!--할인금액-->
									<div class="result">
										<span class="title"> 할인금액 :</span>
										<span class="price">0</span><span class="exe">	원	</span>
									</div>
									<div class="msg2">※ 영화당 할인 1회(최대2매)까지 적용 가능 (청소년,어린이,우대 제외)</div>
								</div><div class="row type2" id="spNobless" style="display: none;">
									<div class="dimmCon" style="display: none;"></div>
									<div class="divider"></div>
									<div class="title name">CGV 노블레스 BLACK CARD</div>
									<div class="msg"></div>
									<div class="card_no"></div>
									<!--보유티켓-->
									<div class="hold_ticket">
										<span class="title">	사용 가능 매수	</span>
										<span class="value">0</span><span class="exe">	매	</span>
									</div>
									<!--사용티켓-->
									<div class="use_ticket">
										<span class="title">적용매수</span>
										<select class="useNum">
											<option value="0">0</option>
											<option value="1">1</option>
											<option value="2">2</option>
										</select>
										<span class="exe">매</span>
									</div>
									<!--할인금액-->
									<div class="result">
										<span class="title"> 할인금액 :</span>
										<span class="price">0</span><span class="exe">	원	</span>
									</div>
									<div class="msg2">※ 영화당 할인 1회(최대2매)까지 적용 가능 (청소년,어린이,우대 제외)</div>
								</div><div class="row type2" id="spCoupleMem" style="display: none;">
									<div class="dimmCon" style="display: none;"></div>
									<div class="divider"></div>
									<div class="title name">커플링 스윗박스 할인</div>
									<div class="msg"></div>
									<div class="card_no"></div>
									<!--보유티켓-->
									<div class="hold_ticket">
										<span class="title">	사용 가능 매수	</span>
										<span class="value">0</span><span class="exe">	매	</span>
									</div>
									<!--사용티켓-->
									<div class="use_ticket">
										<span class="title">적용매수</span>
										<select class="useNum">
											<option value="0">0</option>
											<option value="1">1</option>
											<option value="2">2</option>
										</select>
										<span class="exe">매</span>
									</div>
									<!--할인금액-->
									<div class="result">
										<span class="title"> 할인금액 :</span>
										<span class="price">0</span><span class="exe">	원	</span>
									</div>
									<div class="msg2">※ 커플링 클럽 가입고객은 스윗박스 주중(월~목) 1만원 관람이 가능합니다.<br>※ 일 1회 동반 1인까지 최대 2매 할인 적용이 가능합니다.</div>
								</div></div>
									</div>
								
									<!-- 할인쿠폰 -->
									<!-- 관람권/기프트콘 -->
									<!-- 포인트/상품권 -->
									<!-- 최종결제 -->
									<div id="lastPayMethod">
										<h4 class="ts3_titlebar ts3_t1">
											<span class="header">STEP. </span>
											<span class="title" style="color: #e0e0e0; overflow: visible;">최종결제 수단</span>
										</h4>
										<h4 class="ts3_titlebar ts3_t1" style="display: none;">
											<span class="header">비회원결제</span>
											<span class="desc">비회원 예매는 신용카드 결제만 가능합니다.</span>
										</h4>
										
								<div class="tpm_wrap tpm_last_pay">
									<div class="tpm_body">
										<div>
											<div class="payment_select_guest">일반 신용카드</div><!-- 비회원 카드 결제 -->
											<div class="payment_select radio_group" id="lastPayCon">
												<span style="opacity: 1;">
													<input type="radio" id="last_pay_radio0" name="last_pay_radio" value="0" checked="checked">
													<label for="last_pay_radio0">신용카드 </label>
												</span>
												<span style="opacity: 1;">
													<input type="radio" id="last_pay_radio1" name="last_pay_radio" value="1">
													<label for="last_pay_radio1">휴대폰 결제</label>
												</span>
												<span style="display: none; opacity: 1;">
													<input type="radio" id="last_pay_radio2" name="last_pay_radio" value="2">
													<label for="last_pay_radio2">계좌이체</label>
												</span>
												<span style="opacity: 1;">
													<input type="radio" id="last_pay_radio3" name="last_pay_radio" value="3">
													<label for="last_pay_radio3">간편결제</label>
												</span>
											<span style="opacity: 1;"><input type="radio" name="last_pay_radio" value="4" id="SettleBank_btn"><label for="SettleBank_btn">내통장결제</label></span><span style="opacity: 1;"><input type="radio" name="last_pay_radio" value="5" id="toss_btn"><label for="toss_btn">토스</label></span></div>
											<!-- 2021.05.20 - 최종결제수단 '간편결제' 순서 변경 -->
											<div class="payment_select radio_group" id="smartPayCon" style="display: none;"><span style="opacity: 1;"><input type="radio" name="last_pay_radio2" value="0" id="naverPay_btn"><label for="naverPay_btn">네이버페이</label></span><span style="opacity: 1;"><input type="radio" name="last_pay_radio2" value="1" id="smilePay_btn"><label for="smilePay_btn">스마일페이</label></span><span style="opacity: 1;"><input type="radio" name="last_pay_radio2" value="2" id="SSGPAY_btn"><label for="SSGPAY_btn">SSGPAY</label></span><span style="opacity: 1;"><input type="radio" name="last_pay_radio2" value="3" id="CHAi_btn"><label for="CHAi_btn">차이</label></span><span style="opacity: 1;"><input type="radio" name="last_pay_radio2" value="4" id="payKakao_btn"><label for="payKakao_btn">카카오페이</label></span><span style="opacity: 1;"><input type="radio" name="last_pay_radio2" value="5" id="payPayco_btn"><label for="payPayco_btn">PAYCO</label></span><span style="opacity: 1;"><input type="radio" name="last_pay_radio2" value="6" id="Paycoin_btn"><label for="Paycoin_btn">페이코인</label></span></div>
											<div class="payment_form">
												
								<!-- 신용카드 -->
								<div id="payCredit" class="payment_input payment_card" style="display: block;">
									<div class="table_wrap card_default" style="width: auto; min-height: 210px;">
										<table>
											<caption>신용카드의 종류, 카드번호, 비밀번호, 유효기간, 주민등록번호 입력</caption>
											<thead></thead>
											<tbody>
												<tr id="" style="display: table-row;">
													<th scope="row"><label for="lp_card_type">카드종류</label></th>
													<td><div>
														<div class="form_wrap select card_type form_bg">
															<select id="lp_card_type"><option selected="selected">카드를 선택하세요</option><option card_code="BCC" card_type="1" card_digit="14" card_cd="N0002">BC카드</option><option card_code="DIN" card_type="1" card_digit="14" card_cd="N0005">현대카드</option><option card_code="KEB" card_type="1" card_digit="14" card_cd="N0012">KEB하나카드(구,외환)</option><option card_code="WIN" card_type="1" card_digit="15" card_cd="N0023">삼성카드</option><option card_code="SHB" card_type="1" card_digit="15" card_cd="N0021">신한카드</option><option card_code="CNB" card_type="1" card_digit="16" card_cd="N0004">KB국민카드</option><option card_code="KKB" card_type="1" card_digit="16" card_cd="N0024">카카오뱅크카드</option><option card_code="NLC" card_type="1" card_digit="16" card_cd="N0017">NH카드</option><option card_code="SCB" card_type="1" card_digit="16" card_cd="N0020">스탠다드차타드은행카드</option><option card_code="CIT" card_type="1" card_digit="16" card_cd="N0003">씨티카드</option><option card_code="AMX" card_type="1" card_digit="15" card_cd="N0001">롯데/아멕스카드</option><option card_code="KBK" card_type="1" card_digit="16" card_cd="N0025">K뱅크</option><option card_code="PHB" card_type="1" card_digit="16" card_cd="N0018">우리카드</option><option card_code="SIN" card_type="1" card_digit="16" card_cd="N0022">신세계카드</option><option card_code="HNB" card_type="1" card_digit="14" card_cd="N0006">하나카드(구,하나SK)</option><option card_code="KJB" card_type="1" card_digit="16" card_cd="N0014">광주은행카드</option><option card_code="SAN" card_type="1" card_digit="16" card_cd="N0019">산은캐피탈</option><option card_code="NFF" card_type="1" card_digit="16" card_cd="N0016">수협카드</option><option card_code="KDB" card_type="1" card_digit="16" card_cd="N0011">KDB산업은행카드</option><option card_code="JBB" card_type="1" card_digit="16" card_cd="N0009">전북은행카드</option><option card_code="JJB" card_type="1" card_digit="16" card_cd="N0010">제주은행카드</option><option card_code="KEP" card_type="1" card_digit="16" card_cd="N0013">우체국카드</option><option card_code="MGC" card_type="1" card_digit="16" card_cd="N0015">MG체크카드</option><option card_code="HSC" card_type="1" card_digit="16" card_cd="N0007">KB증권카드(구,현대증권)</option><option card_code="IBK" card_type="1" card_digit="16" card_cd="N0008">기업은행카드</option><option card_code="SSG" card_type="1" card_digit="16" card_cd="N0026">SSG카드</option></select>
														</div>
														<div class="use_point" style="display: none;">
															<input type="checkbox" id="lp_use_point" style="display: none;"><label for="lp_use_point" style="text-decoration: underline;">BC Top 포인트 사용</label>
														</div>
														</div>
													</td>
												</tr>
												<tr class="payment_card_radio_wrap radio_group" style="display: table-row;">
													<td colspan="2">
														<span class="selectType" style="display: inline;">
															<input type="radio" id="payment_card_radio0" name="payment_card_radio" value="0" checked="checked">
															<label for="payment_card_radio0">앱카드</label>
														</span>
														<span class="selectType" style="display: none;">
															<input type="radio" id="payment_card_radio3" name="payment_card_radio" value="3">
															<label for="payment_card_radio3">페이북/ISP</label>
														</span>
														<span class="selectType" style="display: inline;">
															<input type="radio" id="payment_card_radio1" name="payment_card_radio" value="1" checked="checked">
															<label for="payment_card_radio1">일반 신용카드(체크카드 포함)</label>
														</span>
														<span class="selectType" style="display: none;">
															<input type="radio" id="payment_card_radio2" name="payment_card_radio" value="2">
															<label for="payment_card_radio2">즉시할인 신용카드</label>
														</span>	
													</td>
												</tr>
												<tr id="preDiscNm" class="" style="display: none;">
													<th scope="row"><label for="lp_card_no1">카드명</label></th>
													<td>
														<span class="name" style="display: none;"></span>
														<div class="form_wrap select card_type form_bg" style="display: none;"> <select class="preDiscList"></select> </div>
													</td>
												</tr>
												<tr id="input_card_num" style="display: none;">
													<th scope="row"><label for="lp_card_no1">카드번호</label></th>
													<td><div>
														<div class="form_wrap text card_no form_bg">
															<label for="lp_card_no1">카드 번호 첫번째 숫자 입력</label>
															<input id="lp_card_no1" name="cardNo" type="text" maxlength="4" class="type-n nohan">
														</div>
														<span class="divider">-</span>
														<div class="form_wrap text card_no form_bg">
															<label for="lp_card_no2">카드 번호 두번째 숫자 입력</label>
															<input id="lp_card_no2" name="cardNo" type="password" maxlength="4" class="type-n nohan">
														</div>
														<span class="divider">-</span>
														<div class="form_wrap text card_no form_bg">
															<label for="lp_card_no3">카드 번호 세번째 숫자 입력</label>
															<input id="lp_card_no3" name="cardNo" type="password" maxlength="4" class="type-n nohan">
														</div><span class="divider">-</span>
														<div class="form_wrap text card_no form_bg">
															<label for="lp_card_no4">카드 번호 네번째 숫자 입력</label>
															<input id="lp_card_no4" name="cardNo" type="text" maxlength="4" class="type-n nohan">
														</div>
													</div></td>
												</tr>
												
												<tr id="input_card_Expire" style="display: none;">
													<th scope="row"><label for="lp_card_month">유효기간</label></th>
													<td><div>
														<div class="form_wrap text card_date form_bg">
															<label for="lp_card_month">카드 유효기간 월 숫자 입력</label>
															<input id="lp_card_month" name="cardExpd" type="text" maxlength="2" class="type-n nohan">
														</div><span class="string">월</span>
														<div class="form_wrap text card_date form_bg">
															<label for="lp_card_year">카드 유효기간 년도 숫자 입력</label>
															<input id="lp_card_year" name="cardExpd" type="text" maxlength="2" class="type-n nohan">
														</div><span class="string">년</span>
														<div class="expire_ex">예) 2015년 9월 -&gt; 09월 15년</div>
													</div></td>
												</tr>
												
												<tr id="input_card_pw" style="display: none;">
													<th scope="row"><label for="lp_card_pw">비밀번호</label></th>
													<td><div>
														<div class="form_wrap text card_pw form_bg">
															<label for="lp_card_pw">카드 비밀번호 숫자 입력</label>
															<input id="lp_card_pw" name="cardPw" type="password" maxlength="2" class="type-n nohan">
														</div><span class="password">**</span>
													</div></td>
												</tr>
												
												<tr class="input_card_ssn" style="display: none;">
													<th scope="row">
														<span class="ssn">		<label for="lp_card_ssn">법정생년월일 (6자리)</label></span>
														<span class="corporate" style="display: none;"><label for="lp_coporate">사업자<br>등록번호</label></span>
													</th>
													
													<td><div>
														<div class="ssn">
														<div class="form_wrap text card_ssn form_bg">
															<label for="lp_card_ssn">법정생년월일 (6자리)</label>
															<input id="lp_card_ssn" name="ssn" type="password" maxlength="6" class="type-n nohan">
														</div>
														<span class="divider">-</span><span class="password">*******</span>
														</div>
								
														<div class="form_wrap text corporate form_bg" style="display: none;">
															<label for="lp_coporate">법인공용카드 사업자등록번호 10자리 입력</label>
															<input id="lp_coporate" name="corporate" type="text" maxlength="10" class="type-n nohan">
														</div>
															
														<div class="use_coporate_card">
															<input type="checkbox" id="lp_use_coporate_card"><label for="lp_use_coporate_card">법인공용카드 사용</label>
														</div>
													</div></td>
												</tr>
											</tbody>
										</table>
								
										<div class="discount_result">
											<div class="result_reference" style="display: none;">
												<span class="left">＊
													즉시할인혜택이 적용되는 카드는, 즉시할인 신용카드 탭에서 결제하셔야 할인이 적용됩니다.​
												</span>
											</div>
								
											<div class="result_reference" style="display: none;">
												<span class="left">＊
													카드번호와 유효기간을 입력하신 후 조회를 누르시면 할인 금액이 조회됩니다.
												</span>
												<span class="right">
													<a class="brown btn_verify btn_toggle" href="#" onclick="">
														<span class="default">
															조회/적용
														</span>
														<span class="cancel">
															사용취소	
														</span>
													</a>
												</span><!-- right -->
											</div>
											<div class="discount_price" style="display: none;">
												<div class="discount_price_inner">
													<span class="title">
														추가할인금액:
													</span>
													<span class="price discAmt">0</span>
													<span class="won">원</span>
												</div>
											</div>
											<div class="discount_price" style="display: none;">
												<div class="discount_price_inner">
												  <span class="title">
												  		카드결제금액:</span><span class="price payAmt">0</span><span class="won">원</span>
												</div>
											</div>
										</div><!-- discount_result -->
									</div><!-- card_default -->
								
								
									
									<div class="card_explain">
										<ul>
										
											<li class="isp" style="display: none;">선택하신 카드로 결제하려면 ISP 프로그램이 필요합니다. 처음 결제하시는 경우 ISP 프로그램 설치가 진행 됩니다.</li>
											<li class="ssa" style="display: none;">즉시할인/더블적립 혜택이 적용되는 카드는 앱카드 결제 시에도 적용 가능합니다.</li>
											<li class="ssa" style="display: none;">군인권종/동시상영/핫딜/온라인특별요금제/비회원 결제  시 CJONE삼성카드 즉시할인(더블적립) 및 삼성카드 온라인 선할인 적용은 불가합니다.</li>
											<li class="ssa" style="display: none;">통합결제 시 CJONE삼성카드 즉시할인(더블적립) 및 삼성카드 온라인 선할인 적용은 불가합니다.</li>
											<li class="ssa" style="display: none;">타 할인 적용 시 CJONE삼성카드 즉시할인(더블적립) 및 삼성카드 온라인 선할인 적용은 불가합니다. </li>
											<li class="ssa" style="display: none;">카드 할인금액이 3천원 미만일 경우 할인 적용이 불가합니다.</li>
								
											<!-- 
											<li class="bc"><strong>BC Top 포인트</strong> 보유 고객이라면 결제 시 포인트사용 네모 박스 체크 후 보유 포인트로 영화를 결제 할 수 있습니다.<br/>(사용으로 인한 영화 할인 내역은 청구서에서 확인 할 수 있습니다.)</li>
											<li class="bc"><strong>평일(월~금) 예매 시, 월 10회/일 1회 2매까지 장당 2천원 추가 할인</strong>
												<p>- 9,000원 이상 티켓에 한함</p>
												<p>- 법인/기프트 카드 제외, 우대/특별관 예매 시 적용 불가</p>
												<p>- 우대/특별관/Family요금제 적용 시 BC 2천원 할인 제외</p>
												<p>- 2018년 12월 31일까지 할인 가능</p>
											</li> 
											<li class="bc">1,000원 할인 또는 즉시할인 혜택 적용여부는 고객님의 실적 및 할인혜택 사용여부에 따라 적용되지 않을 수 있습니다.</li>
											-->
											<li class="yes" style="display: none;"><strong>외환카드 즉시할인</strong>을 받으시려면, 즉시할인 신용카드 &gt; 외환카드할인을 선택하신 후 결제를 진행해주세요.</li>
											<li class="yes" style="display: none;"><strong>하나머니</strong> 보유 고객이라면 결제 시 포인트 사용 네모 박스 체크 후 보유 포인트로 영화를 결제 할 수 있습니다.<br>(사용으로 인한 영화 할인 내역은 청구서에서 확인 할 수 있습니다.)</li>
											<li class="lt" style="display: none;"><strong>CGV롯데포인트 플러스카드 할인 혜택</strong>을 받으시려면, 즉시할인 신용카드 &gt; 롯데카드 할인을 선택하신 후 결제를 진행해주세요.</li>
											<li class="ct" style="display: none;"><strong>CITI포인트</strong> 보유 고객이라면 결제 시 포인트 사용 네모 박스 체크 후 보유 포인트로 영화를 결제 할 수 있습니다.<br>(사용으로 인한 영화 할인 내역은 청구서에서 확인 할 수 있습니다.)</li>
											<li class="nh" style="display: none;"><strong>NH카드 할인혜택</strong>을 받으시려면, 즉시할인 신용카드 &gt; NH카드 할인을 선택하신 후 결제를 진행해주세요.<br><strong> (현재 페이지에서 결제 시 즉시할인 혜택이 제공되지 않습니다.)</strong> </li>
											<li class="nh" style="display: none;"><strong>NH 채움포인트</strong> 보유고객이라면 결제 시 포인트 사용 '네모박스' 체크 후 보유 포인트로 영화를 결제할 수 있습니다.<br>(사용으로 인한 영화 할인 내역은 청구서로 확인할 수 있습니다.)</li>
											<li class="nh" style="display: none;"><strong>NH 채움포인트</strong> 부족 시 '네모박스' 체크 해제 후 결제 부탁 드립니다</li>
								
											<li class="kb" style="display: none;"><strong>KB 포인트리</strong> 보유 고객이라면 결제 시 포인트사용 네모 박스 체크 후 보유 포인트로 영화를 결제 할 수 있습니다.<br>(사용으로 인한 영화 할인 내역은 청구서에서 확인 할 수 있습니다.)</li>
											<li class="ss" style="display: none;"><strong>CJ ONE 삼성카드 더블적립/할인 혜택</strong>을 받으시려면, 즉시할인 신용카드 &gt; CJ ONE 삼성카드 할인을 선택하신 후 결제를 진행해주세요.</li>
											<li class="ss" style="display: none;"><strong>삼성보너스포인트/S클래스포인트</strong> 보유 고객이라면, 결제 시 포인트 사용 네모 박스 체크 후 보유 포인트로 영화를 결제 할 수 있습니다.<br>(사용으로 인한 영화 할인 내역은 청구서에서 확인 할 수 있습니다.)</li>
											<li class="sh" style="display: none;"><strong>CJ ONE 신한카드 더블적립/할인 혜택</strong>을 받으시려면, 즉시할인 신용카드 &gt; CJ ONE 신한카드 할인을 선택하신 후 결제를 진행해주세요.</li>
											<li class="sh" style="display: none;"><strong>마이신한포인트</strong> 보유 고객이라면, 결제 시 포인트 사용 네모 박스 체크 후 보유 포인트로 영화를 결제 할 수 있습니다.<br>(사용으로 인한 영화 할인 내역은 청구서에서 확인 할 수 있습니다.)<br>단, 포인트 사용 후 기존 카드 할인 적용됩니다.</li>
											<!-- 2021.01.04 - 현대 M포인트 사용 대상 조정 -->
											<li class="hd" style="display: none;">
												<strong>현대카드M포인트DAY</strong><br> 매주 금요일/토요일 5,000M포인트 사용.<br>그 외 요일은 2,000M포인트 사용.
												<!-- 2021.06.01 - 현대 M포인트 프로모션 할인 -->
												<p class="hd_p" style="margin-top: 5px; display: none;">**2021년 5월 9일부터 6월 1일까지 현대 M포인트가 제공하는 특별 찬스!!<br>- 매일매일 6,000원씩 사용하여 티켓할인적용이 가능합니다.</p>
												<p class="hd_p2" style="margin-top: 5px; display: none;">**2021년 6월 2일부터 7월 3일까지 현대 M포인트가 제공하는 특별 찬스!!<br>- 매일매일 5,000원씩 사용하여 티켓할인적용이 가능합니다.</p>
												<p style="color:#0068b7; margin-top:5px;">현대카드 M포인트를 사용하시려면,<br>Step3. 포인트 및 기타결제 수단 &gt; 현대카드 M포인트에서 결제를 진행하시기 바랍니다.</p>
											</li>
											<li class="sc" style="display: none;"><strong>360도 리워드포인트</strong> 보유 고객이라면 결제 시 포인트 사용 네모 박스 체크 후 보유 포인트로 영화를 결제 할 수 있습니다.<br>(사용으로 인한 영화 할인 내역은 청구서에서 확인 할 수 있습니다.)</li>
											<li class="hnb" style="display: none;"><strong>하나머니</strong> 보유고객이라면 결제 시 ‘하나머니 사용’ 네모박스 체크 후 보유 포인트로 영화를 결제할 수 있습니다.<br>(사용으로 인한 영화 할인 내역은 청구서로 확인할 수 있습니다.)</li>
											<li class="nhsale" style="display: none;">
												최종 결제 금액 <strong>8,000원 이상</strong> 시 1천원 할인 제공<br>
												( 최대 2매까지 적용, 일 1회, 월4회 限) 단, 조조, 청소년, 4DX, SoundX 등 특화관 제외 )</li>
											<li class="nhsale" style="display: none;"><strong>예매일 이후 취소</strong> 진행 시, 할인횟수 한도 복원에 <strong>2~3일 소요</strong>될 수 있습니다. (관련 문의 1588 - 1600)</li>
											<li class="nhsale" style="display: none;">일부카드(천·지·인, TAKE 5, 패밀리카드)에 한해 청구할인이 유지되며, 상세 이용기준은 NH농협카드 홈페이지 참조 요망</li>
											<li class="nhsale" style="display: none;"><strong>NH 채움포인트</strong> 보유고객이라면 결제 시 포인트 사용 '네모박스' 체크 후 보유 포인트로 영화를 결제할 수 있습니다.<br>(사용으로 인한 영화 할인 내역은 청구서로 확인할 수 있습니다.)</li>
											<li class="nhsale" style="display: none;"><strong>NH 채움포인트</strong> 부족 시 '네모박스' 체크 해제 후 결제 부탁 드립니다</li>
											<!-- 우리카드 PLCC 즉시할인 카드 -->
											<li class="phb" style="display: none;">CGV 우리카드로 결제 시 제공되는 혜택입니다.</li>
											<li class="phb" style="display: none;">티켓 1매 무료할인이 우선 적용됩니다.</li>
											<li class="phb" style="display: none;">티켓 1매 무료할인 결제 이력이 있을 경우 5천원 즉시할인이 적용됩니다.</li>
											<li class="phb" style="display: none;">월 할인 횟수를 모두 사용했을 경우, ISP 탭에서 결제해 주세요.</li>
											<li class="phb" style="display: none;">카드번호 및 유효기간은 우리카드 APP 내 'MY' - '보유카드조회' 에서 확인 가능합니다.</li>
											<li class="phb" style="display: none;">1매 예매 시, CGV 및 타 할인쿠폰 / 포인트 중복 적용이 불가합니다.</li>
										
										</ul>
									</div>
									<div class="payment_input_exp" id="savePointCon">
										<span>※ 
											신용카드 결제 가능 최소 금액은 1,000원 이상입니다.</span>
										<span>
											<span class="desc">
											<a href="#" onclick="" class="btn_savePoint">삼성U포인트 적립</a>&nbsp;&nbsp;<a href="#" onclick="" class="btn_savePoint">OK캐쉬백 적립</a>&nbsp;&nbsp;&nbsp;&nbsp;
											</span><br>
											<span class="option">
											(삼성U포인트, OK캐쉬백 포인트는 포인트 중복 적립 불가)
											</span>
										</span>
										<!--
										<div class="buttons">
											<a class="btn_okcashbag" href="#" onclick=""><span>OK캐쉬백 번호 입력</span></a>
											<a class="btn_samsung_upoint" href="#" onclick=""><span>삼성 U포인트 번호 입력</span></a>
										</div>
										-->
									</div>
									<div class="banner_wrap" style="display: none;"><a target="_blank" href=""><img src="" alt="" style="visibility: hidden;"></a></div>
								</div>
								<!-- 신용카드 --><!-- 휴대폰 -->
								<div id="payPhone" class="payment_input" style="display: none;">
									<div class="table_wrap">
										<table>
											<caption>휴대폰 번호, 주민등록번호, 결제금액 입력 및 약관 동의</caption>
												<thead></thead>
												<tbody>
													<tr id="phone_price_row">
														<th scope="row">결제금액</th>
														<td>
															<div>
																<span class="string2 amount" style="font-size: 1.5em; font-weight:bold;">15,000</span>
																<span class="string2">원</span>
															</div>
														</td>
													</tr>
													<tr>
														<th scope="row">상품명</th>
														<td>영화티켓예매</td>
													</tr>
												</tbody>
											</table>
										</div>
										
										<div class="payment_transfer">
											<div class="table_wrap transfer_wrap">
												<h6>휴대폰 결제 순서</h6>
												<div class="paymentNotice">
													1. 우측 하단에 있는 "결제하기" 버튼 클릭해주세요.<br>
													2. 예매내역 확인 후 결제하기 버튼 클릭 시 결제 팝업창이 뜹니다.<br>
													3. 해당 팝업에서 통신사 선택 후 정보를 입력해주세요.
													<br><br>
													<b style="color:red">※ 휴대폰 결제 진행시 원할한 사용을 위하여 다음 사항을 꼭 확인하세요.</b><br>
													 * 팝업 차단 설정을 꼭 해제하셔야 합니다. (도구→팝업 차단 끄기)<br>
													 * 팝업 차단 해제 시, 웹 브라우저 새로고침으로 인하여 최대 10분 동안 동일 좌석 선택이 제한 될 수 있습니다.<br>
												</div>
											</div>
										</div>
										
								</div>
								<!-- 휴대폰 --><!-- 계좌이체 -->
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
													<span class="num verdana" id="summary_total_amount">15,000</span><span class="won">원</span>
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
											<div class="payment_body" id="summary_payment_list"><dl><dt>신용카드</dt><dd><span class="num">15,000</span><span class="won">원</span></dd></dl></div>
											<div class="payment_footer">
												<div class="label">
													<span>남은 결제금액</span>
												</div>
												<div class="result">
													<span class="num verdana" id="summary_payment_total">15,000</span><span class="won">원</span>
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
						<a class="btn-left" href="#" onclick="OnTnbLeftClick();" title="좌석선택">이전단계로 이동</a>
						<div class="info movie">
							<span class="movie_poster"><img src="http://img.cgv.co.kr/Movie/Thumbnail/Poster/000085/85465/85465_185.JPG" alt="영화 포스터" style="display: inline;"></span>
							<div class="row movie_title colspan2" style="display: block;">
								<span class="data letter-spacing-min ellipsis-line2"><a href="http://www.cgv.co.kr/movies/detail-view/?midx=85465" target="_blank" onmousedown="javascript:logClick('SUMMARY/영화상세보기');" title="비상선언">${dto.mNameKor}</a></span>
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
						<a class="btn-right on" id="tnb_step_btn_right" href="../purchase/afterTicketingView.html" onclick="OnTnbRightClick(); " title="결제하기">다음단계로 이동 - 레이어로 서비스 되기 때문에 가상커서를 해지(Ctrl+Shift+F12)한 후 사용합니다.</a>
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
관람 에티켓을 위한 사전 입장 부탁드립니다.</li>
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
</body>
</html>