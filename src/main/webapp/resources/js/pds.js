// list
$('#newpdsbtn').click( function () {
  location.href = '/pds/write';
})

// go to list
$('#listpdsbtn').click(function () {
  location.href='/pds/list';
})

// write
$('#newpds').click( function() {
  let tit = $('#title').val();
  let cont = $('#contents').val();
  if (tit == '')
    alert("제목을 작성해주세요!")
  else if (cont == '')
    alert("본문을 작성해주세요!")
  else if (grecaptcha.getResponse() == '')
    alert('자동가입 방지 확인이 필요합니다!');
  else {
    const frm = $('#pdsfrm')
    frm.attr('method', 'post')
    frm.attr('action', '/pds/write')
    frm.submit();
  }
})


// recommand
$('#pdthumbtn').click(function () {
  let tpno = $('#pno').val();
  location.href = '/pds/recommand?pno=' + tpno;
  alert('추천이 완료되었습니다.')

})


// prevbtn
$('#pdprvbtn').click(function () {
  location.href='/pds/prev?pno=' + $('#pno').val()
})


// nextbtn
$('#pdnxtbtn').click(function () {
  location.href='/pds/next?pno=' + $('#pno').val()
})


// rmvbtn
$('#pdrmvbtn').click(function () {
  location.href='/pds/pdrmv?pno=' + $('#pno').val()
})