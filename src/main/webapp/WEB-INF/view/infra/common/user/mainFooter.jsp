<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!-- footer_area (s) -->
<footer>
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
<script>
$("#btnLogout").on("click", function(){
	$.ajax({
		async: true 
		,cache: false
		,type: "post"
		/* ,dataType:"json" */
		,url: "/member/logoutProc"
		/* ,data : $("#formLogin").serialize() */
		/* ,data : { "ifMmId" : $("#ifMmId").val(), "ifMmPassWord" : $("#ifMmPassWord").val()} */
		,success: function(response) {
			if(response.rt == "success") {
					location.href = "/home";
			} else {
			}
		}
		,error : function(jqXHR, textStatus, errorThrown){
			alert("ajaxUpdate " + jqXHR.textStatus + " : " + jqXHR.errorThrown);
		}
	});
});
</script>
<!-- footer_area (e) -->