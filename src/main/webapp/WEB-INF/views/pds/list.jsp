<%@ page pageEncoding="UTF-8"%>

<div id = "main">

	<div>
		<p><br></p>
	    <i class="fas fa-save fa-2x"> 자료실</i>
	</div>
	
	<hr>
	
	<div class="row">
	    <div class="col-5 offset-1">
	        <div class="form-group row">
	            <select class="form-control col-4" name="findtype" id="findtype">
	                <option value="title">제목</option>
	                <option value="titcont">제목+내용</option>
	                <option value="content">내용</option>
	                <option value="userid">작성자</option>
	            </select>
	            &nbsp;
	            <input type="text" name="findkey" id="findkey" class="form-control col-4 border-success">
	            &nbsp;
	            <button type="button" id="findbtn" class="btn btn-success"><i class="fas fa-search">&nbsp;검색</i></button>
	        </div>
	    </div>
	    <div class="col-5 text-right">
	        <button type="button" class="btn btn-light" id="newbdbtn"><i class="fas fa-plus-circle"></i> 새글쓰기</button>
	    </div>
	</div> <!-- 검색, 버튼-->
	
	<div class="row">
	    <div class="col-10 offset-1">
	        <table id="list" class="table table-striped table-hover text-center">
	            <colgroup>
	                <col style="width: 8%">
					<col style="">
					<col style="width: 12%">
					<col style="width: 10%">
					<col style="width: 8%">
					<col style="width: 8%">
				</colgroup>
				<thead class="bg-dark">
					<tr style="background: mediumAquaMarine">
						<th>번호</th><th>제목</th><th>작성자</th><th>작성일</th><th>추천</th><th>조회</th>
					</tr>
					<tr style="font-weight: bold; color: crimson">
					    <th>공지</th><th><span class="badge badge-danger">Hot</span>&nbsp;<a href="view.html">Donec ut neque a nisl tincidunt mollis.</a></th><th>운영자</th><th>2021.05.21</th><th>10</th><th>1006</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<script>
							let result = '';
							for(let i = 1;i <= 3; ++i) {
							    result +=
							        "<tr><td>" + i + "</td><td style='color: dodgerblue'>Sed malesuada tincidunt odio et semper.</td><td>siestageek</td><td>2021-05-21</td><td>10</td><td>128</td></tr>";
							}
							for(let i = 4;i <= 4; ++i) {
							    result +=
							        "<tr><td>" + i + "</td><td style='color: dodgerblue'></a>Sed malesuada tincidunt odio et semper. <span class='badge badge-danger'>Hot</span></td><td>siestageek</td><td>2021-05-21</td><td>10</td><td>1011</td></tr>";
							}
							for(let i = 5;i <= 6; ++i) {
							    result +=
							        "<tr><td>" + i + "</td><td style='color: dodgerblue'>Sed malesuada tincidunt odio et semper.</td><td>siestageek</td><td>2021-05-08</td><td>10</td><td>128</td></tr>";
							}
							for(let i = 7;i <= 10; ++i) {
							    result +=
							        "<tr><td>" + i + "</td><td>Sed malesuada tincidunt odio et semper.</td><td>siestageek</td><td>2021-05-01</td><td>10</td><td>777</td></tr>";
							}
							
							document.write(result);
						</script>
	              	</tr>
	            </tbody>
	        </table>
	    </div>
	</div>
	
	<p></p>
	        
	<div class="row">
	    <nav class="col-10 offset-1">
	    <ul class="pagination justify-content-center ">
	        <li class="page-item disabled"><a href="#" class="page-link">이전</a></li>
	        <li class="page-item active"><a href="#" class="page-link">1</a></li>
	        <li class="page-item"><a href="#" class="page-link">2</a></li>
	        <li class="page-item"><a href="#" class="page-link">3</a></li>
	        <li class="page-item"><a href="#" class="page-link">4</a></li>
	        <li class="page-item"><a href="#" class="page-link">5</a></li>
	        <li class="page-item"><a href="#" class="page-link">6</a></li>
	        <li class="page-item "><a href="#" class="page-link">7</a></li>
	        <li class="page-item"><a href="#" class="page-link">8</a></li>
	        <li class="page-item"><a href="#" class="page-link">9</a></li>
	        <li class="page-item"><a href="#" class="page-link">10</a></li>
	        <li class="page-item"><a href="#" class="page-link">다음</a></li>
	    </ul>
	    </nav>
	</div>
	
</div>	


<script>
    $('#newbdbtn').click(function() {location.href='/mvc/pds/list';})
</script>
