<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="dto.UserInfoDto"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ユーザー編集</title>
</head>
<body>
	<h1>ユーザー編集</h1>
	<% String userId = request.getParameter("userId"); %>
	<% String email = request.getParameter("email"); %>
	<% String password = request.getParameter("password"); %>
	<% String userName = request.getParameter("userName"); %>
	<% String nameKana = request.getParameter("nameKana"); %>

	<form method="post" action="./changeUserList">
		<label for="userId">ユーザID:</label> <input type="text" id="userId" name="userId"
			value="<%= userId %>"><br>
		<br> <label for="email">メールアドレス:</label> <input type="text"
			id="email" name="email" value="<%= email %>"><br>
		<br> <label for="password">パスワード:</label> <input type="text"
			id="password" name="password" value="<%= password %>"><br>
		<br> <label for="userName">氏名:</label> <input type="text"
			id="userName" name="userName" value="<%= userName %>"><br>
		<br> <label for="nameKana">氏名(フリガナ):</label> <input type="text"
			id="nameKana" name="nameKana" value="<%= nameKana %>"><br>
		<br>
		      <input type="submit" value="更新">
	</form>

</body>
</html>
