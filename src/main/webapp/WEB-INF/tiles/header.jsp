<%@ page pageEncoding="UTF-8"%>

<header class = "row">

	<div class = "col"><h1 class="text-info">Lorem Ipsum</h1></div>
	<div class = "col text-right"><h1><button type="button" class="btn btn-danger" data-toggle="modal" data-target="#loginfrm">로그인</button>
		<button type="button"  id="joinbtn" class="btn btn-primary">회원가입</button></h1></div>
	<link rel="stylesheet" href="/css/project.css">

</header>

<nav class = "nav-bar navbar-expand navbar-light bg-light">
	<ul class="navbar-nav nav-fill w-100">
		<li class="nav-item"><a href="/intro" class="nav-link">프로젝트소개</a></li>
		<li class="nav-item"><a href="/join/agree" class="nav-link">회원가입</a></li>
		<li class="nav-item"><a href="/board/list" class="nav-link">게시판</a></li>
		<li class="nav-item"><a href="/pds/list" class="nav-link">자료실</a></li>
		<li class="nav-item"><a href="/gallery/list" class="nav-link">갤러리</a></li>
		<li class="nav-item"><a href="#" class="nav-link">관리자</a></li>
	</ul>
</nav>

<!-- 로그인 폼 modal -->

<div class= "modal" id="login" tabindex="-1" >
	<div class="modal-dialog">
		<div class="modal-content">

			<div class="modal-header">
				<h1>로그인</h1>
				<button type="button" class="btn btn-secondary" data-dismiss="modal">닫기</button>
			</div>

			<form name="loginfrm" id="loginfrm" method="post">
				<div class="modal-body">
					<div class="form-group row">
						<label for="userid" class="col-form-label col-4 text-right">아이디</label>
						<input type="text" name="userid" id="userid" class="form-control col-5">
					</div>
					<div class="form-group row">
						<label for="passwd" class="col-form-label col-4 text-right">비밀번호</label>
						<input type="password" name="passwd" id="passwd" class="form-control col-5">
					</div>
					<div class="form-group row col offset-4">
						<input class="form-check-input" type="checkbox" name="loginstat" id="loginstat">
						<label class="form-check-label">로그인 상태 유지</label>
					</div>
				</div>

				<div class="modal-footer justify-content-center" style="background: gainsboro" >
					<div class="form-group">
						<button type="button" class="btn btn-danger">로그인</button>
					</div>
					<div class="form-group">
						<button type="button" class="btn btn-warning">아이디/비밀번호 찾기</button>
					</div>
				</div>
			</form>

		</div>
	</div>
</div>