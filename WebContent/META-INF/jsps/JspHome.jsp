<%@page import="java.util.Map"%>
<%@page import="java.util.HashMap"%>
<%@page import="com.tp.entities.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Home</title>
    <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.20/css/jquery.dataTables.css">
    <script type="text/javascript" charset="utf8" src="https://cdn.datatables.net/1.10.20/js/jquery.dataTables.js"></script>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="https://cdn.datatables.net/1.10.20/css/jquery.dataTables.min.css">
    <link rel="stylesheet" href="https://cdn.datatables.net/1.10.20/css/dataTables.bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/semantic-ui/2.3.1/semantic.min.css">
    <link rel="stylesheet" href="https://cdn.datatables.net/1.10.20/css/dataTables.semanticui.min.css">
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
    <script type="text/javascript" src="https://cdn.datatables.net/1.10.20/js/jquery.dataTables.min.js"></script>
    <script type="text/javascript" src="https://cdn.datatables.net/1.10.20/js/dataTables.semanticui.min.js"></script>
    <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/semantic-ui/2.3.1/semantic.min.js"></script>


</head>
<body>
<%int idCounter = 0; %>
    <div class="nav-container">
          <nav class="navbar" style="background-color: #F5F5DC !important">
             <img class=img-logo src= "img/logo.png" alt="" style="width: 115px !important">
                <input type="submit" alt="log out" value=<%= session.getAttribute("username")%> style="float:right;">
          </nav>
    </div>
<div class="tab-container" style="margin:20px;">
    <table  id="Tab" class="display" style="width:90%; margin:auto;">
        <thead>
            <tr>
                <th>Username</th>
                <th>First Name</th>
                <th>Photo</th>
                <th>Last Name</th>
                <th>Address</th>
                <th>Phone</th>
                <th>Email</th>
            </tr>
        </thead>
        <tbody>
        <% Map<Integer, User> mapUser = (HashMap<Integer, User>) request.getAttribute("user");%>
<% for(Map.Entry<Integer, User> u : mapUser.entrySet()) {%>
            <tr>
                <td><%= u.getValue().getUserName() %></td>
                <td><%= u.getValue().getFirstName() %></td>
                <td></td>
                <td><%= u.getValue().getLastName() %></td>
                <td><%= u.getValue().getAddress() %></td>
                <td><%= u.getValue().getPhone() %></td>
                <td><%= u.getValue().getEmail() %></td>
                <td> <form action="/TP_J2E/site/user/delete/<%= u.getValue().getId() %>?Action=DELETE" method="Post" onsubmit="return validation(this);">
                            <input type="submit" value="delete"></form></td>
            </tr>
            <%
            }
            %>

         </tbody>
        </table>
        </div>
           <div>
                <form action="/TP_J2E/Create" method="GET">
                <input type="submit" value="Create">
                </form>
                </div>
         <script type="text/javascript">
                $(document).ready( function () {
                    $('#Tab').DataTable();
                } );
          </script>
</body>
</html>
