<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Home</title>
<meta name="viewport" content="width=device-width" />
<link rel="stylesheet" href="libs/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" href="css/common.css">
<script type="text/javascript" src="libs/jquery/jquery-3.1.0.min.js"></script>
</head>
<body class="text-center">
  <div class="wrapper">
    <h2 class="form-signin-heading">사용자 정보</h2>
    <table class="table table-striped table-bordered table-hover">
      <caption>테이블로 표시 방법</caption>
      <thead>
        <tr>
          <th class="text-center">이름</th>
          <th class="text-center">E-mail</th>
          <th class="text-center">전화번호</th>
          <th class="text-center">로그인시간</th>
        </tr>
      </thead>
      <tbody>
        <tr>
          <td>${ userInfo.userName }</td>
          <td>${ userInfo.mailAddress }</td>
          <td>${ userInfo.phone }</td>
          <td>${ userInfo.loginTime }</td>
        </tr>
      </tbody>
    </table>

  </div>
</body>
</html>