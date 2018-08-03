<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
<meta charset=UTF-8>
<title>학생 페이지</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
</head>
<body>
<%@include file="Include/top.jsp" %>
    <div class="container">
        
        <div class="page-header">
            <h2 class="text-center">${ userInfo.userName }님의 수강신청 목록</h2>
        </div>
        <form id="board" name="mysubject" method="post">
            <table class="table table-striped table-hover">
                <thead>
                    <tr>
                        <th>교과번호</th>
                        <th>교과목명</th>
                        <th>담당교수</th>
                        <th>수업요일</th>
                        <th>강의시간(부터)</th>
                        <th>강의시간(까지)</th>
                        <th>교과구분</th>
                        <th>학점</th>
                        <th>정원</th>
                        <th>수강취소</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach var="mysubject" items="${mySubjectList}">
                        <tr>
                            <td>${mysubject.subject_code}</td>
                            <td>${mysubject.subject_name}</td>
                            <td>${mysubject.professor_name}</td>
                            <td>${mysubject.week}</td>
                            <td>${mysubject.period_from}</td>
                            <td>${mysubject.period_to}</td>
                            <td>${mysubject.type}</td>
                            <td>${mysubject.credit}</td>
                            <td>${mysubject.quota}</td>
                            <td><button class="btn btn-danger"
                                    type="button" onclick="location.href='/cancleSubject?code=${mysubject.subject_code}'">취소</button></td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
        </form>
        <br> <br>
            <div style="color: #FF0000">${ message }</div>
        <div class="page-header">
            <h2 class="text-center">강의 목록</h2>
        </div>
        <form id="boardForm" name="subject" method="post" action="/chooseSubject">
            <table class="table table-striped table-hover">
                <thead>
                    <tr>
                        <th>교과번호</th>
                        <th>교과목명</th>
                        <th>담당교수</th>
                        <th>수업요일</th>
                        <th>강의시간(부터)</th>
                        <th>강의시간(까지)</th>
                        <th>교과구분</th>
                        <th>학점</th>
                        <th>정원</th>
                        <th>수강신청</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach var="subject" items="${subjectList}">
                        <tr>
                            <td>${subject.subject_code}</td>
                            <td>${subject.subject_name}</td>
                            <td>${subject.professor_name}</td>
                            <td>${subject.week}</td>
                            <td>${subject.period_from}</td>
                            <td>${subject.period_to}</td>
                            <td>${subject.type}</td>
                            <td>${subject.credit}</td>
                            <td>${subject.quota}</td>
                            <td><button
                                    class="btn btn-success"
                                    type="button" onclick="location.href='/chooseSubject?code=${subject.subject_code}'">신청</button></td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
        </form>
    </div>
</body>
</html>