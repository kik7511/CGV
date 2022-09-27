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
</head>
<body>

<!-- start -->
	<%@include file = "../../../infra/common/user/mainHeader.jsp" %>
		<!-- container -->
		<div id="contaniner" class=""><!-- 벽돌 배경이미지 사용 시 class="bg-bricks" 적용 / 배경이미지가 없을 경우 class 삭제  -->
			<div id="contents" class="">
            
       		<!-- Contents Start -->

				<!-- 실컨텐츠 시작 -->
				<div class="wrap-movie-detail" id="select_main">
				<!-- 
				<div class="tit-heading-wrap">
				    <h3>영화상세</h3>
				</div>
				 -->    
					<div class="sect-base-movie">
						<h3><strong>미니언즈2</strong>기본정보</h3>
						<div class="box-image">
							<a href="" title="포스터 크게 보기 새창" target="_blank">
								<span class="thumb-image"> 
									<img src="/resources/images/user/83127_320.jpg" alt="미니언즈2 포스터 새창" onerror="errorImage(this)">
               						<span class="ico-posterdetail">포스터 크게 보기</span>
               						<span class="ico-grade grade-all"></span>
           						</span> 
  							</a> 
   						</div>
   						<div class="box-contents">
        					<div class="title"> 
            					<strong>미니언즈2</strong>
            					<em class="round lightblue"><span>현재상영중</span></em>
					            <p>Minions: The Rise of Gru</p>
        					</div>
        					<div class="score"> 
            					<strong class="percent">예매율&nbsp;<span>23.8%</span></strong>
            					<!-- 2020.05.07 개봉전 프리에그 노출, 개봉후 골든에그지수 노출변경 -->            
							</div>
        					<!-- 떨어지는 얘 이전 요소에 class=on을 넣는다 -->
        					<div class="spec">
            					<dl>
                					<dt>감독 :&nbsp;</dt>
                					<dd>
				                        <span>카일 발다 </span>                    
					                </dd>
                
									<dd>
					                </dd>
					                <dt>&nbsp;/ 배우 :&nbsp;</dt>
                					<dd class="on">
				                        <span>스티브 카렐</span>                   
				                	        ,&nbsp;
                				        <span>타라지 P. 헨슨</span>                    
                        					,&nbsp;
				                        <span>양자경</span>                    
                        
                					</dd>
					                <dt>장르 :&nbsp;애니메이션,&nbsp;어드벤처,&nbsp;코미디</dt> 
                					<dd></dd>
                					<dt>&nbsp;/ 기본 :&nbsp;</dt>
                					<dd class="on">전체,&nbsp;87분,&nbsp;미국</dd>
                					<dt>개봉 :&nbsp;</dt>
               						<dd class="on">2022.07.20</dd>
					            </dl>
        					</div>
        					<span class="screentype"></span>
        					<span class="like">
            				<!-- 2020.05.07 영화찜하기 -> 프리에그 선택 변경(조회하여 노출) -->
					            <a class="link-reservation" href="/purchase/ticketingForm">예매</a> 
					        </span>
					    </div>
					</div>
					<!-- .sect-base -->
					<div class="cols-content" id="menu" style="margin-top: 0px;">
						<div class="col-detail" style="margin-top: 0px;">
						<!-- 메뉴가 선택되면 a 에 title="선택" 이라고 넣는다 -->
            				<div class="sect-story-movie"  style="margin-top: 0px;">
                				<strong>오랜마니언!&nbsp;</strong><br>
								세계 최고의 슈퍼 악당을 꿈꾸는 미니보스 ‘그루’와 그를 따라다니는 미니언들.<br>
								어느 날 그루는 최고의 악당 조직 ‘빌런6’의 마법 스톤을 훔치는데 성공하지만&nbsp;<br>
								뉴페이스 미니언 ‘오토’의 실수로 스톤을 잃어버리고 빌런6에게 납치까지 당한다.<br>
								미니보스를 구하기 위해 잃어버린 스톤을 되찾아야 하는 ‘오토’, 그리고 쿵푸를 마스터해야 하는 ‘케빈’, ‘스튜어트’, ‘밥’!<br>
								<strong>올여름 극장가를 점령할 MCU(미니언즈 시네마틱 유니버스)가 돌아온다!</strong>
							</div>
							<div class="movie-detail-ad">
                				<img src="/resources/images/user/0729_800x90_.jpg" width="800" height="90" id="Movie_Chart" name="Movie_Chart" title="광고-헌트">
            				</div>
            				
	            			<div id="ctl00_PlaceHolderContent_Section_Trailer" class="sect-trailer">
								<div class="heading">
                    				<h4>감독</h4>
                				</div>
                				<div class="character">
                					<div class="cell-a">
                						<img src="/resources/images/user/120x150_minons.jpg" name="Movie_Director" title="감독">
                						<span class="staff">조셉 코신스키</span>
                					</div>
                				</div>
				            </div>
				            <div id="ctl00_PlaceHolderContent_Section_Trailer" class="sect-trailer" style="padding-bottom: 100px;">
								<div class="heading">
                    				<h4>출연 배우</h4>
                				</div>
                				<div class="character">
                					<div class="cell">
                						<img src="/resources/images/user/steven.jpg" name="Movie_actor1" title="주연">
                						<span class="staff">스티븐 카렐</span>
                					</div>
                					<div class="cell">
                						<img src="/resources/images/user/tirage.jpg" name="Movie_actor2" title="주연">
                						<span class="staff">티라지 P.헨슨</span>
                					</div>
                					<div class="cell-b">
                						<img src="/resources/images/user/yang.jpg" name="Movie_actor3" title="주연">
                						<span class="staff">양자경</span>
                					</div>
                				</div>
				            </div>	
            			</div>
            			
            			<div class="col-aside">
							<div class="ad-partner01">
								<img src="/resources/images/user/0801_160x300.jpg" width="160" height="300" title="영화광고-놉" frameborder="0" scrolling="no" marginwidth="0" marginheight="0" name="M_Rectangle" id="M_Rectangle">
							</div>
							<div class="ad-external01">
								<img src="/resources/images/user/160x300.jpg" width="160" height="300" title="기업광고-abc" frameborder="0" scrolling="no" marginwidth="0" marginheight="0" name="C_Rectangle" id="C_Rectangle">
							</div>
						</div>
            		</div>
            	</div>
            <!--/ Contents End -->
		</div>
	<!-- E > 공지사항 & 고객센터 -->
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