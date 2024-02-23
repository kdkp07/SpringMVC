<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.time.LocalDateTime"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Help</title>
</head>
<body>
    <h1>This is a help page</h1>

    <!-- Using JSP expression language -->
    <h1>Name is  : ${name }</h1>
    <h3>Roll number is : ${RollNo }</h3>
    <h4>Time is : ${time }</h4>
    <h2>Is he hungry : ${isHungry }</h2> 

    <hr>
    
    <!-- Iterate over 'marks' list -->
    <c:forEach var="item" items="${marks}">
        <h1>${item}</h1>
    </c:forEach>
</body>
</html>
