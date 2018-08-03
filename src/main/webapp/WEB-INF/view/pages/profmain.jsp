<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import = "java.sql.*" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="UTF-8">
    <title>Professor Main</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
</head>

<body>
<%@include file="Include/top.jsp" %>
<div class="container">
<br /><br />
<h1 class="text-center">안녕하세요, ${ userInfo.userName } 교수님!</h1>
<br /><br /><br />

<h3>&nbsp;▷ 학생 목록 </h3>
<br />
<table class="table table-bordered table-hover text-center">
<thead class="table-primary">
<tr>
<td>NAME</td>
<td>I D</td>
<td>PHONE NUM</td>
<td>MAIL ADDRESS</td>
</tr>
</thead>
<%
Connection conn = null;
PreparedStatement pstmt = null;
ResultSet rs = null;

Class.forName("org.postgresql.Driver");

String jdbcDriver = "jdbc:postgresql://ec2-107-22-192-11.compute-1.amazonaws.com:5432/db5n1ro71i1tv?sslmode=require";
String dbUser = "ueberfgroelzuy";
String dbPass = "c2b7d39d9545095a10e041f7517e1a4166fdceae619ef9ff4257bc50da2d61e7";

conn = DriverManager.getConnection(jdbcDriver, dbUser, dbPass);

pstmt = conn.prepareStatement("select * from users");

rs = pstmt.executeQuery();


while(rs.next()) { 
	if (rs.getInt("type") == 2){
%>  
<tbody class="table-default">
<tr>
<td><%= rs.getString("user_name") %></td>
<td><%= rs.getString("id") %></td>
<td><%= rs.getString("phone") %></td>
<td><%= rs.getString("mail_address") %></td>
</tr>
</tbody>
<% 
}}

if(rs !=null) rs.close();
if(pstmt != null) pstmt.close();
if(conn!= null) conn.close();
%>
</table>
<br /><br /><br />

<h3>&nbsp;▷ 등록된 과목 목록 </h3>
<br />
<table class="table table-bordered table-hover text-center">
<thead class="text-strong table-primary">
<tr>
<td>교과번호</td>
<td>교과목명</td>
<td>담당교수</td>
<td>요일</td>
<td>강의시간(부터)</td>
<td>강의시간(까지)</td>
<td>교과구분</td>
<td>학점</td> 
<td>정원</td>
</tr>
</thead>
<%
Connection conn2 = null;
PreparedStatement pstmt2 = null;
ResultSet rs2 = null;


conn2 = DriverManager.getConnection(jdbcDriver, dbUser, dbPass);
pstmt2 = conn2.prepareStatement("select * from courses");
rs2 = pstmt2.executeQuery();

String typeA = "전공";
String typeB = "교양";



while(rs2.next()) {
    
%>  
<tbody class="table-default">
<tr>
<td><%= rs2.getString("subject_code") %></td>
<td><%= rs2.getString("subject_name") %></td>
<td><%= rs2.getString("professor_name") %></td>
<td><%= rs2.getString("week") %></td>
<td><%= rs2.getString("period_from") %></td>
<td><%= rs2.getString("period_to") %></td>
<td><%= rs2.getString("type") %></td>
<td><%= rs2.getString("credit") %></td>
<td><%= rs2.getString("quota") %></td>
</tr>
</tbody>
<%
}

if(rs2 !=null) rs2.close();
if(pstmt2 != null) pstmt2.close();
if(conn2 != null) conn2.close();
%>
</table>
<form class="text-center" action="/addsub">
    <button class="btn btn-info" type="submit">과목등록</button>
    </form>
    <br /><br /><br /><br />
    </div>
</div>
</body>
</html>