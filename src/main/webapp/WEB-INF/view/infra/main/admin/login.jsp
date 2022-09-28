<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%> 

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<html lang="ko">
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>dminLogIn</title>
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
	<link rel="stylesheet" type="text/css" href="fontawesome-free-5.15.1-web/css/fontawesome.min.css">
	<link rel="stylesheet" type="text/css" href="/resources/css/signin.css">
	<link rel="stylesheet" href="//code.jquery.com/ui/1.13.2/themes/base/jquery-ui.css">
	<link rel="stylesheet" href="/resources/demos/style.css">
	<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
	<script src="https://code.jquery.com/ui/1.13.2/jquery-ui.js"></script>
</head>
<body>

<!-- start -->
	<main class="form-signin w-100 m-auto">
		<form>
			<img class="mb-2" src="/resources/images/user/logoRed.png" alt="" width="120" height="50">
			<h1 class="h3 mb-3 fw-normal">관리자 로그인</h1>
			<div class="form-floating">
				<input type="text" class="form-control" id="ifMmId" name="ifMmId" placeholder="id@example.com" value="test">
				<label for="floatingInput">아이디</label>
			</div>
			<div class="form-floating">
				<input type="password" class="form-control" id="ifMmPassWord" name="ifMmPassWord" placeholder="Password" value="1234">
				<label for="floatingPassword">비밀번호</label>
			</div>
			<div class="checkbox mb-3">
				<label>
					<input type="checkbox" value="remember-me"> 아이디 저장
				</label>
			</div>
				<button class="w-100 btn btn-lg btn-danger" type="button" id="btnLogin">로그인</button>
				<!-- <button class="w-100 btn btn-lg" type="button" style="margin-top: 2px; background-color: rgb(254, 229, 0);">
					<img alt="카카오톡 로고" src="../img/kakao.png" class="img-fluid">
					<span>카카오 계정으로 로그인</span>
				</button> -->
			<p class="mt-5 mb-3 text-muted">© 2022 CGV.All Rights Reserved</p>
		</form>
	</main>
    
<!-- end -->
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
	<script src="https://kit.fontawesome.com/188ea9a4c6.js" crossorigin="anonymous"></script>	
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
	</script>
</body>
</html>