<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%> 

<nav class="navbar bg-light">
	<div class="container">
		<a class="navbar-brand" href="/codeGroup/codeGroupList">
			<img src="/resources/images/logoRed.png" alt="CGV" style="width: 120px; height: 50px; margin-left: 40px;">
		</a>
	</div>
	<button class="navbar-toggler" type="button" data-bs-toggle="offcanvas" data-bs-target="#offcanvasNavbar" aria-controls="offcanvasNavbar" style="margin-right: 30px;">
		<span class="navbar-toggler-icon"></span>
	</button>
	<div class="offcanvas offcanvas-end" tabindex="-1" id="offcanvasNavbar" aria-labelledby="offcanvasNavbarLabel">
		<form>
			<div class="offcanvas-header border-bottom">
				<h5 class="offcanvas-title" id="offcanvasNavbarLabel">관리자 메뉴</h5>
				<button type="button" class="btn-close" data-bs-dismiss="offcanvas" aria-label="Close"></button>
			</div>
			<div class="offcanvas-body">
				<ul class="navbar-nav justify-content-end flex-grow-1 pe-3">
					<c:choose>
						<c:when test="${not empty sessMId}">
							<li class="nav-item">
								<span style="font-size: 18px;"><c:out value="${sessMName}"/></span> 님
							</li>
							<li class="nav-item" style="margin-top: 15px;">
								<a style="cursor: pointer;" id="btnLogout"><span>로그아웃</span></a>
							</li>
						</c:when>
						<c:otherwise>
							<li class="nav-item">
								<a class="nav-link active" aria-current="page" href="#" data-bs-toggle="modal" data-bs-target="#exampleModal">로그인</a>
								<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true" data-bs-backdrop="false">
									<div class="modal-dialog">
										<div class="modal-content">
											<div class="modal-header">
												<h5 class="modal-title" id="exampleModalLabel">로그인</h5>
												<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
											</div>
											<div class="modal-body">
												<form>
													<img class="mb-2" src="/resources/images/logoRed.png" alt="" width="120" height="50">
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
												</div>
											</div>
										</div>
									</div>
								</li>
							<li class="nav-item">
								<a class="nav-link active" href="#">회원가입</a>
							</li>
						</c:otherwise>
					</c:choose>
				</ul>
			</div>	
		</form>
	</div>
</nav>