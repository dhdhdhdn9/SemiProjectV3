<%@ page pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<div id="main">
	<div>
		<p><br></p>
		<i class="fas fa-save fa-2x"> 자료실</i>
		<hr>
	</div><!-- 페이지 타이틀 -->

	<div class="row">
		<div class="col-5 offset-1">
			<div class="form-group row">
				<select class="form-control col-4" name="findtype" id="findtype">
					<option value="title">제목</option>
					<option value="titcont">제목+내용</option>
					<option value="contents">내용</option>
					<option value="userid">작성자</option>
				</select>
				&nbsp;
				<input type="text" name="findkey" id="findkey"
					   class="form-control col-4 border-success"
					   value="${param.findkey}">
				&nbsp;
				<button type="button" id="findbtn" class="btn btn-success">
					<i class="fas fa-search">&nbsp;검색</i></button>
			</div>
		</div>
		<div class="col-5 text-right">
			<c:if test="${not empty UID}">
				<button type="button" class="btn btn-light" id="newbdbtn">
					<i class="fas fa-plus-circle"></i> 새글쓰기</button>
			</c:if>
		</div>
	</div><!-- 검색, 버튼 -->


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
				<tr style="font-weight: bold; color: gold">
					<th>공지</th>
					<th><span class="badge badge-danger">Hot</span>
						&nbsp<a href="/pds/view">Donec ut neque a nisl tincidunt mollis.</a></th>
					<th>운영자</th><th>2021.05.21</th><th>10</th><th>1006</th>
				</tr>
				</thead>
				<tbody>


				<c:forEach var="p" items="${pds}">
					<tr>
						<td>${p.pno}</td>
						<td><a href="/pds/view?pno=${p.pno}">${p.title}</a></td>
						<td>${p.userid}</td>
						<td>${fn:substring(p.regdate,0,10)}</td>
						<td>${p.thumbup}</td>
						<td>${p.views}</td>
						<c:set var="snum" value="${snum-1}"/>
					</tr>
				</c:forEach>

				</tbody>
			</table>
		</div>
	</div>

	<div class="row">
		<div class="col-12">
		</div>
	</div><!-- 페이지네이션  -->

</div>