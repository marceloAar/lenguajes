<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>  
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Insert title here</title>
</head>
<body>

<a href="/languages">Dashboard</a>
<h1 style="color:blue">Idioma : <c:out value="${idioma.nombre}"/></h1><hr>
	
	<h3>Descripcion: <c:out value="${idioma.creator}"/></h3>
	<h3>Idioma: <c:out value="${idioma.currentVersion}"/></h3>
	
	<a href="/languages/edit/${idioma.id}">Editar</a><br><br>
	<a href="/languages">Eliminar</a>
	
</body>
</html>