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
	<link rel="stylesheet" type="text/css" href="/resources/css/user/base.css">
	<link rel="stylesheet" type="text/css" href="/resources/css/user/participate.css">
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
						<li><a href="../member/loginForm.html"><img src="/resources/images/user/loginPassword.png" alt="로그인"><span>로그인</span></a></li>
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
								<a href="../main/formview.html">홈</a>
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
		<div id="bodyWrap">
			<div class="contnetsWrap">
				<form action="" method="post">
					<div id="contents">
						<div class="cont_header">
							<h1 class="h1_tit">회원 가입</h1>
						</div>
						<div class="cont_area">
							<div class="mypage_sec">
								<div class="member_info">
									<div class="table_header">
										<h3 class="h3_tit" style="text-align: left; background: url('#');">기본정보</h3>
									</div>
									<div class="table_col">
										<table>
											<colgroup>
												<col style="width: 25%;">
												<col>
											</colgroup>
											<tbody">
												<tr class="input">
													<th scope="row">이름</th>
													<td>
														<input type="text" placeholder="이름을 입력하시오" autocomplete="off" style="margin-left: -560px; width: 180px;">
													</td>													
												</tr>
												<tr>
													<th scope="row">아이디</th>
													<td><input type="text" placeholder="아이디를 입력하시오" autocomplete="off" style="margin-left: -560px; width: 180px;"></td>													
												</tr>
												<tr>
													<th scope="row">비밀번호</th>
													<td><input type="text" placeholder="비밀번호를 입력하시오" autocomplete="off" style="margin-left: -560px; width: 180px;"></td>													
												</tr>
												<tr>
													<th scope="row">비밀번호 확인</th>
													<td><input type="text" placeholder="비밀번호를 입력하시오" autocomplete="off" style="margin-left: -560px; width: 180px;"></td>													
												</tr>
												<tr>
													<th scope="row">이메일</th>
													<td>
														<div class="email_write" style="margin-left: -343px;">
															<span class="input_txt w110" data-skin="form">
																<input type="text" class="text small" placeholder="이메일 아이디를 입력하시오" data-format="email" autocomplete="off">
															</span>
															<span class="symbol">@</span>
															<span class="input_txt w110">
                                                                <input type="text" class="text small" title="이메일 도메인 입력" placeholder="이메일 도메인" data-format="email" name="email_addr2" id="email_addr2" value="naver.com" autocomplete="off">
                                                            </span>
                                                            <span class="select w100 hide" data-skin="form">
	                                                            <select title="이메일 도메인 선택" data-control="emailSelector" name="email_addr_opt" id="email_addr_opt">
		                                                            <option value="0">직접입력</option>
		                                                            <option value="naver.com" selected="selected">네이버</option>
		                                                            <option value="hanmail.net">한메일</option>
		                                                            <option value="nate.com">네이트</option>
		                                                            <option value="gmail.com">지메일</option>
	                                                            </select>
                                                            </span>
                                                            <div class="select_wrap w100" style="background-color:rgb(235,235,228)">
                                                            	<div class="item_seleced"> 
                                                            		<a href="#naver.com" title="이메일 도메인 선택 목록 열기" data-title="이메일 도메인 선택" class="">네이버<span class="haze">선택됨</span></a>
                                                           		</div>	
                                                           		<div class="item_list_wrap ">
	                                                          		<div class="item_list ui_scrollarea">
	                                                          			<ul class="ui_content">
	                                                          				<li>
	                                                          					<a href="#0"><span>직접입력</span></a>
	                                                         				</li>
	                                                         				<li>
	                                                         					<a href="#naver.com"><span>네이버</span></a>
	                                                        				</li>
	                                                        				<li>
	                                                        					<a href="#hanmail.net"><span>한메일</span></a>
	                                                        				</li>
	                                                        				<li>
	                                                        					<a href="#nate.com"><span>네이트</span></a>
	                                                        				</li>
	                                                        				<li>
	                                                        					<a href="#gmail.com"><span>지메일</span></a>
		                                                       				</li>
		                                                       			</ul>
		                                                       		</div>
		                                                       		<div class="scroll ui_scrollbar">
		                                                       			<span class="bg_top"></span>
		                                                       			<span class="bg bg_mid" style="display: none;"></span>
		                                                       			<span class="bg_btm"></span>
		                                                       		</div>
	                                                    	   	</div>
                                                        	</div>
														</div>
													</td>		
												</tr>
												<tr>
													<th scope="row">생년월일</th>
													<td><input type="text" placeholder="날짜를 입력하시오" autocomplete="off" style="margin-left: -560px; width: 180px;"></td>													
												</tr>
											</tbody>
										</table>
									</div>
									<div class="table_header choice">
										<h3 class="h3_tit" style="background: url('#'); text-align: left;">정보제공 동의여부</h3>
									</div>
									<div class="table_col">
										<table>
											<colgroup>
												<col style="width:25%">
												<col>
											</colgroup>
											<tbody>
												<!-- CJ ONE 마케팅 동의-->
												<tr>
													<th scope="row">개인정보 수집 활용 동의</th>
													<td>
														<div style="text-align: left; padding-top: 5px;">
															<input type="checkbox" id="checkinfoY">
															<label for="checkinfoY">동의</label>
															<input type="checkbox" id="checkinfoN">
															<label for="checkinfoN">미동의</label>
														</div>
													</td>
												</tr>
												<tr>
													<th scope="row">마케팅 및 이벤트 관련정보 <br> 메일 수신 동의</th>
													<td>
														<div style="text-align: left; padding-top: 14px;">
															<input type="checkbox" id="checkmarketingY">
															<label for="checkinfoY">동의</label>
															<input type="checkbox" id="checkmarketingN">
															<label for="checkinfoN">미동의</label>
														</div>
													</td>
												</tr>
												
											</tbody>
										</table>
									</div>									
									<div class="btn_sec btn_center">
										<button type="button" class="btn" id="btn_cancel">취소</button>
										<button type="submit" class="btn btn_em" id="btn_submit">가입</button>
									</div>
								</div>
							</div>												
						</div>
					</div>
				</form>
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