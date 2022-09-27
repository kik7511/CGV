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
					 	<a href="/home"><img src="/resources/images/user/logoRed.png" alt="CGV"></a>
					 </h1>
				<!-- /Advertisement -->
					<ul class="memberInfo_wrap">
						<li><a href="/member/loginForm"><img src="/resources/images/user/loginPassword.png" alt="로그인"><span>로그인</span></a></li>
						<li><a href="/member/signupForm"><img src="/resources/images/user/loginJoin.png" alt="회원가입"><span>회원가입</span></a></li>
					</ul>
				</div>
			</div>
			<div class="nav" style="left: 0px;">
				<div class="contents">
					<h1>
						<a href="/home" tabindex="-1"><img src="/resources/images/user/logoWhite.png" alt="CGV"></a>
					</h1>
					<ul class="nav_menu">
						<li>
							<h2>
								<a href="/home">홈</a>
							</h2>
						</li>
						<li>
							<h2>
								<a href="/movie/movieList">영화</a>
							</h2>
						</li>
						<li>
							<h2>
								<a href="/purchase/ticketingForm"><strong>예매</strong></a>
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
				            <form id="form1" method="post">
					            <fieldset style="text-align: center;">
					                <legend>회원 로그인</legend>
					                <p style="font-size: 120%; margin-left: -130px;">아이디 비밀번호를 입력하신 후, 로그인 버튼을 클릭해 주세요.</p>
					                <div class="login" align="center" style="margin-left: -120px;">
					                    <input type="text" title="아이디" id="ifMmId" name="ifMmId" data-title="아이디를 " data-message="입력하세요." required="required">
					                    <input type="password" title="패스워드" id="ifMmPassWord" name="ifMmPassWord" data-title="패스워드를 " data-message="입력하세요." required="required">
					                </div>
					                <div class="save-id" style="margin-left: 202px; padding-top: 5px;"> 
					                	<input type="checkbox" id="loginSet"><label for="save_id">아이디 저장</label>
					                </div>
					                <button type="button" id="btnLogin" title="로그인" style="margin-left: -120px;"><span>로그인</span></button>
					                <div class="login-option" style="margin-left: 215px;">
					                    <a href="/member/forgotidForm">아이디 찾기</a>
					                    <a href="/member/forgotPasswordForm">비밀번호 찾기</a>
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
				                <a title="새창" target="_blank" href="/member/singupForm" class="round red"><span>CJ ONE 회원가입하기</span></a>
				            </strong>
				            <em>
				                
				            </em>
				        </div>
				    </div>
				</div>
<!-- 실컨텐츠 끝 --> 

            <!--/ Contents End -->
		 </div>
		<!-- /Contents Area -->
	</div>
		
		
		<!-- E Contaniner -->
	</div>
     <!-- S Footer -->
		<!-- footer_area (s) -->
		<%@include file = "../../../infra/common/user/mainFooter.jsp" %>
		<!-- footer_area (s) -->
<!-- end -->
	<script>
	$("#btnLogin").on("click", function(){
		$.ajax({
			async: true 
			,cache: false
			,type: "post"
			/* ,dataType:"json" */
			,url: "/member/loginProc"
			/* ,data : $("#formLogin").serialize() */
			,data : { "ifMmId" : $("#ifMmId").val(), "ifMmPassWord" : $("#ifMmPassWord").val()}
			,success: function(response) {
				if(response.rt == "success") {
						location.href = "/home";
				} else {
					alert("회원없음");
				}
			}
			,error : function(jqXHR, textStatus, errorThrown){
				alert("ajaxUpdate " + jqXHR.textStatus + " : " + jqXHR.errorThrown);
			}
		});
	});
	</script>
</body>
</html>