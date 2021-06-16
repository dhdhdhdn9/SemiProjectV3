<%@ page pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<c:set var="fnames" value="${fn:split(g.fnames, '/' )}" />
<c:set var="fsizes" value="${fn:split(g.fsizes, '/' )}" />
<c:set var="baseURL" value="http://localhost/cdn/"/>

<div id = "main">

	<div>
	    <p><br></p>
	    <i class="fas fa-image fa-2x"> 갤러리</i>
	    <hr>
	</div>
	
	<div>
		<div>
	        <div class="form-group row">
	            <div class="col-5 offset-1" >
	                <button type="button" class="btn btn-light"><i class="fas fa-chevron-left"></i> 이전 게시물</button>
	                <button type="button" class="btn btn-light"><i class="fas fa-chevron-right"></i> 다음 게시물</button>
	            </div>
	            <div class="col-5 text-right">
	                <button type="button" class="btn btn-light"><i class="fas fa-plus-circle"> 새글쓰기</i></button>
	            </div>
	        </div>
	    </div> <!-- 버튼들-->
	
	    <table class="table col-10 offset-1">
	        <tr class="tbbg1 text-center">
	            <th colspan="2"><h2>${g.title}</h2></th>
	        </tr>
	        <tr class="tbbg2">
	            <td style="width: 50%; text-align: left">${g.userid}</td>
	            <td class="text-right">${g.regdate} / ${g.views} / ${g.thumbup}</td>
	        </tr>
	        <tr class="tbbg3"><td colspan="2">
	                <c:forEach var="f" items="${fnames}">
					<c:set var="pos" value="${fn:indexOf(f, '.')}" />
					<c:set var="fname" value="${fn:substring(f, 0, pos)}" />
					<c:set var="fext" value="${fn:substring(f, pos+1, fn:length(f))}" />
					<div>
						<img src="${baseURL}${fname}${g.uuid}.${fext}" class="img-fluid">
					</div>
					</c:forEach>
	        </td></tr> <!-- 본문-->
			<!-- 저장된 것을 /로 구분-->
			<c:forEach begin="0" end="${fn:length(fnames) - 1}" var="i">
				<tr> <!-- 첨부파일 목록 -->
					<td colspan="2" class="tbbg4">
						<img src="/img/png.png" width="20px">
						${fnames[i]} (${fsizes[i]}kb)</td>
				</tr>
			</c:forEach>
	    </table> <!-- 본문-->
	
	    <div>
	        <div class="row">
	            <div class="col-5 offset-1" >
	                <button type="button" class="btn btn-warning">
                        <i class="fas fa-edit"></i> 수정하기</button>
	                <button type="button" class="btn btn-danger">
						<i class="fas fa-trash-alt"></i> 삭제하기</button>
	            </div>
	            <div class="col-5 text-right">
	                <button type="button" class="btn btn-light">
						<i class="fas fa-list"> 목록으로</i></button>
	            </div>
	        </div>
	        <div class="row"></div>
	        <div class="row"></div>
	        <p></p>
	    </div><!-- 버튼들-->
	
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