<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입 페이지입니다</title>
<meta name="viewport" content="width=device-width" />
<link rel="stylesheet" href="libs/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" href="css/common.css">
<script type="text/javascript" src="libs/jquery/jquery-3.1.0.min.js"></script>

</head>
<body>
    <article class="container">
        <div class="col-md-12">
            <div class="page-header">
                <h1>회원가입</h1>
            </div>
            <form class="form-horizontal" action="/joined" method="post">
                <div class="form-group">
                    <label class="col-sm-3 control-label"
                        for="inputName">아이디</label>
                    <div class="col-sm-6">
                        <input class="form-control" name="id"
                            type="text" placeholder="아이디">
                    </div>
                    <div style="color: #FF0000">${ message }</div>
                </div>
                <div class="form-group">
                    <label class="col-sm-3 control-label"
                        for="inputPassword">비밀번호</label>
                    <div class="col-sm-6">
                        <input class="form-control" name="password"
                            type="password" placeholder="비밀번호">
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-3 control-label"
                        for="inputName">이름</label>
                    <div class="col-sm-6">
                        <input class="form-control" name="userName"
                            type="text" placeholder="이름">
                    </div>
                </div>

                <div class="form-group">
                    <label class="col-sm-3 control-label"
                        for="inputType">가입유형</label>
                    <div class="col-sm-6">
                         <label for="radio-2"> <input
                            type="radio" name="type" id="radio-1"
                            value="2" />학생
                        </label>
                    </div>
                </div>

                <div class="form-group">
                    <label class="col-sm-3 control-label"
                        for="inputEmail">이메일</label>
                    <div class="col-sm-6">
                        <input class="form-control" name="mailAddress"
                            type="email" placeholder="이메일">
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-3 control-label"
                        for="inputNumber">휴대폰번호</label>
                    <div class="col-sm-6">
                        <div class="input-group">
                            <input type="tel" class="form-control"
                                name="phone" placeholder="- 없이 입력해 주세요" />
                        </div>
                    </div>
                </div>
                <div class="form-group">
                    <div class="col-sm-12 text-center">
                        <button class="btn btn-primary" type="submit">회원가입</button>
                                                       <button type="button" class="btn btn-warning" onclick="goBack()">뒤로가기</button>
               <script>function goBack(){
                          window.history.back();
                         }
               </script> 
                    </div>
                </div>
            </form>
            <hr>
        </div>
    </article>

</body>
</html>