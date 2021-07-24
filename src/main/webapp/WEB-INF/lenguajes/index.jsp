<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>  

<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Pagina de Lenguajes</title>
</head>
<body> 

<h1>Lista de Lenguajes</h1><hr>
<table border=1>
    <thead>
        <tr>
            <th>Nº</th>
            <th>Nombre</th>
            <th>Creador</th>
            <th>Version</th>
            <th>Accion</th>		         
        </tr>
        
    </thead>
    <tbody>
        <c:forEach items="${idiomas}" var="idioma">
        <tr>
            <td><c:out value="${idioma.id}"/></td>
            <td><a href="/languages/${idioma.id}"><c:out value="${idioma.nombre}"/></a></td>
            <td><c:out value="${idioma.creator}"/></td>
            <td><c:out value="${idioma.currentVersion}"/></td>          
         	<td><a href="/languages/delete/${idioma.id}"> Eliminar </a><a href="/languages/edit/${idioma.id}"> Editar </a></td>    
        </tr>
        </c:forEach>       
    </tbody>
</table><hr><br> 

<h1>Ingresar Nuevo Lenguaje</h1><hr>

<form:form action="/languages" method="POST" modelAttribute="idioma">
    
    <p>
        <form:label path="nombre">Lenguaje:</form:label>
        <form:errors path="nombre"/>
        <form:input type="text" path="nombre"/>
    </p>
    
    <p>
        <form:label path="creator">Creador:</form:label>
        <form:errors path="creator"/>
        <form:input type="text" path="creator"/>
    </p>
    <p>
        <form:label path="currentVersion">Version:</form:label>
        <form:errors path="currentVersion"/>
        <form:input type="text" path="currentVersion"/>
    </p>
    
    <input type="submit" value="Crear Nuevo"/>      
    
</form:form>   
 
</body>
</html>