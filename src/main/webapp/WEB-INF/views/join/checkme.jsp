<%@ page pageEncoding="UTF-8"%>

<div id = "main">

<br>
	<div>
        <i class="fas fa-users fa-2x"> 회원가입</i>
    </div>
            
    <hr>

    <div>
        <h3>가입인증</h3>
        <small class="text-muted">회원으로 가입하는 방법에는 2가지 방법이 있습니다. 아래에서 원하는 방법을 선택해주세요.<br> 입력하신 정보는 가입완료 전까지 본 사이트에 저장되지 않습니다.</small>
    </div>
    
    <hr>

<!--            회원가입-->
    <div class= "card card-body bg-light" id="usefrm">
        <br>
        <h3>회원가입</h3>
        <p><br></p>

        <form name="checkfrm1" id="checkfrm1">

        <div class="row">
	        <div class="col-5 offset-1 text-warning">
	
	                <div class="form-group row">
	                    <label for="name" class="col-form-label col-3 text-right">이름</label>
	                    <input type="text" name="name" id="name" class="form-control col-6 border-warning">
	                </div>
	
	                <div class="form-group row">
	                    <label for="birth" class="col-form-label col-3 text-right ">생년월일</label>
	                    <select id="year" name="year" class="form-control col-3 text-warning border-warning">
	                        <option selected>년도</option>
	                        <option>2021년</option>
	                    </select>&nbsp;
	                    <select id="month" name="month" class="form-control col-2 text-warning border-warning">
	                        <option selected>월</option>
	                        <option>5</option>
	                    </select>&nbsp;
	                    <select id="day" name="day" class="form-control col-2 text-warning border-warning">
	                        <option selected>일</option>
	                        <option>11</option>
	                    </select>
	                </div>
	
	                <div class="form-group row">
	                    <label for="gender" class="col-3 text-right">성별</label>
	                    <div class = "custom-control custom-radio">
	                        <input type="radio" id="gmale" class="form-check-input" name="gender" value="male">
	                        <label class="form-check-label" for="male">남성</label>
	                    </div>
	                    <div class = "custom-control custom-radio offset-1">
	                        <input type="radio" id="fmale" class="form-check-input" name="gender" value="female">
	                        <label class="form-check-label" for="female">여성</label>
	                    </div>
	                </div>
	        </div>

	        <div class="col text-primary font-weight-bold">
	            <ul>
	                <li>주민등록번호 입력 없이 전화번호로 회원가입이 가능합니다.</li>
	                <li>이름, 생년월일과 성별은 <span class="text-danger">추후 변경할 수 없습니다</span>.</li>
	                <li><b class="text-danger">휴대폰 가입인증</b>을 하셔야 공개 게시판 이용이 가능합니다.</li>
	            </ul>
	        </div>

        </div>

        <hr>

        <div class= "text-center">
            <button type="button" id="chk1btn" class="btn btn-primary"><i class="fas fa-check"></i>&nbsp;확인하기</button>
            <button type="button" id="cancel1btn" class="btn btn-danger"><i class="fas fa-times"></i>&nbsp;취소하기</button>
        </div>

        </form>
	</div>

            <p><br></p>

<!--            실명확인-->
     <div class= "card card-body bg-light" id="usefrm">
         <br>
         <h3>실명확인 회원가입</h3>
         <p><br></p>
         <div class="row">
	         <div class="col-5 offset-1 text-warning">
	             <form name="chkfrm2" id="chkfrm2">
	                 <div class="form-group row">
	                     <label for="name" class="col-form-label col-3 text-right">이름</label>
	                     <input type="text" name="name" id="name" class="form-control col-6 border-warning">
	                 </div>
	
	                 <div class="form-group row">
	                     <label for="identi" class="col-form-label col-3 text-right">주민번호</label>
	                     <input type="text" name="idfirst" id="idfirst" class="form-control col-3 border-warning">
	                     <div class= "col-form-label text-dark ">&nbsp;&nbsp;─&nbsp;&nbsp;</div>
	                     <input type="text" name="idfirst" id="idfirst" class="form-control col-3 border-warning">
	                 </div>
	
	                 <div class="form-group row">
	                     <div class = "form-check offset-3 col-9">
	                         <input class="form-check-input" type="checkbox" name="idok" value="y">
	                         <label class="form-check-label" for="y">주민등록번호 처리에 동의합니다.</label>
	                     </div>
	                 </div>
	             </form>
	         </div>
	
	         <div class="col text-primary font-weight-bold">
	             <ul>
	                 <li>실명확인 회원가입시 공개 게시판 이용이 가능합니다.</li>
	                 <li>타인의 주민등록번호를 임의로 사용하면 <span class="text-danger">'주민등록법'에 의해 3년 이하의 징역 또는 1천만원 이하의 벌금</span>이 부과될 수 있습니다.</li>
	                 <li>입력하신 주민등록번호는 <b class="text-danger">별도 저장되지 않으며, 신용평가기관을 통한 실명확인용</b>으로만 이용됩니다.</li>
	                 <li>개인정보보호법에 따라 <b class="text-danger">이용 동의</b>를 받습니다.</li>
	             </ul>
	         </div>

         </div>
         <p><br></p>
         <hr>

         <div class= "text-center">
             <button type="button" id="chk2btn" class="btn btn-primary"><i class="fas fa-check"></i>&nbsp;확인하기</button>
             <button type="button" id="cancel2btn" class="btn btn-danger"><i class="fas fa-times"></i>&nbsp;취소하기</button>
         </div>

     </div>
            
</div>            
            