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
<form action="./userList" method="post">
	<h1>ユーザー一覧</h1>
	<table>
		
		<thead>
			<tr>
				<th>メールアドレス</th>
				<th>ユーザID</th>
				<th>パスワード</th>
				<th>氏名</th>
				<th>氏名(フリガナ)</th>
				<th><a href="" target="_blank">編集</a></th>
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
<td><input type="button" value="編集" name="row" onclick="location.href='ChangeUserList.jsp?userId=<%= dto.getUserId()%>&email=<%= dto.getEmail()%>&password=<%= dto.getPassword()%>&userName=<%= dto.getUserName()%>&nameKana=<%= dto.getNameKana()%>'">
</td>
				    </tr>
	
	<% } %>

		
		</tbody>
	</table>
	</form>
</body>
</html>
