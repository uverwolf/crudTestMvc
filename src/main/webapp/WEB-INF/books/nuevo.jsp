<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!-- CSS only -->
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">

<!-- JS, Popper.js, and jQuery -->
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js" integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV" crossorigin="anonymous"></script>
<title>Insert title here</title>
</head>
<body>
<h1>New Book</h1>
<form:form action="/books" method="post" modelAttribute="book">
    <p>
        <form:label path="titulo">Titulo</form:label>
        <form:errors path="titulo"/>
        <form:input path="titulo"/>
    </p>
    <p>
        <form:label path="descripcion">Descipcion</form:label>
        <form:errors path="descripcion"/>
        <form:textarea path="descripcion"/>
    </p>
    <p>
        <form:label path="idioma">Idioma</form:label>
        <form:errors path="idioma"/>
        <form:input path="idioma"/>
    </p>
    <p>
        <form:label path="numeroDePaginas">Paginas</form:label>
        <form:errors path="numeroDePaginas"/>     
        <form:input type="number" path="numeroDePaginas"/>
    </p>    
    <input type="submit" value="Submit"/>
</form:form>  
</body>
</html>