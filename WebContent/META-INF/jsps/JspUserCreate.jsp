<%@page import="java.util.ArrayList"%>
<%@page import="com.tp.entities.User"%>
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
    username
    <input type="text" name="username"/><br>
    firstname
    <input type="text" name="firstname"/><br>
    lastname
    <input type="text" name="lastname"/><br>
    address
    <input type="text" name="address"/><br>
    phone
    <input type="text" name="phone"/><br>
    email
    <input type="text" name="email"/><br>
    password
    <input type="password" name="password"/><br>
    <form action="/TP_J2E/url/user/" method="POST">
    <input type="submit" value="Create User" >
    </form>




</body>
</html>
