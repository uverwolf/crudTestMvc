<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!-- CSS only -->
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">
<link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/v/bs4/dt-1.10.21/datatables.min.css"/>
<!-- JS, Popper.js, and jQuery -->
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js" integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV" crossorigin="anonymous"></script>
<script type="text/javascript" src="https://code.jquery.com/jquery-3.5.1.js"></script>
 <script type="text/javascript" src="https://cdn.datatables.net/1.10.21/js/jquery.dataTables.min.js"></script>
<script type="text/javascript" src="https://cdn.datatables.net/v/bs4/dt-1.10.21/datatables.min.js"></script>


<script>
$(document).ready(function() {
    $('#tabla').DataTable( {
        "language": {
            "url": "//cdn.datatables.net/plug-ins/9dcbecd42ad/i18n/Spanish.json"
        }
    } );
} );
</script>
	<title>Libros</title>
</head>
<body>
<h1 class="text-center">Libros guardados</h1>
<div class="container col-10">
<div class="col-12">
<table id="tabla" class="cell-border">
    <thead>
        <tr>
            <th>Titulo</th>
            <th>Descipcion</th>
            <th>Idioma</th>
            <th>Numero paginas</th>
            <th></th>
            <th></th>
        </tr>
    </thead>
    <tbody>
        <c:forEach items="${libros}" var="libros">
        <tr class="">
            <td><c:out value="${libros.titulo}"/></td>
            <td><c:out value="${libros.descripcion}"/></td>
            <td><c:out value="${libros.idioma}"/></td>
            <td><c:out value="${libros.numeroDePaginas}"/></td>
            <td><a class="btn btn-success btn-sm" href="/books/<c:out value='${libros.id}'/>">Datos </a></td>
            <td><a class="btn btn-danger btn-sm" href="/books/<c:out value='${libros.id}'/>">Eliminar </a></td>
            
        </tr>
        </c:forEach>
    </tbody>
</table>
<a class="btn btn-success" href="/books/new">Nuevo libro</a>
</div>

</div>

</body>
</html>