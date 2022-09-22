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
        

		<!-- Contents Area -->
		 <div id="contents" class="">
        
            
            <!-- Contents Start -->
			

			<!-- 실컨텐츠 시작 -->
			<div class="wrap-login">    
			    <div class="sect-user">
			        <ul class="tab-menu-round">
			            <li class="on">
			                <a href="/user/login/find-account.aspx">아이디 찾기</a>
			            </li>
			            <li>
			                <a href="/user/login/find-pw.aspx?act=pw">비밀번호 찾기</a>
			            </li>
			        </ul>
			
			        <h3>아이디 찾기</h3>
			        <p>아이디가 기억나지 않으세요? 원하시는 방법을 선택하여 아이디를 확인하실 수 있습니다. <br>
					본인인증 시 제공되는 정보는 해당 인증기관에서 직접 수집 하며, 인증 이외의 용도로 이용 또는 저장하지 않습니다.</p>
			
			       
			        <div class="cols-enterform find_0826 find_2way">
			            <div class="col-confirm">
			                <h4>아이디 찾기</h4>
			                <div class="box-confirm">
			                    <h5>인증기관을 통해 본인인증 후 아이디 찾기를 할 수 있습니다.<br>
			                    아래에서 원하시는 인증방법을 선택하여 주세요.</h5>
			                    <div class="confirm-type">   
			                        <div class="type1_ipin">
			                            <h5>아이핀으로 찾기</h5>
			                            <p>아이핀이 없으시더라도 신규 발급받아 바로 이용할 수 있습니다.</p>
			                            <form id="form2" method="post" novalidate="novalidate" action="">
			                                <input type="hidden" id="isUserIDI" name="isUserIDI" value="">
			                                 <!-- 기존 인풋 주석 처리 해놓았습니다! 수정된 UI는 인풋 텍스트 칸 없이 아이핀인증으로 확인, 휴대폰인증으로 확인 버튼만 노출됩니다.
			                                
			                                     -->
			                                <button type="submit" title="새창" class="round gray" id="btn_find_ipin"><span>아이핀인증으로 확인</span></button>
			                            </form>
			                        </div>                     
			                        <div class="type2_cellphone">
			                            <h5>휴대폰으로 찾기</h5>
			                            <p>&nbsp;</p>
			                            <form id="form3" name="form3" novalidate="novalidate" action="">
			                             <input type="hidden" id="isUserID" name="isUserID" value="">
			                                <!-- 기존 인풋 주석 처리 해놓았습니다! 수정된 UI는 인풋 텍스트 칸 없이 아이핀인증으로 확인, 휴대폰인증으로 확인 버튼만 노출됩니다.
			                                
			                                    -->
			                                <button type="submit" title="새창" class="round gray" id="btn_find_nice"><span>휴대폰인증으로 확인</span></button>
			                            </form>
			                        </div>
			                    </div>
			                </div>
			            </div>
			        </div>
			    </div>    
			    <div class="sect-loginguide">
			        <dl class="box-operationguide">
			            <dt>이용문의</dt>
			            <dd>CGV 고객센터 : 1544-1122</dd>
			            <dd>문의 가능 시간 : 월~금 09:00~18:00 (이 외 시간은 자동 응답 안내 가능)</dd>
			        </dl>
			    </div>
			</div>
			<!-- 실컨텐츠 끝 -->
			
			<!-- find id -->
			<form name="frmFindAccount" id="frmFindAccount" method="post" action="" novalidate="novalidate">
			    <input type="hidden" id="username" name="username">
			    <input type="hidden" id="userid" name="userid">
			    <input type="hidden" id="birthday" name="birthday">
				<input type="hidden" id="mobile1" name="mobile1">
				<input type="hidden" id="mobile2" name="mobile2">
				<input type="hidden" id="mobile3" name="mobile3"> 
				<input type="hidden" id="act" name="act" value="id">
			</form>
			<!-- //find id -->
			
			<form name="frmFindAccountAuth" id="frmFindAccountAuth" method="post" action="" novalidate="novalidate">
			    <input type="hidden" id="authType" name="authType">
			    <input type="hidden" id="userid" name="userid">
			    <input type="hidden" name="act" value="id">
			</form>
			
			<script type="text/javascript" src="https://img.cgv.co.kr/R2014//js/system/crypto.js"></script>
			<script type="text/javascript">
			//<![CDATA[
			
			    (function ($) {
			        $(function () {
			                  // alert($('#isUseID').val());
			           
			
			            var $frm = $('#form1');
			            
			            $frm.validate({
			                submitHandler: function (form) {
			
			                    var $AccountFrm = $('#frmFindAccount');
			
			                
			
			                    $AccountFrm.find('#username').val(app.crypto.AESEncryptToBase64($frm.find('#txtName').val()));
			                    
			                    $AccountFrm.find('#birthday').val(app.crypto.AESEncryptToBase64($frm.find('#txtBirthday').val()));
			                    $AccountFrm.find('#mobile1').val(app.crypto.AESEncryptToBase64($frm.find('#txtMobile1').val()));
			                    $AccountFrm.find('#mobile2').val(app.crypto.AESEncryptToBase64($frm.find('#txtMobile2').val()));
			                    $AccountFrm.find('#mobile3').val(app.crypto.AESEncryptToBase64($frm.find('#txtMobile3').val()));
			
			                    $AccountFrm.submit();
			                    return false;
			                }
			            });
			
			            //IPIN 인증
			            var $frm2 = $('#form2');
			            $frm2.validate({
			                submitHandler: function (form) {
			
			                               
			
			                    var $AccountFrm = $('#frmFindAccountAuth');
			                    $AccountFrm.find('#authType').val('ipin');
			                   // 
			                    
			
			                    var winTargetName = "popupIPIN";
			                    $AccountFrm.attr('target', winTargetName);
			
			                    var winPop = window.open('about:blank', winTargetName, 'width=450, height=550, top=100, left=100, fullscreen=no, menubar=no, status=no, toolbar=no, titlebar=yes, location=no, scrollbar=no');
			                    $AccountFrm.submit();
			                    winPop.focus();
			
			                    return false;
			                }
			            });
			
			            //휴대폰 인증
			            var $frm3 = $('#form3');
			            $frm3.validate({
			                submitHandler: function (form) {
			                
			
			                    var $AccountFrm = $('#frmFindAccountAuth');
			                    $AccountFrm.find('#authType').val('nice');
			                 //   
			
			                    
			
			                    var winTargetName = "popupNICE";
			                    $AccountFrm.attr('target', winTargetName);
			
			                    var winPop = window.open('about:blank', winTargetName, 'width=500, height=470, top=100, left=100, fullscreen=no, menubar=no, status=no, toolbar=no, titlebar=yes, location=no, scrollbar=no');
			                    $AccountFrm.submit();
			                    winPop.focus();
			                                       
			                    return false;
			                }
			            });
			        });
			    })(jQuery);
			//]]>
			</script>
			            <!--/ Contents End -->
					 </div>
					<!-- /Contents Area -->
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