<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="java.util.List"%>
<%@page import="dto.UserInfoDto"%>

<html>
<head>
<meta charset="UTF-8">
<title>ユーザー一覧</title>
</head>
<body>
	<h1>ユーザー一覧</h1>
	<table>
		
		<thead>
			<tr>
				<th>メールアドレス</th>
				<th>ユーザID</th>
				<th>パスワード</th>
				<th>氏名</th>
				<th>氏名(フリガナ)</th>
			</tr>
		</thead>
		<tbody>
	<%List<UserInfoDto> userList = (List<UserInfoDto>) request.getAttribute("userList");%>
	<%for(UserInfoDto dto:userList) { %>
					<tr>
					<td><%= dto.getEmail()%></td>
					<td><%= dto.getUserId()%></td>
					<td><%= dto.getPassword()%></td>
					<td><%= dto.getUserName()%></td>
					<td><%= dto.getNameKana()%></td>
				    </tr>
	
	<% } %>

		
		</tbody>
	</table>
</body>
</html>
