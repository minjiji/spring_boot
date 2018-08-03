<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
    <title>Login</title>
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
      .form-signin input[type="text"] {
        margin-bottom: -1px;
        border-bottom-right-radius: 0;
        border-bottom-left-radius: 0;
      }
      .form-signin input[type="password"] {
        margin-bottom: 10px;
        border-top-left-radius: 0;
        border-top-right-radius: 0;
      }
    </style>
 </head>
  <body class="text-center">
    <form class="form-signin" action="/check-login" method="POST">
      <h1 class="">Login</h1>
      <br />
      <label for="inputId" class="sr-only">ID</label>
      <input type="text" id="id" name="id" class="form-control" placeholder="ID" required autofocus>
      <label for="Password" class="sr-only">Password</label>
      <input type="password" id="password" name="password" class="form-control" placeholder="Password" required>
      <div class="text-danger">${ message }</div>
      <button class="btn btn-lg btn-primary btn-block" type="submit">Login</button>
      
    </form>
  </body>
 </html>