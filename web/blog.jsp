<%
    if (session.getAttribute("logueado") != "OK"){
        response.sendRedirect("login.jsp");
    }
%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page import="com.emergentes.modelo.Post"%>
<%@page import="java.util.List"%>
<%
    List<Post> lista = (List<Post>) request.getAttribute("lista");
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h4 align = "right"><label style="color:black;"> ${sessionScope.usuario}</label>
        <a href="LoginControlador?action=logout" aling = "center">(-)SALIR(-)</a></h4>
        <h1 align = "center">BLOG DE SALUD</h1>
        <a href="PostControlador?op=nuevo">NUEVA ENTRADA</a>
        <c:forEach var="item" items="${lista}">
            <p>${item.fecha}</p>
            <b><p>${item.titulo}</p></b>
            <p>${item.contenido}</p>
            <p>${item.autor}
            <h4 align = "right">    <a href="PostControlador?op=editar&id=${item.id}">EDITAR</a>
                <a href="PostControlador?op=eliminar&id=${item.id}" onclick="return(confirm('esta seguro?'))">ELIMINAR</a></h4>
            </p>
            <hr>
        </c:forEach>
    </body>
</html>
