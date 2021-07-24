<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page isErrorPage="true" %>    
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>   
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<a href="/languages/delete/${idioma.id}"> Eliminar </a><br><br>

<a href="/languages"> Dashboard </a>    
  
<h1>Editar Lenguaje</h1><hr>

<form:form action="/languages/edit/${idioma.id}" method="post" modelAttribute="idioma">
    <input type="hidden" name="_method" value="put">
    <p>
        <form:label path="nombre">Lenguaje: </form:label>
        <form:errors path="nombre"/>
        <form:input path="nombre"/>
    </p>
    <p>
        <form:label path="creator">Creador: </form:label>
        <form:errors path="creator"/>
        <form:input path="creator"/>
    </p>
    <p>
        <form:label path="currentVersion">Version: </form:label>
        <form:errors path="currentVersion"/>
        <form:input path="currentVersion"/>
    </p>
      
    <input type="submit" value="Guardar"/>
</form:form>

</body>
</html>