<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%> 

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ page session="false" %>
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
	<link rel="stylesheet" type="text/css" href="/resources/css/user/base.css">
	<link rel="stylesheet" type="text/css" href="/resources/css/user/participate.css">
	<link rel="stylesheet" href="//code.jquery.com/ui/1.13.2/themes/base/jquery-ui.css">
	<link rel="stylesheet" href="/resources/demos/style.css">
	<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
	<script src="https://code.jquery.com/ui/1.13.2/jquery-ui.js"></script>
</head>
<body>

<!-- start -->
	<%@include file = "../../../infra/common/user/mainHeader.jsp" %>
		<!-- container -->
		<div id="bodyWrap">
			<div class="contnetsWrap">
				<form name="form" method="post">
					<c:set var="listCodeEmail" value="${CodeServiceImpl.selectListCachedCode('12')}"/>
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
														<input type="text" placeholder="이름을 입력하시오" autocomplete="off" style="margin-left: -560px; width: 180px;" name="ifMmName">
													</td>													
												</tr>
												<tr>
													<th scope="row">아이디</th>
													<td><input type="text" placeholder="아이디를 입력하시오" autocomplete="off" style="margin-left: -560px; width: 180px;" name="ifMmId" id="ifMmId"></td>													
												</tr>
												<tr>
													<th scope="row">비밀번호</th>
													<td><input type="text" placeholder="비밀번호를 입력하시오" autocomplete="off" style="margin-left: -560px; width: 180px;" name="ifMmPassword"></td>													
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
																<input type="text" class="text small" placeholder="이메일 아이디를 입력하시오" data-format="email" autocomplete="off" name="ifMmEmail">
															</span>
															<span class="symbol">@</span>
															<span class="input_txt w110">
                                                                <input type="text" class="text small" title="이메일 도메인 입력" placeholder="이메일 도메인" data-format="email" name="email_addr2" id="email_addr2" value="naver.com" autocomplete="off">
                                                            </span>
                                                            <span class="select w100 hide" data-skin="form">
	                                                            <select title="이메일 도메인 선택" data-control="emailSelector" name="email_addr_opt" id="email_addr_opt">
		                                                            <option value="0">직접입력</option>
		                                                            <c:forEach items="${listCodeEmail}" var="listEmail" varStatus="statusEmail">
																	<option value="${listEmail.ccSeq}" <c:if test="${item.ifMmTel eq listTel.ccSeq}">selected</c:if>>${listTel.ccCodeName}</option>
																</c:forEach>
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
		  <!-- S Footer -->
		<!-- footer_area (s) -->
		<%@include file = "../../../infra/common/user/mainFooter.jsp" %>
		<!-- footer_area (s) -->
	<script>
	$("#ifMmId").on("focusout", function(){
				$.ajax({
					async: true 
					,cache: false
					,type: "post"
					,dataType:"json" 
					,url: "/member/checkId"
					,data : { "ifMmId" : $("#ifMmId").val() }
					,success: function(response) {
						if(response.rt == "success") {
							document.getElementById("ifmmIdFeedback").innerText = "사용 가능 합니다.";
							
						} else {
							document.getElementById("ifmmIdFeedback").innerText = "사용 불가능 합니다";
						}
					}
					,error : function(jqXHR, textStatus, errorThrown){
						alert("ajaxUpdate " + jqXHR.textStatus + " : " + jqXHR.errorThrown);
					}
				});
		});
	</script>
<!-- end -->
</body>
</html>