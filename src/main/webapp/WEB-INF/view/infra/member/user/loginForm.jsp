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
	<link rel="shortcut icon" href="/resources/images/user/favicon.ico" type="image/x-icon">
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
        				<div class="box-login" style="height: 300px;">
            				<h3 class="hidden">회원 로그인</h3>
				            <form id="form1" method="post" onsubmit="return frmCheck();">
					            <fieldset style="text-align: center;">
					                <legend>회원 로그인</legend>
					                <p style="font-size: 120%; margin-left: -130px;">아이디 비밀번호를 입력하신 후, 로그인 버튼을 클릭해 주세요.</p>
					                <div class="login" align="center" style="margin-left: -120px;">
					                    <input type="text" title="아이디" id="ifMmId" name="ifMmId" data-title="아이디를 " data-message="입력하세요." required="required" value="kdk7511">
					                    <input type="password" title="패스워드" id="ifMmPassWord" name="ifMmPassWord" data-title="패스워드를 " data-message="입력하세요." required="required" value="1234">
					                </div>
					                <div class="save-id" style="margin-left: 202px; padding-top: 5px;"> 
					                	<input type="checkbox" id="loginSet"><label for="save-id">아이디 저장</label>
					                </div>
					                <button type="button" id="btnLogin" title="로그인" style="margin-left: -120px;"><span>로그인</span></button>
					                <div class="login-option" style="margin-left: 215px;">
					                    <a href="/member/forgotIdForm">아이디 찾기</a>
					                    <a href="/member/forgotPasswordForm">비밀번호 찾기</a>
					                </div>
					            </fieldset>
				            </form>  
				            <form name="form">
								<input type="hidden" name="name"/>
								<input type="hidden" name="id"/>
								<input type="hidden" name="phone"/>
								<input type="hidden" name="email"/>
								<input type="hidden" name="gender"/>
								<input type="hidden" name="profile_img"/>
								<input type="hidden" name="naver" value="${sessSeq}"/>
							</form>
							<div align="center">
								<a class="btn_loginNaver" id="kakaologin" style="margin-left: -120px; cursor: pointer; display: block;"><img src="/resources/images/user/kakao_login_medium_wide.png" alt="카카오 로그인" style="width: 260px;"></a>
								<!-- <a href="" class="btn_loginNaver" style="margin-left: -120px; margin-top : 5px; display: block;"><img src="https://img.cgv.co.kr/image_gt/login/btn_loginNaver.jpg" alt="네이버 로그인"></a> -->
								<div class="btn_login_wrap">
									<div id="naverIdLogin">
										<a id="naverIdLogin_loginButton" href="#" ><img src="https://static.nid.naver.com/oauth/big_g.PNG?version=js-2.0.1" height="39" width="260" style="margin-left: -120px; margin-top : 5px;"></a>
									</div>
                             	  </div>
							</div>	
							</div>
				        </div>
   					 </div>    
				    <div class="sect-loginguide">
				        <div class="box-useguide">
				            <strong>CJ ONE 회원이 아니신가요?</strong>
				            <span>회원가입하시고 다양한 혜택을 누리세요!</span>
				            <strong>
				                <a href="/member/signupForm" class="round red"><span>CJ ONE 회원가입하기</span></a>
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
<script src="https://t1.kakaocdn.net/kakao_js_sdk/2.0.0/kakao.min.js" integrity="sha384-PFHeU/4gvSH8kpvhrigAPfZGBDPs372JceJq3jAXce11bVA6rMvGWzvP4fMQuBGL" crossorigin="anonymous"></script>
<script src="https://developers.kakao.com/sdk/js/kakao.js"></script>
<script src="https://static.nid.naver.com/js/naveridlogin_js_sdk_2.0.2.js" charset="utf-8"></script>

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
					alert("아이디 또는 비밀번호를 잘못 입력하셨습니다");
				}
			}
			,error : function(jqXHR, textStatus, errorThrown){
				alert("ajaxUpdate " + jqXHR.textStatus + " : " + jqXHR.errorThrown);
			}
		});
	});
	
	var naverLogin = new naver.LoginWithNaverId(
			{
				clientId: "Qz4S3X6x5DF5Xm6y6Cbz",
				callbackUrl: "http://localhost:8080/member/loginForm", 
				//callbackUrl: "http://localhost:8080/home",
				isPopup: false,
			}
		);
	
	naverLogin.init();
	
	/* window.addEventListener('load', function () {
			naverLogin.getLoginStatus(function (status) {
				if (status) {
					 (6) 로그인 상태가 "true" 인 경우 로그인 버튼을 없애고 사용자 정보를 출력합니다. 
					setLoginStatus();
				}
			});
		}); */
		
		$("#naverIdLogin").on("click", function() {
   			naverLogin.getLoginStatus(function (status) {
  				if (!status) {
  					naverLogin.authorize();
  				} else {
					setLoginStatus();
  				}
  			});
		})
   		
		window.addEventListener('load', function () {
			if (naverLogin.accessToken != null) { 
	  			naverLogin.getLoginStatus(function (status) {
	  				if (status) {
	  					setLoginStatus();
	  				}
  				});
			}
   		});
		
		
	/* naverLoginClick = function(){
		naverLogin.getLoginStatus(function (status) {
			
			if(!status)
				naverLogin.authorize();
                setLoginStatus();  //하늘님 메소드 실행 -> Ajax
		});
    }
	
	  if ($("input[name=naver]").val() != null && $("input[name=naver]").val() != "") {
			naverLogin.getLoginStatus(function (status) {
				if (status) {
					setLoginStatus();
				}
			});
		}   */
	
	function setLoginStatus() {
	$.ajax({
		async: true
		,cache: false
		,type:"POST"
		,url: "/member/naverLoginProc"
		,data: {"name": naverLogin.user.name, "id": "네이버로그인", "phone": naverLogin.user.mobile, "email": naverLogin.user.email}
		,success : function(response) {
			if (response.rt == "success") {
				window.location.href = "/home";
			} else {
				alert("아이디와 비밀번호를 다시 확인 후 시도해 주세요.");
				return false;
			}
		},
		error : function(jqXHR, status, error) {
			alert("알 수 없는 에러 [ " + error + " ]");
		}
	});
}
	</script>
	<script>
	Kakao.init('036d65cb9b7cdfe66aa8d121ce7c81b4');
	$("#kakaologin").on("click", function(){
		Kakao.Auth.login({
	      success: function (response) {
	        	Kakao.API.request({
	          url: '/v2/user/me',
	          success: function (response) {
	        	  
	        	  var account = response.kakao_account;
	        	  
	        	  console.log(response);
	        	  
	        	  $("input[name=id]").val("카카오로그인");
	        	  $("input[name=name]").val(account.profile.nickname);
	        	  $("input[name=phone]").val(account.profile.phone_number);
	        	  $("input[name=email]").val(account.profile.email);
	        	  $("input[name=dob]").val(account.profile.birthday);
	        	  
	        	  
	        	  $("form[name=form]").attr("action", "/member/kakaoLoginProc").submit();
	          },
	          fail: function (error) {
	            console.log(error)
	          },
	        })
	      },
	      fail: function (error) {
	        console.log(error)
	      },
	    })
	});
	
	</script>
</body>
</html>