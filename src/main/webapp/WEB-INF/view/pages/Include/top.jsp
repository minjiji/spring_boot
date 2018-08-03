<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<nav class="navbar navbar-light bg-light ">
<ul class="nav justify-content-center">
  <li class="nav-item">
    <a class="nav-link">${ userInfo.userName }님</a>
  </li>
  <li class="nav-item">
    <a class="nav-link active" href="/mypage">정보수정</a>
  </li>
  <li class="nav-item">
    <a class="nav-link" href="/logout">로그아웃</a>
  </li>
</ul>
</nav>