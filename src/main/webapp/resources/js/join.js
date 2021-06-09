
// agree
$('#okagree').on('click', function () {
    if (!$('#agree1').is(":checked") || $('#agree2').is(":checked") == false)
        alert('모든 약관의 동의 여부를 확인해주세요.');
    else
        location.href='/join/checkme';
})  // 모두 동의함

$('#noagree').click(function() {location.href='/mvc/index';})
 // 동의하지 않음



//checkme
$('#chk2btn').on('click', function () {
    if($('#name2').val() == '') alert('이름을 입력하세요!');
    else if($('#jumin1').val() == '' || ($('#jumin2').val() == ''))
        alert('주민등록번호를 입력하세요!');
    else if(!$('#chkjumin').is(':checked'))
        alert('주민등록번호 처리 동의 여부를 확인해주세요!');
    else {
        const frm = $('#chkfrm2');
        frm.attr('action', '/join/joinme');
        frm.attr('method', 'post');
        frm.submit();
    }
});

$('#cancel2btn').on('click', function () {
    location.href = '/';
});



// userid check
$('#userid').on('blur', function () { checkuserid(); });

$('#userid').on('focus', function () { checkuserid(); });



// ajax check userid check
function checkuserid() {
    let uid = $('#userid').val();
    if (uid == '') { // 아이디를 입력하지 않고 탭을 누른 경우
        $('#uidmsg').text('8~16 자의 영문 소문자, 숫자와 특수기호(_)만 사용할 수 있습니다.');
        $('#uidmsg').attr('style', 'color:black');
        return
    }
    $.ajax({
        url: "/join/checkuid",
        type: "GET",
        data: { 'uid': uid }
    })
        .done( function (data){
            let msg = "사용할 수 없는 아이디입니다!";
            $('#uidmsg').attr('style', 'color:crimson !important');
            if (data == 0) {
                msg = "사용 가능한 아이디입니다!"
                $('#uidmsg').attr('style', 'color:dodgerblue !important');
            }
            $('#uidmsg').text(msg);
        } )
        .fail( function (xhr, status, error){
            alert(xhr.status + '/' + error);
        } );
}

// check equal passwd
$('#repasswd').on('blur', function () { checkeqpw(); });
$('#passwd').on('blur', function () { checkeqpw(); });

function checkeqpw() {
    let pw = $('#passwd').val();
    let repw = $('#repasswd').val();
    if (repw == '') { // 아이디를 입력하지 않고 탭을 누른 경우
        $('#repwdmsg').text('이전 항목에서 입력했던 비밀번호를 한번 더 입력하세요');
    } else if (pw != repw || pw == '') {
        $('#repwdmsg').text('비밀번호가 일치하지 않습니다!');
        $('#repwdmsg').attr('style', 'color:crimson !important');
    } else {
        $('#repwdmsg').text('비밀번호가 서로 일치합니다!');
        $('#repwdmsg').attr('style', 'color:dodgerblue !important');
    }
}



// joinme
$('#joinbtn').on('click', function() {
    if ($('#userid').val() == '') alert('아이디를 입력하세요');
    else if ($('#passwd').val() == '') alert('비밀번호를 입력하세요');
    else if ($('#passwd').val() != $('#repasswd').val())
        alert('비밀번호가 서로 일치하지 않습니다!');
    else if ($('#zip1').val() == '' || $('#zip2').val() == '')
        alert('우편번호를 조회해주세요!');
    else if ($('#addr1').val() == '' || $('#addr2').val() == '')
        alert('나머지 주소를 입력해주세요!');
    else if ($('#email1').val() == '' || $('#email2').val() == '')
        alert('이메일을 입력해주세요!');
    else if ($('#tel1').val() == '' || $('#tel2').val() == '' ||
        $('#tel3').val() == '') alert('전화번호를 입력해주세요!');
    else if (grecaptcha.getResponse() == '')
        alert('자동가입 방지 확인이 필요합니다!');
    else {
        $('#jumin').val( $('#jumin1').val() + '-' + $('#jumin2').val() );
        $('#zipcode').val( $('#zip1').val() + '-' + $('#zip2').val() );
        $('#email').val( $('#email1').val() + '@' + $('#email2').val() );
        $('#phone').val(
            $('#tel1').val() + '-' + $('#tel2').val() + '-' + $('#tel3').val() );

        const frm = $('#joinfrm');
        frm.attr('action','/join/joinok');
        frm.attr('method','post');
        frm.submit();
    }
});


$('#cancelbtn').on('click',function () {
    location.href= '/';
});



// show zipcode
$('#findzipbtn').on('click', function() {
   $.ajax( {
       url: 'http://localhost:8080/join/zipcode',
       type: 'GET',
       data: { dong: $('#dong').val() }
   })
       .done(function(data) {
           // 서버에서 넘어온 데이터는 JSON 형식
           // alert(data); //object로 출력
           let opts = "";
           $.each(data, function () { // 행단위 반복처리
               let zip = '';
               $.each(this, function (k, v) { // 열단위 반복처리
                   if (v != null) zip += v + ' ';
               });  // 묶은 후 option 태그 안에 넣어서 포장함
               opts += '<option>' + zip + '</option>';
           });
           $('#addrlist').find('option').remove(); // 이미 있는 목록 삭제
           $('#addrlist').append(opts);         // 새로 만든 option 태그 추가
       })
       .fail(function (xhr, status, error) {
           alert(xhr.status + '/' + error);
       });
});



// zipcode prevent enter key from dong
$('input[type="text"]').keydown(function() {
    if (event.keyCode === 13) {
        event.preventDefault();
    }
});



// send zipcode
$('#sendzip').on('click', function () {
    let addr = $('#addrlist option:selected').val();
    if(addr == undefined) {
        alert('주소를 선택해주세요!');
        return;
    }
    let addrs = addr.split(' '); // 선택한 주소를 공백으로 나눔

    // 잘라낸 첫번째 뭉치를 -로 다시 나눔
    $('#zip1').val( addrs[0].split('-')[0] );
    $('#zip2').val( addrs[0].split('-')[1] );

    // 잘라낸 나머지 뭉치들을 합쳐서 addr1로 보냄
    $('#addr1').val( addrs[1] + ' ' + addrs[2] + ' ' + addrs[3]);

    // 검색창 닫음
    $('#zipmodal').modal('hide');
});



// send email2
// option:selected => select 요소들 중 선택한 요소의 값을 알아냄

$('#email3').on('change', function() {
    let val = $('#email3 option:selected').text();
    if (val == '직접입력하기') {
        $('#email2').attr('readonly', false);
        $('#email2').val('');
    } else { (val != '직접입력하기')
        $('#email2').attr('readonly', true);
        $('#email2').val(val);
    }
});



// loginbtn
$('#loginbtn').on('click', function () {
    let uid = $('#userid').val();
    let pwd = $('#passwd').val();
    if(uid== '') {
        alert('아이디를 입력하세요!');
    }
    else if (pwd == '') { alert('비밀번호를 입력하세요!');
    }
    else {
        const frm = $('#loginfrm');
        frm.attr('method', 'post');
        frm.attr('action', '/join/login');
        frm.submit()
    }
});



// close login modal
$('#lgmbtn').on('click',function () {
    $('#loginmodal').modal('hide');
})



// logoutbtn
$('#logoutbtn').on('click', function () {
    location.href= '/join/logout';
});



