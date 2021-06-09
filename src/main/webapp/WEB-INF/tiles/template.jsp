<%@ page contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>

<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css" integrity="sha384-B0vP5xmATw1+K9KRQjQERJvTumQW0nPEzvF6L/Z6nronJ3oUOFUFpCjEUQouq2+l" crossorigin="anonymous">
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.3/css/all.css" integrity="sha384-SZXxX4whJ79/gErwcOYf+zWLeJdY/qpuqC4cAa9rOGUstPomtqpuNWT9wdPEn2fk" crossorigin="anonymous">

<!doctype html>
<html lang = "ko">
    <head>
        <meta charset="UTF-8">
        <title>Lorem Ipsum</title>
        <link rel="stylesheet" href="/mvc/css/base.css">
        <link rel="stylesheet" href="/mvc/css/project.css">
    </head>

        <div id = "container">
        	<tiles:insertAttribute name="header"/>
        	
        	<tiles:insertAttribute name="main"/>
        	        	
        	<tiles:insertAttribute name="footer"/>
        </div>


        <!-- 로그인 폼 modal -->
        <div class= "modal" id="loginmodal" tabindex="-1" >
            <div class="modal-dialog">
                <div class="modal-content">

                    <div class="modal-header">
                        <h1>로그인</h1>
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">닫기</button>
                    </div>

                    <form name="loginfrm" id="loginfrm" method="post">
                        <div class="modal-body">
                            <div class="form-group row">
                                <label for="userid" class="col-form-label col-4 text-right">아이디</label>
                                <input type="text" name="userid" id="userid" class="form-control col-5">
                            </div>
                            <div class="form-group row">
                                <label for="passwd" class="col-form-label col-4 text-right">비밀번호</label>
                                <input type="password" name="passwd" id="passwd" class="form-control col-5">
                            </div>
                            <div class="form-group row col offset-4">
                                <input class="form-check-input" type="checkbox" name="loginstat" id="loginstat">
                                <label class="form-check-label">로그인 상태 유지</label>
                            </div>
                        </div>

                        <div class="modal-footer justify-content-center" style="background: gainsboro" >
                            <div class="form-group">
                                <button type="button" class="btn btn-danger">로그인</button>
                            </div>
                            <div class="form-group">
                                <button type="button" class="btn btn-warning">아이디/비밀번호 찾기</button>
                            </div>
                        </div>
                    </form>

                </div>
            </div>
        </div>


    <!-- jQuery and Bootstrap Bundle (includes Popper) -->
    <script src="https://code.jquery.com/jquery-3.5.1.min.js" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-Piv4xVNRyMGpqkS2by6br4gNJ7DXjqk09RmUpJ8jgGtD7zP9yug3goQfGII0yAns" crossorigin="anonymous"></script>
    <script src="/js/join.js"></script>

    </body>
</html>
