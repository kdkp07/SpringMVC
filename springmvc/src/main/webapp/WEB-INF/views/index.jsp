<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.util.List" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Home</title>
</head>
<body>
	<h1>This is a home page</h1>
	<%
	String name = (String)request.getAttribute("name");
	Integer id = (Integer)request.getAttribute("Id");
	List<String> li =(List<String>)request.getAttribute("Languages");
	
	%>
	
	<h1>Name is <%=name%></h1>
	<h2>Id is <%= id %></h2>
	
	<% for(String s : li){
		%>
		<h1><%=s %></h1>
	<%
	}
	%>
	
</body>
</html>