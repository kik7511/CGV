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
	<%@include file = "../../../infra/common/user/mainHeader.jsp" %>
		<!-- E Header -->
		<!-- S Contaniner -->
	<div id="contaniner" class=""><!-- 벽돌 배경이미지 사용 시 class="bg-bricks" 적용 / 배경이미지가 없을 경우 class 삭제  -->

		<!-- Contents Area -->
		 <div id="contents" class="">
            
            <!-- Contents Start -->
			

	<!-- 무비차트 S-->
    <div class="wrap-movie-chart">
        <!-- Heading Map Multi -->
        <div class="tit-heading-wrap">
            <h3>무비차트</h3>
        </div>
        <!-- //Heading Map Multi -->

        <!-- //Sorting -->
        
        <div class="sect-movie-chart">
        	 	<input type="hidden" name="mSeq" value="<c:out value="${vo.ifMmSeq}"/>"/>
	            <h4 class="hidden">
	                무비차트 - 예매율순
	            </h4>
	            <ol>
	            	<c:forEach items="${list}" var="list" varStatus="status" end="2">
		                <li>
		                    <div class="box-image">
		                        <strong class="rank">No.${list.mSeq}위</strong>	
		                        <a href="/movie/movieInfoView?mSeq=${list.mSeq}" style="margin-top: 5px;">
		                        	<span class="thumb-image">
		                            	<img src="/resources/images/user/${list.src}_320.jpg" alt="포스터" onerror="errorImage(this)">
											<span class="ico-grade grade-${list.mAgeLimit}"></span>
		                       		</span>
		                   		</a>
		                    </div>
		                    <div class="box-contents">	
		                        <a href="/movie/movieInfoView">
		                            <strong class="title">${list.mNameKor}</strong>
		                        </a>
		                        <div class="score">
		                            <strong class="percent">예매율<span>${list.mRate}%</span></strong>
		                        </div>
		                        <span class="txt-info">
		                            <strong>
		                               <fmt:formatDate value="${list.mOpenDate}" pattern="yyyy.MM.dd" />
		                               <span>개봉</span>
		                            </strong>
		                        </span>
		                        <span class="like"> 
		                            <a class="link-reservation" href="/purchase/ticketingForm">예매</a>
		                        </span>
		                    </div>    
		                </li>
	                </c:forEach>
	              </ol>
	              <ol>
					<c:forEach items="${list}" var="list" varStatus="status" begin="3">
		                <li>
		                    <div class="box-image">
		                        <strong class="rank">No.${list.mSeq}위</strong>	
		                        <a href="/movie/movieInfoView?mSeq=${list.mSeq}" style="margin-top: 5px;">
		                        	<span class="thumb-image">
		                            	<img src="/resources/images/user/${list.src}_320.jpg" alt="포스터" onerror="errorImage(this)">
											<span class="ico-grade grade-${list.mAgeLimit}"></span>
		                       		</span>
		                   		</a>
		                    </div>
		                    <div class="box-contents">
		                        <a href="/movie/movieInfoView">
		                            <strong class="title">${list.mNameKor}</strong>
		                        </a>
		                        <div class="score">
		                            <strong class="percent">예매율<span>${list.mRate}%</span></strong>
		                        </div>
		                        <span class="txt-info">
		                            <strong>
		                               <fmt:formatDate value="${list.mOpenDate}" pattern="yyyy.MM.dd" />
		                               <span>개봉</span>
		                            </strong>
		                        </span>
		                        <span class="like"> 
		                            <a class="link-reservation" href="/purchase/ticketingForm">예매</a>
		                        </span>
		                    </div>    
		                </li>
	                </c:forEach>
	              </ol>
				<!-- 무비차트 E -->            
	            <div class="chart-ad">
	                <div class="box-com">
	                	<img src="/resources/images/user/160x300.jpg" width="160" height="300" id="Movie_Chart" name="Movie_Chart" title="기업광고 - abc">                   
	                </div>                
	                <div class="chart_ad_desc">
	                    <dl>
	                        <dt>
	                            <img src="/resources/images/user/ico_ad1.png" alt="ad">
	                            <span id="ad_txt1">ABC</span>
	                        </dt>
	                        <dd>
	                            <span id="ad_txt2">블루 ABC 데이</span>
	                        </dd>
	                    </dl>
	                </div>
	            </div>
        </div>
    </div>
            
            <!--/ Contents End -->
		 	</div>
		<!-- /Contents Area -->
		</div>
    <!-- S Footer -->
		<!-- footer_area (s) -->
		<%@include file = "../../../infra/common/user/mainFooter.jsp" %>
		<!-- footer_area (s) -->
	</div>
	<script>
	var goUrlForm = "/movie/movieInfoView";
	var seq = $("input:hidden[name=mSeq]");
	var form = $("form[name=myForm]");
	
	</script>
<!-- end -->
</body>
</html>