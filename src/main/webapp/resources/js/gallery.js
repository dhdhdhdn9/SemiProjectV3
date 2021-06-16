// show img
function showimg(gno) {
    location.href = '/gallery/view?gno=' + gno;
}

// to list
$('#listgalbtn').click(function () {
    location.href='/gallery/list'
})

// new gallery
$('#newgalbtn').click(function () {
   location.href='/gallery/write'
});


// write gallery
$('#newgal').click(function () {
    let tit = $('#title').val();
    let cont = $('#contents').val();
    if (tit == '')
        alert("제목을 작성해주세요!")
    else if (cont == '')
        alert("본문을 작성해주세요!")
    else if (grecaptcha.getResponse() == '')
        alert('자동가입 방지 확인이 필요합니다!');
    else {
        const frm = $('#galfrm')
        frm.attr('method', 'post');
        frm.attr('action', '/gallery/write')
        frm.attr('enctype', 'multipart/form-data')
        // 인코딩 타입
        frm.submit();
    }
});


// show attach file name
// file의 내용이 바뀌면 클래스 이름이 elem인 녀석을 찾고,
// 이 fname의 이름(this)으로 대체한다.
$('#file1').change(function () {
    var fname = $(this).val();
    fname = fname.substring(fname.lastIndexOf("\\") + 1);
    $(this).next('.custom-file-label').html(fname);
});
$('#file2').change(function () {
    var fname = $(this).val();
    fname = fname.substring(fname.lastIndexOf("\\") + 1);
    $(this).next('.custom-file-label').html(fname);
});
$('#file3').change(function () {
    var fname = $(this).val();
    fname = fname.substring(fname.lastIndexOf("\\") + 1);
    $(this).next('.custom-file-label').html(fname);
});