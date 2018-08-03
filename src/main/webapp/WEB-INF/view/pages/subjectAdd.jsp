<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
<meta charset="UTF-8">
<title>강의 등록</title>
<meta name="viewport" content="width=device-width" />
<link rel="stylesheet" href="libs/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" href="css/common.css">
<script type="text/javascript" src="libs/jquery/jquery-3.1.0.min.js"></script>
</head>
<body>
    <article class="container">
        <div class="col-md-12">
            <div class="page-header">
                <h1>강의 등록</h1>
            </div>
            <form class="form-horizontal" action="/addSubject"
                method="post">

                <div class="form-group">
                    <label class="col-sm-3 control-label"
                        for="inputCode">과목 코드</label>
                    <div class="col-sm-6">
                        <input class="form-control" name="subjectCode"
                            type="text" placeholder="과목 코드" maxlength="4">
                        <p class="help-block">4자이하로 적어주세요</p>
                    </div>
                </div>

                <div class="form-group">
                    <label class="col-sm-3 control-label"
                        for="inputTime">강의요일</label>
                    <div class="col-sm-6">
                        <input class="form-control"
                            name="week" placeholder="강의요일" list="Day">
                        <datalist id="Day">
                            <option value="월요일" />
                            <option value="화요일" />
                            <option value="수요일" />
                            <option value="목요일" />
                            <option value="금요일" />
                        </datalist>
                    </div>
                </div>

                <div class="form-group">
                    <label class="col-sm-3 control-label"
                        for="inputCode">강의 시간(교시)</label>
                    <div class="col-sm-3">
                        <div class="input-group">
                            <input class="form-control"
                                name="periodFrom" type="text"
                                placeholder="    교시부터" maxlength="1">
                            <p class="help-block">숫자로 적어주세요.</p>
                        </div>
                    </div>
                    <div class="col-sm-3">
                        <div class="input-group">
                            <input class="form-control" name="periodTo"
                                type="text" placeholder="    교시까지" maxlength="1">
                        </div>
                    </div>
                </div>

                <div class="form-group">
                    <label class="col-sm-3 control-label"
                        for="inputName">교과목명</label>
                    <div class="col-sm-6">
                        <input class="form-control" name="subjectName"
                            type="text" placeholder="교과목명">
                    </div>
                </div>

                <div class="form-group">
                    <label class="col-sm-3 control-label"
                        for="inputProName">담당교수</label>
                    <div class="col-sm-6">
                        <input class="form-control" name="professorName"
                            type="text" placeholder="담당교수 성함을 적어주세요">
                    </div>
                </div>

                <div class="form-group">
                    <label class="col-sm-3 control-label"
                        for="inputType">교과구분</label>
                    <div class="col-sm-6">
                        <label for="radio-1"> <input
                            type="radio" name="type" id="radio-1"
                            value="1" />전공
                        </label> <label for="radio-2"> <input
                            type="radio" name="type" id="radio-2"
                            value="2" />교양
                        </label>
                    </div>
                </div>

                <div class="form-group">
                    <label class="col-sm-3 control-label"
                        for="inputNumber">학점</label>
                    <div class="col-sm-6">
                        <div class="input-group">
                            <input type="text" class="form-control"
                                name="credit" placeholder="학점" maxlength="1"/>
                        </div>
                    </div>
                </div>

                <div class="form-group">
                    <label class="col-sm-3 control-label"
                        for="inputNumber">정원</label>
                    <div class="col-sm-6">
                        <div class="input-group">
                            <input type="text" class="form-control"
                                name="quota" placeholder="정원" maxlength="3"/>
                        </div>
                    </div>
                </div>

                <div class="form-group">
                    <div class="col-sm-12 text-center">
                        <button class="btn btn-primary" type="submit">등록</button>
                        <button type="button" class="btn btn-warning"
                            onclick="goBack()">취소</button>
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