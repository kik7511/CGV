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
	<link rel="stylesheet" type="text/css" href="/resources/css/user/reservation_step3_popup.css">
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
								<a class="button button-reservation-restart" href="#"></a>
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
													<li class="rating-12 selected" data-index="2" movie_cd_group="" movie_idx="">
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
																	<li class="selected" data-index="1" areaindex="0" theater_cd="0056" rating_cd="undefined" style="display: list-item;">
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
							</div>
						</div>
					</div>
				</div>
				<div id="ticket_tnb" class="tnb_container ">
					<div class="tnb step1">
						<!-- btn-left -->
						<a class="btn-left" href="#" onclick="OnTnbLeftClick();" title="영화선택">이전단계로 이동</a>
						<div class="info movie">
							<span class="movie_poster"><img src="" alt="영화 포스터" style="display: none;"></span>
							<div class="row movie_title colspan2" style="display: none;">
								<span class="data letter-spacing-min ellipsis-line2"><a href="#" target="_blank" onmousedown="javascript:logClick('SUMMARY/영화상세보기');">영화정보 상세보기</a></span>
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
								<span class="data letter-spacing-min ellipsis-line1"><a href="#" target="_blank" onmousedown="javascript:logClick('SUMMARY/극장상세보기');"><span class="sreader">극장정보 상세보기</span></a></span>
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
							<div class="row seat_name">
								<span class="header">좌석명</span>
								<span class="data">일반석</span>
							</div>
							<div class="row seat_no colspan3">
								<span class="header">좌석번호</span>
								<span class="data ellipsis-line3"></span>
							</div>
							<div class="placeholder" title="좌석선택"></div>
						</div>
						<div class="info payment-ticket">
							<div class="row payment-millitary">
								<span class="header">군인</span>
								<span class="data"><span class="price"></span>원 x <span class="quantity"></span></span>
							</div>
							<div class="row payment-adult">
								<span class="header">일반</span>
								<span class="data"><span class="price"></span>원 x <span class="quantity"></span></span>
							</div>
							<div class="row payment-youth">
								<span class="header">청소년</span>
								<span class="data"><span class="price"></span>원 x <span class="quantity"></span></span>
							</div>
							<div class="row payment-child">
								<span class="header">어린이</span>
								<span class="data"><span class="price"></span>원 x <span class="quantity"></span></span>
							</div>						
							<div class="row payment-senior">
								<span class="header">경로</span>
								<span class="data"><span class="price"></span>원 x <span class="quantity"></span></span>
							</div>
							<div class="row payment-special">
								<span class="header">우대</span>
								<span class="data"><span class="price"></span>원 x <span class="quantity"></span></span>
							</div>
							<div class="row payment-final">
								<span class="header">총금액</span>
								<span class="data"><span class="price">0</span><span class="won">원</span></span>
							</div>
						</div>
						<div class="info path">
							<div class="row colspan4">
								<span class="path-step2" title="좌석선택">&nbsp;</span>
								<span class="path-step3" title="결제">&nbsp;</span>
							</div>
						</div>
						<!-- btn-right -->
						<div class="tnb_step_btn_right_before" id="tnb_step_btn_right_before"></div>
						<a class="btn-right" id="tnb_step_btn_right" href="../purchase/paymentForm.html" onclick="OnTnbRightClick();" title="좌석선택">다음단계로 이동 - 레이어로 서비스 되기 때문에 가상커서를 해지(Ctrl+Shift+F12)한 후 사용합니다.</a>
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