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
	<link rel="stylesheet" href="//code.jquery.com/ui/1.13.2/themes/base/jquery-ui.css">
	<link rel="stylesheet" href="/resources/demos/style.css">
	<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
	<script src="https://code.jquery.com/ui/1.13.2/jquery-ui.js"></script>
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
					 	<a href=""><img src="/resources/images/user/logoRed.png" alt="CGV"></a>
					 </h1>
					 
				<!-- /Advertisement -->
				 
					<ul class="memberInfo_wrap">
						<li><a href=""><img src="/resources/images/user/loginPassword.png" alt="로그인"><span>로그인</span></a></li>
						<li><a href=""><img src="/resources/images/user/loginJoin.png" alt="회원가입"><span>회원가입</span></a></li>
						<li><a href=""><img src="/resources/images/user/loginMember.png" alt="MY CGV"><span>MY CGV</span></a></li>
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
								<a href="">홈</a>
							</h2>
						</li>
						<li>
							<h2>
								<a href="">영화</a>
							</h2>
						</li>
						<li>
							<h2>
								<a href=""><strong>예매</strong></a>
							</h2>
						</li>
						<li></li>
						<li></li>
					</ul>
				</div>
			</div>
		</div>
		<!-- E Header -->
		<!-- S Contaniner -->
		<div id="contaniner" class=""><!-- 벽돌 배경이미지 사용 시 class="bg-bricks" 적용 / 배경이미지가 없을 경우 class 삭제  -->
			<!-- Contents Area -->
		 	<div id="contents" class="">
            <!-- Contents Start -->
				<!-- 실컨텐츠 시작 -->
				<div class="wrap-login">
    				<div class="sect-login">
        				<div class="box-login">
            				<h3 class="hidden">회원 로그인</h3>
				            <form id="form1" method="post" action="#" novalidate="novalidate">
					            <fieldset style="text-align: center;">
					                <legend>회원 로그인</legend>
					                <p style="font-size: 120%; margin-left: -130px;">아이디 비밀번호를 입력하신 후, 로그인 버튼을 클릭해 주세요.</p>
					                <div class="login" align="center" style="margin-left: -120px;">
					                    <input type="text" title="아이디" id="txtUserId" name="txtUserId" data-title="아이디를 " data-message="입력하세요." required="required">
					                    <input type="password" title="패스워드" id="txtPassword" name="txtPassword" data-title="패스워드를 " data-message="입력하세요." required="required">
					                </div>
					                <div class="save-id" style="margin-left: 202px; padding-top: 5px;"> 
					                	<input type="checkbox" id="loginSet"><label for="save_id">아이디 저장</label>
					                </div>
					                <button type="submit" id="submit" title="로그인" style="margin-left: -120px;"><span>로그인</span></button>
					                <div class="login-option" style="margin-left: 215px;">
					                    <a href="/user/login/find-account.aspx">아이디 찾기</a>
					                    <a href="/user/login/find-pw.aspx?act=pw">비밀번호 찾기</a>
					                </div>
					            </fieldset>
				            </form>  
							<div align="center">
								<a href=";" class="btn_loginNaver" style="margin-left: -120px;"><img src="https://img.cgv.co.kr/image_gt/login/btn_loginNaver.jpg" alt="네이버 로그인"></a>
							</div>
				        </div>
   					 </div>    
				    <div class="sect-loginguide">
				        <div class="box-useguide">
				            <strong>CJ ONE 회원이 아니신가요?</strong>
				            <span>회원가입하시고 다양한 혜택을 누리세요!</span>
				            <strong>
				                <a title="새창" target="_blank" href="https://www.cjone.com/cjmweb/join.do?coopco_cd=7010&amp;brnd_cd=1000" class="round red"><span>CJ ONE 회원가입하기</span></a>
				            </strong>
				            <em>
				                
				            </em>
				            <em>
				                <a href="http://www.cjone.com/cjmweb/about-cjone.do" class="round black" target="_blank"><span>CJ ONE 멤버십이란?</span></a>
				            </em>
				        </div>
				    </div>
				</div>
<!-- 실컨텐츠 끝 --> 

<!-- LogIn -->
<form name="loginform" id="loginform" method="post" action="https://www.cgv.co.kr/user/login/login.aspx" novalidate="novalidate">
	<input type="hidden" name="id" id="id">
	<input type="hidden" name="password" id="password">
    <input type="hidden" name="id_save" id="id_save">
	<input type="hidden" name="returnURL" value="https://www.cgv.co.kr/default.aspx">
</form>
<!-- //LogIn -->

<script type="text/javascript" src="https://img.cgv.co.kr/R2014//js/system/crypto.js"></script>
<script type="text/javascript">
//<![CDATA[
    (function ($) {
        $(function () {


            var $frm = $('#form1');
            $frm.validate({
                submitHandler: function (form) {
                    var $loginFrm = $('#loginform');


                    $loginFrm.find('#id').val(app.crypto.AESEncryptToBase64($frm.find('#txtUserId').val()));
                    $loginFrm.find('#password').val(app.crypto.AESEncryptToBase64($frm.find('#txtPassword').val()));

                    $loginFrm.submit();
                    return false;
                }
            });



            // 저장된 쿠키값을 가져와서 ID 칸에 넣어준다. 없으면 공백으로 들어감.
            var userInputId = getCookie("cgv.cookie.UserID_RE=UserID_RE");
            $("input[name='txtUserId']").val(userInputId);

            if (userInputId != '') {
                $("#loginSet").prop('checked', true);
                $("#loginSet").attr('checked', true);
            }

            $("#loginSet").change(function () {
                if ($("#loginSet").is(":checked")) {
                    if ($("input[name='txtUserId']").val() == '') {
                        alert("아이디를 입력하세요.");
                        $("#loginSet").prop('checked', false);
                        $("#loginSet").attr('checked', false);                   
                        return false;
                    }

                    setCookie("cgv.cookie.UserID_RE=UserID_RE", $("#txtUserId").val(), 7);
                }
                else {
                    setCookie("cgv.cookie.UserID_RE=UserID_RE", "", -1);
                    $("input[name='txtUserId']").val('');
                }
            });

            function setCookie(cookieName, value, exdays) {

                var exdate = new Date();
                exdate.setDate(exdate.getDate() + exdays);
                var cookieValue = escape(value) + ((exdays == null) ? "" : "; expires=" + exdate.toGMTString());
                document.cookie = cookieName + "=" + cookieValue;
            }

            function deleteCookie(cookieName) {
                var expireDate = new Date();

                expireDate.setDate(expireDate.getDate() - expireDate.getDate());
                document.cookie = cookieName + "= " + "; expires=" + expireDate.toGMTString();
            }

            function getCookie(cookieName) {
                cookieName = cookieName + '=';
                var cookieData = document.cookie;
                var start = cookieData.indexOf(cookieName);
                var cookieValue = '';
                if (start != -1) {
                    start += cookieName.length;
                    var end = cookieData.indexOf(';', start);
                    if (end == -1) end = cookieData.length;
                    cookieValue = cookieData.substring(start, end);
                }
                return unescape(cookieValue);
            }
        });
	})(jQuery);

	//네이버 로그인 연동 설정
	function getNaverLoginURL() {
		var menutype = "login";
		var currentURL = "https://www.cgv.co.kr/default.aspx";
		var auth = "naver";

		var apiURL = "http://www.cgv.co.kr/user/login/authorize.aspx?authtype="
			+ auth + "&redirect_uri=" + currentURL + "&menutype=" + menutype;
	
		location.href = apiURL;
	}
//]]>
</script>

            
            <!--/ Contents End -->
		 </div>
		<!-- /Contents Area -->
	</div>
		
		
		<!-- E Contaniner -->
	</div>
    <!-- S Footer -->
    <footer>
		<!-- footer_area (s) -->
		
		<div class="cgv_cp_ad" style="background-color:#FFA443;background-image: url(https://adimg.cgv.co.kr/images/bg_temp_foot_banner2021.gif); background-repeat:repeat-x;margin:0 auto">
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
<!-- end -->
</body>
</html>