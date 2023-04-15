<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ユーザー情報</title>
</head>
<body>
	<form action="./changeMyPage" method="post">
	<h1>ユーザー情報</h1>
	<p>
		メールアドレス：<input type="text" name="email" value="${email}">
	</p>
	<p>
		ユーザーID：<input type="text" name="userId" value="${userId}">
	</p>
	<p>
		パスワード：<input type="text" name="password" value="${password}">
	</p>
	<p>
		ユーザー名：<input type="text" name="userName" value="${userName}">
	</p>
	<p>
		カナ氏名：<input type="text" name="nameKana" value="${nameKana}">
	</p>
	<button type="submit">変更</button>
	</form>
</body>
</html>