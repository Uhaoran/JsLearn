<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>会員登録</title>
</head>
<body>
	<article>
		<h1>会員情報登録</h1>
		<h1>
			<%
			String userName = (String) request.getAttribute("userName");
			%>
			こんにちは、<%=userName%>
			さん！
		</h1>
		<h1>
			<%
			String birthday = (String) request.getAttribute("birthday");
			%>
			こんにちは、<%=birthday%>
			さん！
		</h1>
		<h1>
			<%
			String tel = (String) request.getAttribute("tel");
			%>
			こんにちは、<%=tel%>
			さん！
		</h1>
	</article>
</body>
</html>