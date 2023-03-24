<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <title>会員登録</title>
    </head>
    <body>
        <article><h1>会員情報登録</h1>
        <form action="./CreateUserServlet" method="post">
            <p><label for="name">名前
            <input type="text" id="userName" name="userName" alt=""></label></p>
            <p><label for="name">生年月日
            <input type="text" id="birthday" name="birthday" alt=""></label></p>
            <p><label for="name">電話番号
            <input type="text" id="tel" name="tel" alt=""></label></p>
            <p><input type="submit" name="保存"></p>
        </form>
        
        <h1><% String userName = (String) request.getAttribute("userName"); %>
    こんにちは、<%= userName %> さん！</h1>
        </article>
    </body>
</html>