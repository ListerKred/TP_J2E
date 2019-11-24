<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Login</title>
</head>
<body>
    <div>
        <div style="width: 18rem; margin: 100px auto">
            <div>
                <form action="/TP_J2E/login" method="POST">
                    username
                    <input type="text" name="username"/><br>
                    password
                    <input type="password" name="pw"/>

                    <input type="submit" value="Loggin">
                </form>
            </div>
        </div>
    </div>
</body>
</html>
