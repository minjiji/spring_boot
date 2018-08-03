<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>My Page</title>
    <meta name="viewport" content="width=device-width" />
    <link rel="stylesheet" href="libs/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="css/common.css">
    <script type="text/javascript" src="libs/jquery/jquery-3.1.0.min.js"></script>
</head>
<body>
 <div class="container">
    <div class="row">
        <div class="col-sm-12">
            <div class="col-sm-2"></div>
                <div class="col-sm-9">
                    <h2 class="text-center">회원 정보 수정하기</h2>                    
                    <form action="/change" method="post">                    
                    <table class="table table-striped">
                      <tr>
                        <td>아이디</td>
                        <td>${ userinfo.id }</td>
                      </tr>
                      
                      <tr>
                        <td>이름</td>
                        <td>${ userinfo.userName }</td>
                      </tr>
                       
                      <tr>
                        <td>이메일</td>
                        <td>
                        <input type="email" value="${ userinfo.mailAddress }" name="mailAddress" class="form-control">
                        </td>
                      </tr>
                       
                      <tr>
                        <td>전화번호</td>
                        <td>
                        <input type="tel" value="${ userinfo.phone }" name="phone" class="form-control">
                        </td>
                      </tr>  
                                          
                    <tr>
                         <td colspan="2" class="text-center">
                         <input type="submit" value="회원정보 수정하기" class="btn btn-success">
           <button type="button" class="btn btn-warning" onclick="goBack()">뒤로가기</button>
               <script>function goBack(){
	                      window.history.back();
                         }
               </script>                                                 
                         </td>    
                    </tr>                          
                    </table>                
                </form>                        
                </div>
        </div>
    </div>
</div>
</body>
</html>