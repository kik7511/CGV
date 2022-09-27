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
            <h4 class="hidden">
                무비차트 - 예매율순
            </h4>
            <ol>
            	<c:forEach items="${list}" var="list" varStatus="status" end="2">
	                <li>
	                    <div class="box-image">
	                        <strong class="rank">No.${list.mSeq}위</strong>	
	                        <a href="/movie/movieInfoView" style="margin-top: 5px;">
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
	                        <a href="/movie/movieInfoView" style="margin-top: 5px;">
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
    <!-- .sect-moviechart -->
<script type="text/javascript">
//<![CDATA[
    (function ($) {
        $(function () {

            $('.sect-sorting button').click(function () {
                var val = $('#order_type').val();
                if (val) {
                    location.href = "/movies/?lt=1&ot=" + val;
                }
            });
            //[2015-12-15] 무비 파인더 페이지 인 경우 정렬 버튼 처리. : add_mwpark
            $("#sect-finder button").click(function(){
                var val = $('#order_type').val();
                if (val) {
                    location.href = "/movies/finder.aspx?lt=1&ot=" + val;
                }
            });


            $('#chk_nowshow').click(function () {
                if ($("input:checkbox[id='chk_nowshow']").is(":checked")) {
                    location.href = "/movies/?lt=1&ft=1";
                }
                else{
                    location.href = "/movies/?lt=1&ft=0";
                }
            });

            //[2015-12-15] 무비 파인더 페이지 인 경우 현재 상영작만 보기 체크 박스 처리. : add_mwpark
            $("#chk_finder_nowshow").on("click" , function(){
                if ($("input:checkbox[id='chk_nowshow']").is(":checked")) {
                    location.href = "/movies/finder.aspx?lt=1&ft=1";
                }else{
                    location.href = "/movies/finder.aspx?lt=1&ft=0";
                }
            });

        });

    })(jQuery);
//]]>
</script>


<div class="sect-movie-chart">
 <ol id="movie_more_container" style="display:none" class="list-more">
    <li></li>
</ol>
</div>

<!--
<div class="sect-ad-benner"> 
    <a href="javascript:tmp_alert_phototicket()" title="새창"><img src="https://img.cgv.co.kr/R2014/images/main/phototicket_978_223.jpg" alt="영화를 영원히 추억하는 방법. CGV 포토티켓" /></a>
</div>//-->
<!-- .sect-ad-benner  -->


<div class="cols-rank" style="display:none">
    <div class="col-rank-trailer">
        <h3>인기 트레일러</h3>
        <div class="sect-popular-trailer">
            
            <ul>
            
            </ul>
        </div><!-- .sect-popular-trailer -->
    </div><!-- .col-rank-trailer -->
     
</div>

<!--
  2016-
- Fried : 0 ~69
- Good :  70 ~ 84
- Great : 85 ~ 100  
//-->
<script id="temp_movie" type="text/x-jquery-tmpl">
    <li>
        <div class="box-image" >
            <a href="/movies/detail-view/?midx=">
                <span class="thumb-image">
                    <img src="" alt="" onerror="errorImage(this)"/>
                    <span class="ico-grade "></span>
                </span>
            </a>
            <span class="screentype">
                {{each MovieKindList}}
                <a class="" href="#" data-regioncode=""></a>
                {{/each}}
            </span>
        </div>
                    
        <div class="box-contents">
            <a href="/movies/detail-view/?midx=">
                <strong class="title"></strong>
            </a>

            <div class="score">
                <strong class="percent">예매율<span>%</span></strong>
                <!--2020.05.07 개봉일 12시 30분전 프리에그, 개봉일 12시 30분후 골든에그지수 노출 기준변경-->
                <div class="egg-gage small">
                    <span class=""></span>
                    <span class="percent"></span>
                </div>
            </div>

            <span class="txt-info">
                <strong>
                    
                    <span></span>
                    {{if D_Day > 0}}
                        <em class="dday">D-</em>
                    {{/if}}
                </strong>
            </span>
            <span class="like"> 
                {{if (IsTicketing)}}<a class="link-reservation" href="http://www.cgv.co.kr/ticket/?MOVIE_CD=&MOVIE_CD_GROUP=">예매</a>{{/if}}
            </span>
        </div>    
    </li>
</script>

<script type="text/javascript">
//<![CDATA[

    (function ($) {
        $(function () {

            $(".btn-more-fontbold").click(function () {
                $(this).remove();
                app.movie().getList({ listType: '1', orderType: '1', filterType: '0' }, setMovieListBuild);
            });

            function setMovieListBuild(result) {

                $("#movie_more_container").empty();
                $("#movie_more_container").show();

                for (var i = 0; i < result.List.length; i++) {
                    var str = result.List[i].JointCount;
                    result.List[i].JointCount = str.split(",").join("");
                }


                $("#temp_movie").tmpl(result.List).appendTo("#movie_more_container");

                //$('.point').point();        //평점 별 표시
                $('.btn-like').like();      //wish list동작 처리
                $('span.screentype a').specialTheater();    //특별관 링크
            }
        });
    })(jQuery);
//]]>
</script>


            
            <!--/ Contents End -->
		 	</div>
		<!-- /Contents Area -->
		</div>
    <!-- S Footer -->
		<!-- footer_area (s) -->
		<%@include file = "../../../infra/common/user/mainFooter.jsp" %>
		<!-- footer_area (s) -->
	</div>
<!-- end -->
</body>
</html>