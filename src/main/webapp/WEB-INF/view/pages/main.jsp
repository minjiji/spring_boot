<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
    <title>Main</title>
    <meta name="viewport" content="width=device-width" />
    <link rel="stylesheet" href="libs/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="css/common.css">
    <script type="text/javascript" src="libs/jquery/jquery-3.1.0.min.js"></script>
    <style>
    html,
      body {
        height: 100%;
      }
      
      body {
        align-items: center;
        background-color: #f5f5f5;
      }
      .form-signin {
        width: 100%;
        max-width: 330px;
        padding: 15px;
        margin: auto;
      }
      .form-signin .checkbox {
        font-weight: 400;
      }
      .form-signin .form-control {
        position: relative;
        box-sizing: border-box;
        height: auto;
        padding: 10px;
        font-size: 16px;
      }
      .form-signin .form-control:focus {
        z-index: 2;
      }
      </style>
 </head>
<body class="text-center">
  <div style="text-align: center; padding-top; 50px;">
    <br /> <h1>${ userInfo.userName }님, 반갑습니다!</h1>
    <br /><br />
    <form class="form-signin" action="/edit">
    <button class="btn btn-info" type="submit" <%-- style="position: absolute; right: 0;--%>">정보수정</button>
    </form>
     <form class="form-signin" action="/logout">
    <button class="btn btn-danger" type="submit">로그아웃</button>
    </form>
  </div>
 </body>
 </html>