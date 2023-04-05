<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="entity.UserInfoEntity"%>
<!DOCTYPE html>
<html lang="ja">

<head>
<meta charset="uft-8">

<link rel="stylesheet" type="text/css" href="">
</head>

<body id="confirm">

	<tbody>
		<form method="post" action="./myPage">
			<tr>
				<th class="headRow" scope="row">メールアドレス</th>
				<br>
				<td><input class="input-field" name="email" id="email"
					type="text" maxlength="255" value=" request.getAttribute("email")">
						<%
							String email = (String) request.getAttribute("email");
							%> <%=email%>
					</td>
				<br>
			</tr>



			<tr>
				<th class="headRow" scope="row">ユーザID</th>
				<br>
				<td><input class="input-field" name="userId" id="userId"
					type="text" maxlength="255" value=" request.getAttribute("userId")"><br></td>
			</tr>



			<tr>
				<th class="headRow" scope="row">パスワード</th>
				<br>
				<td><input class="input-field" name="password" id="password"
					type="text" maxlength="255" value="request.getAttribute("password")"><br></td>
			</tr>
			<tr>
				<th class="headRow" scope="row">氏名</th>
				<br>
				<td><input class="input-field" name="userName" id="userName"
					type="text" maxlength="255" value="request.getAttribute("userName")"><br>
			</tr>

			<tr>
				<th class="headRow" scope="row">氏名（フリガナ）</th>
				<br>
				<td><input class="input-field" name="nameKana" id="nameKana"
					type="text" maxlength="255" value="request.getAttribute("nameKana")"><br>
			</tr>


		</form>
	</tbody>
	</table>


</body>