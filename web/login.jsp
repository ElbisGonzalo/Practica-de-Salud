<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <style type="text/css">
        body {text-align: center}
    </style>
    <body>
        <h1 align="center">LOGIN</h1>
        <form action ="LoginControlador" method="post">
            <label>USUARIO:  </label>
            <input type="text" name="usuario">
            <br><br>
            <label>PASSWORD: </label>
            <input type="password" name="password">
            <br><br>
            <input type="submit" value="Ingresar">
        </form>
    </body>
</html>