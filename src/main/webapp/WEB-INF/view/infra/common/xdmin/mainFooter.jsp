<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%> 

<div class="container">
	<footer class="py-3 my-4">
		<ul class="nav justify-content-center border-bottom pb-3 mb-3 text-muted">
			<li class="nav-item">(주)CGV&nbsp; |</li>
			<li class="nav-item"> &nbsp;대표 김대겸&nbsp; |</li>
			<li class="nav-item"> &nbsp;사업자등록번호 123-45-789&nbsp; |</li>
			<li class="nav-item"> &nbsp;서울시 서초구 서초대로 77번길 55 3층</li>
		</ul>
		<p class="text-center text-muted">© 2022 GGV. All Rights Reserved</p>
	</footer>
</div>

<script>
	$("#btnLogin").on("click", function(){
		$.ajax({
			async: true 
			,cache: false
			,type: "post"
			/* ,dataType:"json" */
			,url: "/member/loginMProc"
			/* ,data : $("#formLogin").serialize() */
			,data : { "ifMmId" : $("#ifMmId").val(), "ifMmPassWord" : $("#ifMmPassWord").val()}
			,success: function(response) {
				if(response.rt == "success") {
						location.href = "/codeGroup/codeGroupList";
				} else {
					alert("회원없음");
				}
			}
			,error : function(jqXHR, textStatus, errorThrown){
				alert("ajaxUpdate " + jqXHR.textStatus + " : " + jqXHR.errorThrown);
			}
		});
	});
	
	$("#btnLogout").on("click", function(){
		$.ajax({
			async: true 
			,cache: false
			,type: "post"
			/* ,dataType:"json" */
			,url: "/member/logoutMProc"
			/* ,data : $("#formLogin").serialize() */
			/* ,data : { "ifMmId" : $("#ifMmId").val(), "ifMmPassWord" : $("#ifMmPassWord").val()} */
			,success: function(response) {
				if(response.rt == "success") {
						location.href = "/main";
				} else {
				}
			}
			,error : function(jqXHR, textStatus, errorThrown){
				alert("ajaxUpdate " + jqXHR.textStatus + " : " + jqXHR.errorThrown);
			}
		});
	});
</script>