<%@ page pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<c:if test="${param.pno eq 'null' or empty param.pno}">
	<script>alert('게시글이 존재하지 않습니다!'); location.href='/pds/list?cp=1'</script>
</c:if>

<%-- 첨부파일 아이콘 선택 --%>
<c:set var="atticon1" value="${p.ftype1}" />
<c:if test="${p.ftype1 ne 'zip' and p.ftype1 ne 'jpg' and p.ftype1 ne 'txt'}">
	<c:set var="atticon1" value="file" />
</c:if>

<c:set var="atticon2" value="${p.ftype2}" />
<c:if test="${p.ftype2 ne 'zip' and p.ftype2 ne 'jpg' and p.ftype2 ne 'txt'}">
	<c:set var="atticon2" value="file" />
</c:if>

<c:set var="atticon3" value="${p.ftype3}" />
<c:if test="${p.ftype3 ne 'zip' and p.ftype3 ne 'jpg' and p.ftype3 ne 'txt'}">
	<c:set var="atticon3" value="file" />
</c:if>


<div id = "main">

	<div>
		<p><br></p>
	    <i class="fas fa-save fa-2x"> 자료실</i>
	    <hr>
	</div> 
	            
	<div>
	
		<div>
		    <div class="form-group row">
		        <div class="col-5 offset-1" >
		            <button type="button" class="btn btn-light" id="pdprvbtn">
						<i class="fas fa-chevron-left"></i> 이전 게시물</button>
		            <button type="button" class="btn btn-light" id="pdnxtbtn">
						<i class="fas fa-chevron-right"></i> 다음 게시물</button>
		        </div>
		        <div class="col-5 text-right">
					<c:if test="${not empty UID}">
						<button type="button" class="btn btn-light" id="newpdsbtn">
							<i class="fas fa-plus-circle"></i> 새글쓰기</button>
					</c:if>
		        </div>
		    </div>
		</div> <!-- 버튼들-->
	
		<table class="table col-10 offset-1">
		    <tr class="tbbg1 text-center">
		        <th colspan="2"><h2>${p.title}</h2></th>
		    </tr>
		    <tr class="tbbg2">
		        <td style="width: 50%; text-align: left">${p.userid}</td>
		        <td class="text-right">${p.regdate} / ${p.thumbup} / ${p.views}</td>
		    </tr>
			<tr class="tbbg3">
				<td colspan="2">${p.contents}</td>
			</tr> <!-- 게시 내용-->
		    <tr>
		        <td colspan="2" class="tbbg4 patxt"> 첨부1:
					<img src="/img/${atticon1}.png" width="32px"/>&nbsp;
					<a href="/pds/down?pno=${p.pno}&order=1">${p.fname1}</a>
					(${p.fsize1}KB, ${p.fdown1}회 다운로드 함)</td>
		    </tr>
			<c:if test="${p.fname2 ne '-'}">
				<tr>
					<td colspan="2" class="tbbg4 patxt"> 첨부2
						<img src="/img/${atticon2}.png" width="32px"/>
						<a href="/pds/down?pno=${p.pno}&order=2">${p.fname2}</a>
						(${p.fsize2}KB, ${p.fdown2}회 다운로드 함)</td>
				</tr>
			</c:if>
			<c:if test="${p.fname3 ne '-'}">
				<tr>
					<td colspan="2" class="tbbg4 patxt"> 첨부3
						<img src="/img/${atticon3}.png" width="32px"/>&nbsp;
						<a href="/pds/down?pno=${p.pno}&order=3">${p.fname3}</a>
						(${p.fsize3}KB, ${p.fdown3}회 다운로드 함)</td>
				</tr>
			</c:if>
		</table> <!-- 본문-->
	
	    <div>
		    <div class="row">
		        <div class="col-5 offset-1" >
					<c:if test="${not empty UID and UID ne bd.userid}">
						<button type="button" class="btn btn-warning">
							<i class="fas fa-edit"></i> 수정하기</button>
						<button type="button" class="btn btn-danger" id="pdrmvbtn">
							<i class="fas fa-trash-alt"></i> 삭제하기</button>
					</c:if>
		        </div>
		        <div class="col-5 text-right">
					<button type="button" class="btn btn-success" id="pdthumbtn">
						<i class="far fa-thumbs-up" ></i> 추천하기</button>
					<button type="button" class="btn btn-light" id="listpdsbtn">
						<i class="fas fa-list" ></i> 목록으로</button>
		        </div>
		    </div>
		    <div class="row"></div>
		    <div class="row"></div>
		    <p></p>
	    </div><!-- 버튼들-->
	    <input type="hidden" id="pno" value="${param.pno}"/>
	</div> <!-- 본문들-->
	
	<div class="replies">
	
		<div class="col-10 offset-1" style="border-top: 2px solid black; border-bottom: 2px solid black">
			<div>
			    <p></p>
			    <i class="fas fa-comments fa-2x">나도 한마디</i>
			    <hr>
			</div>
			<p></p>
			<div class="row">
			    <div class="col-3"><h6>geek</h6></div>
			    <div class="col-9">
			    	<div class="row">
			            <p class="col" style="background: gold">2021-05-21 14:43:49</p>
					</div>	
					<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse suscipit nunc volutpat condimentum tincidunt. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.</p>
					<div class="row" style="background: turquoise">
			            <h5 class="col">geek2</h5>
			            <p class="col text-right">2021-05-21 14:59:43</p>
			        </div>
			        <p>Phasellus sit amet dui ex.</p>
			    </div>
			</div> <!-- 댓글1-->
			<hr>
			<div class="row">
			    <div class="col-3"><h6>geek</h6></div>
			    <div class="col-9">
			        <div class="row">
			            <p class="col" style="background: gold">2021-05-21 14:43:49</p>
			        </div>
			        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse suscipit nunc volutpat condimentum tincidunt. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.</p>
			    </div>
			</div> <!-- 댓글2-->
			<hr>
			<div class="row">
			    <div class="col-3"><h6>geek</h6></div>
			    <div class="col-9">
			        <div class="row">
			            <p class="col" style="background: gold">2021-05-21 14:43:49</p>
			        </div>
			        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse suscipit nunc volutpat condimentum tincidunt. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.</p>
			    </div>
			</div> <!-- 댓글3-->
			<hr>
			<div class="row">
			    <div class="col-3"><h6>geek</h6></div>
			    <div class="col-9">
			        <div class="row">
			            <p class="col" style="background: gold">2021-05-21 14:43:49</p>
			        </div>
			        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse suscipit nunc volutpat condimentum tincidunt. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.</p>
			    </div>
			</div> <!-- 댓글4-->
			<p></p>
		</div> <!-- 댓글 목록-->
	
		<div class="row">
		    <form name="replyfrm" id="replyfrm" class="card card-body bg-light col-10 offset-1">
		        <div class="form-group row form-inline justify-content-center">
		            <label for="reply" class="text-success">작성자</label>
		            &nbsp;&nbsp;&nbsp;
		            <textarea type="text" name="reply" id="reply" rows="5" class="form-control col-8"></textarea>
		            &nbsp;&nbsp;&nbsp;
		            <button type="button" class="btn btn-dark form-control"><i class="fas fa-comment-dots"></i>&nbsp;댓글쓰기</button>
		        </div>
		    </form>
		</div> <!-- 댓글 작성창-->
		
	</div> <!-- 댓글-->
	
</div>	