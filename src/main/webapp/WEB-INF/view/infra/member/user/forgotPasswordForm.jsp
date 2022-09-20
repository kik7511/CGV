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
			                    <li>
			                        <a href="/user/login/find-account.aspx">아이디 찾기</a>
			                    </li>
			                    <li class="on">
			                        <a href="/user/login/find-pw.aspx?act=pw">비밀번호 찾기</a>
			                    </li>
			                </ul>
			
			                <h3>비밀번호 찾기</h3>
			                <p>
			                    비밀번호가 기억나지 않으세요? 원하시는 방법을 선택하여 비밀번호를 재설정하실 수 있습니다. <br>
			                    본인인증 시 제공되는 정보는 해당 인증기관에서 직접 수집 하며, 인증 이외의 용도로 이용 또는 저장하지 않습니다.    
			                </p>
			
			        <!-- ******************************************** 수정된 부분 시작! ******************************************** -->
			                        <div class="cols-enterform find_0826 find_pw_id">
			                            <div class="col-confirm">
			                                <h4>비밀번호 재설정</h4>
			                                <div class="box-confirm">
			                                   <h5>비밀번호를 재설정할 아이디를 입력해주세요.</h5>
			                                   <form id="form1" name="form1" method="post" novalidate="novalidate" action="">
			                                       <label for="input_findpw_id">아이디</label>
			                                       <input type="text" id="txtUserId" name="txtUserId">
			                                       <button type="submit" id="submit" class="round inred btn_type_red" title="조회"><span>조회</span></button>
			                                   </form>
			                                </div>
			                            </div>
			                        </div>
			                    </div>
			   <!-- ******************************************** 수정된 부분 끝! ******************************************** -->
			    </div>    
			    <div class="sect-loginguide">
			        <dl class="box-operationguide">
			            <dt>이용문의</dt>
			            <dd>CGV 고객센터 : 1544-1122</dd>
			            <dd>상담 가능 시간 : 월~금 09:00~18:00 (이 외 시간은 자동 응답 안내 가능)</dd>
			        </dl>
			    </div>
			</div>
			<!-- 실컨텐츠 끝 -->
			
			<!-- find id -->
			<form name="frmFindAccount" id="frmFindAccount" method="post" action="https://www.cgv.co.kr/user/login/find-pw-proc.aspx" novalidate="novalidate">   
			    <input type="hidden" id="userid" name="userid"> 
			</form>
			<!-- //find id -->
			
			<script type="text/javascript" src="https://img.cgv.co.kr/R2014//js/system/crypto.js"></script>
			<script type="text/javascript">
			//<![CDATA[
			
			    (function ($) {
			        $(function () {
			
			            var $frm = $('#form1');
			
			            $frm.validate({
			                submitHandler: function (form) {
			
			                    var strUserID = $.trim($("#txtUserId").val());
			                    
			                    if (strUserID.length == 0) {
			                        alert("아이디를 입력해 주세요.");
			                        return false;
			                    }
			
			                    var $AccountFrm = $('#frmFindAccount');
			
			                    $AccountFrm.find('#userid').val(app.crypto.AESEncryptToBase64($frm.find('#txtUserId').val()));
			
			                    $AccountFrm.submit();
			                    return false;
			                }
			            });
			
			
			
			
			        });
			    })(jQuery);
			//]]>
			</script>
			
			            
			            <!--/ Contents End -->
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