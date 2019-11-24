<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title></title>
</head>
<body>
<div class="nav-container">
          <nav class="navbar" style="background-color: #F5F5DC !important">
             <img class=img-logo src= "img/logo.png" alt="" style="width: 115px !important">
             <input type="submit" alt="log out" value=<%= session.getAttribute("username")%> style="float:right;">
          </nav>
    </div>
</body>
</html>
