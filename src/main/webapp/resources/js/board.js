

// new board
$('#newbdbtn').click(function () {
    location.href='/board/write';
})


// go to list
$('#listbdbtn').click(function () {
    location.href='/board/list';
})


// save board
$('#savebdbtn').click(function () {
    let tit = $('#wtitle').val();
    let cont = $('#wcontents').val();
    if (tit === '')
        alert("제목을 작성해주세요!")
    else if (cont === '')
        alert("본문을 작성해주세요!")
    else if (grecaptcha.getResponse() === '')
        alert('자동가입 방지 확인이 필요합니다!');
    else {
        const frm = $('#boardfrm');
        frm.attr('method', 'post');
        frm.attr('action', '/board/write');
        frm.submit();
    }
})


// search board
$('#findbtn').on('click',function() {
    if($('#findkey').val() == '') alert('검색 내용을 작성해주세요!');
    else {
        let qry = '?findtype=' + $('#findtype').val();
        qry += "&findkey=" + $('#findkey').val() + "&cp=1";
        let url = '/board/find' + qry;
        location.href = url;
    }

})