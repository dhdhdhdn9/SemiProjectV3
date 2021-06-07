<%@ page  pageEncoding="UTF-8"%>

<script src="https://www.google.com/recaptcha/api.js"></script>

<div id = "main">

	<div>
		<br>
		<h2>회원정보 입력</h2>
        <small class="text-muted">회원정보는 개인정보 취급방침에 따라 안전하게 보호되며, 회원님의 명백한 동의없이 공개 또는 제 2자에게 제공되지 않습니다</small>
	</div>
	
     <hr>
     
     <div class= "card card-body bg-light" id="usefrm">
     	<br>
        <h3>일반회원</h3>
        <p><br></p>

        <form name="joinfrm" id="joinfrm">
        	<div class="row">
        		<div class="col-11 offset-1 text-danger">
		            <div class="form-group row">
		                <label for="name" class="col-form-label col-2 text-right">이름</label>
		                <input type="text" name="name" id="name" class="form-control col-2 border-danger" readonly>
		            </div><!-- 이름-->
		            <div class="form-group row">
		                <label for="jumin1" class="col-form-label col-2 text-right">주민번호</label>
		                <input type="text" name="jumin1" id="jumin1" class="form-control col-2 border-danger" readonly>
		                <span class= "col-form-label text-dark ">&nbsp;&nbsp;&mdash;&nbsp;&nbsp;</span>
		                <input type="text" name="jumin2" id="jumin2" class="form-control col-2 border-danger" readonly>
		            </div><!-- 주민번호-->
		            <div class="form-group row">
		                <label for="userid" class="col-form-label col-2 text-right">아이디</label>
		                <input type="text" name="userid" id="userid" class="form-control col-3 border-danger">
		                <span class= "col-form-label text-dark">&nbsp; 8~16 자의 영문 소문자, 숫자와 특수기호(_)만 사용할 수 있습니다.</span>
		                <div class="col-form-label offset-2" id="idright"></div>
		                <script>
		                userid.addEventListener('blur', checkuid);
		                function checkuid() {
		                    let regid = /^[a-zA-Z0-9_]{5-15}$/;
		                    if (regid.test('#userid') == false) {
		                        idright.innerHTML = '사용할 수 없는 아이디입니다.';
		                    } else {
		                        idright.innerHTML = '사용 가능한 아이디입니다.';
		                    }
		                }
		                </script>
		            </div><!-- 아이디-->
		            <div class="form-group row">
		                <label for="passwd" class="col-form-label col-2 text-right">비밀번호</label>
		                <input type="password" name="passwd" id="passwd" class="form-control col-3 border-danger">
		                <span class= "col-form-label text-dark">&nbsp; 6~16 자의 영문 대소문자, 숫자 및 특수문자를 사용할 수 있습니다.</span>
		                <div class="col-form-label offset-2" id="pwright"></div>
		                <script>
		                let passwd = document.getElementById('passwd');
		                passwd.addEventListener('blur', checkpw);
		                function checkpw() {
		                    let regpw = /^[a-zA-Z0-9]{5-15}$/;
		                    if (regpw.test('passwd') == false) {
		                        pwright.innerHTML = '사용할 수 없는 비밀번호입니다.';
		                    } else {
		                        pwright.innerHTML = '사용 가능한 비밀번호입니다.';
		                    }
		                }
		                </script>
		            </div><!-- 비번-->
		            <div class="form-group row">
		                <label for="repasswd" class="col-form-label col-2 text-right">비밀번호 확인</label>
		                <input type="password" name="repasswd" id="repasswd" class="form-control col-3 border-danger">
		                <span class= "col-form-label text-dark">&nbsp; 이전 항목에서 입력했던 비밀번호를 한번 더 입력하세요</span>
		            </div><!-- 비번확인-->
		            <div class="form-group row">
		                <label for="zip1" class="col-form-label col-2 text-right">우편번호</label>
		                <input type="text" name="zip1" id="zip1" class="form-control col-1 border-danger" readonly>
		                <div class= "col-form-label text-dark ">&nbsp;&nbsp;&mdash;&nbsp;&nbsp;</div>
		                <input type="text" name="zip2" id="zip2" class="form-control col-1 border-danger" readonly>&nbsp;
		                <button type="button" class="btn btn-dark" data-toggle="modal" data-target="#zipcode"><i class="far fa-question-circle"></i>&nbsp;우편번호 찾기</button>
		            </div><!-- 우편번호-->
		            <div class="form-group row">
		                <label for="addr1" class="col-form-label col-2 text-right">주소</label>
		                <input type="text" name="addr1" id="addr1" class="form-control col-4 border-danger">
		                &nbsp;
		                <input type="text" name="addr2" id="addr2" class="form-control col-4 border-danger">
		            </div><!-- 주소-->
		            <div class="form-group row">
		                <label for="email1" class="col-form-label col-2 text-right">전자우편 주소</label>
		                <input type="text" class="form-control col-3 border-danger" id="email1" name="email1">
		                <div class="input-group-append"><span class="input-group-text">@</span></div>
		                <input type="text" class="form-control col-2 border-danger" id="email2" name="email2">&nbsp;
		                <select id="site" name="site" class="form-control col-2 border-danger">
		                    <option selected>-선택하세요-</option>
		                    <option>직접 입력하기</option>
		                    <option>gmail.com</option>
		                    <option>naver.com</option>
		                </select>
		            </div><!-- 이메일-->
		            <div class="form-group row">
		                <label for="hp1" class="col-form-label col-2 text-right">개인 연락처</label>
		                <select id="hp1" name="hp1" class="form-control col-2 border-danger">
		                    <option selected>-국번-</option>
		                    <option>02</option>
		                    <option>031</option>
		                </select>
		                <div class= "col-form-label text-dark ">&nbsp;&nbsp;&mdash;&nbsp;&nbsp;</div>
		                <input type="text" name="hp2" id="hp2" class="form-control col-2 border-danger">
		                <div class= "col-form-label text-dark ">&nbsp;&nbsp;&mdash;&nbsp;&nbsp;</div>
		                <input type="text" name="hp3" id="hp3" class="form-control col-2 border-danger">
		            </div><!-- 전번-->
		            <div class="form-group row">
		                <label for="nonauto" class="col-form-label col-2 text-right">자동 가입 방지</label>
		                <div class="g-recaptcha"
		                	data-sitekey="6LdtIwgbAAAAAAfVQKZ16AhH9qNWiDmxGLX6u2Yb"></div>
		                <input type="hidden" id="g-recaptcha" name="g-recaptcha"/>
		            </div><!-- 캡차-->
        		</div>
        	</div>
        <hr>
	        <div class= "row">
	            <div class="col text-center">
	                <button type="button" class="btn btn-primary" id="joinbtn"><i class="fas fa-check"></i>&nbsp;입력완료</button>
	                <button type="button" class="btn btn-danger" id="cancelbtn"><i class="fas fa-times"></i>&nbsp;취소하기</button>
	            </div>
	        </div><!-- 버튼들-->
        </form>
	</div><!-- 회원정보 입력-->
	
</div>

<!-- 우편번호 찾기 폼 modal -->
<div class= "modal" id="zipcode" role="dialog" tabindex="-1">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            <div class="modal-header">
                <h3 class="modal-title">우편번호 찾기</h3>
                <button type="button" class="close" data-dismiss="modal">&times;</button>
            </div>

            <form name="zipfrm" id="zipfrm">
            <div class="modal-body">
                <div class="form-inline row justify-content-center">
                    <label for="dong" class="col-form-label text-primary text-right">검색하실 주소의 <br> 동 이름을 입력하세요</label>
                    &nbsp;&nbsp;
                    <input type="text" name="dong" id="dong" class="col-4 border-primary form-control col-form-label">
                    &nbsp;&nbsp;
                    <button type = "button" class = "btn btn-primary" id="findzipbtn"><i class="fas fa-search"></i>&nbsp;검색하기</button>
                </div>
                <div class="form-group row text-danger text-center">
                    <hr class="col-12">
                    <p class="col-12 ">지역의 읍/면/동의 이름을 공백없이 입력하신 후, [검색] 버튼을 클릭하세요</p>
                    <select class="col-8 offset-2 form control" size="10" id="addrlist" name="addrlist">
                        <option>123-456 서울 종로구 창신동</option>
                        <option>123-456 서울 종로구 창신동</option>
                        <option>123-456 서울 종로구 창신동</option>
                        <option>123-456 서울 종로구 창신동</option>
                        <option>123-456 서울 종로구 창신동</option>
                        <option>123-456 서울 종로구 창신동</option>
                        <option>123-456 서울 종로구 창신동</option>
                        <option>123-456 서울 종로구 창신동</option>
                        <option>123-456 서울 종로구 창신동</option>
                        <option>123-456 서울 종로구 창신동</option>
                        <option>123-456 서울 종로구 창신동</option>
                    </select>
                </div>
            </div>

            <div class="modal-footer text-right">
                <div class="form-group col">
                    <button type="button" class="btn btn-danger">선택하고 닫기</button>
                </div>
            </div>
            </form>

        </div>
    </div>
</div>