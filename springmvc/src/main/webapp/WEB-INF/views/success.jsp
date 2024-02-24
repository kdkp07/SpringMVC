<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Success</title>
</head>
<body>
<h3 class="text-center">${Header }</h3>
		<p class="text-center">${Desc }</p>
		
		<hr>
	<h1>Welcome , ${user.name }</h1>
	<h1>Your email is ${user.email }</h1>
	<h2>Your password is ${user.password } ,Please try to secure it</h2>
</body>
</html>