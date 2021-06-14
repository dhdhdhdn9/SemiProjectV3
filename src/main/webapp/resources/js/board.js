

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
    let tit = $('#title').val();
    let cont = $('#contents').val();
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



// findtype tag setting
// $('#findtype').val('${param.findtype}')
//     .prop('selected', 'true');



// new board reply
$('#newbrbtn').click(function () {
    let reply = $('#reply').val();
    if(reply == '') alert('댓글을 작성해주세요!');
    else {
        const frm = $('#replyfrm');
        frm.attr('method', 'post')
        frm.attr('action', '/reply/write');
        frm.submit();
    }
});



// show reply modal
function addReply(rno) {
    $('#replyModal').modal('show');
    $('#rpno').val(rno);    // 대댓글 작성 시 부모 댓글 번호를 넘겨줌
};


// new reply
$('#newrrpbtn').click(function () {
    let rreply = $('#rreply').val();
    if( rreply == '') alert('답글을 작성해주세요!')
    else {
        const frm = $('#rpfrm');
        frm.attr('method', 'post')
        frm.attr('action', '/rreply/write');
        frm.submit();
    }
});

