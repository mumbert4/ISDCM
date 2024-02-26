<%-- 
    Document   : login
    Created on : 22 feb 2024, 15:55:06
    Author     : alumne
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="registroUsuario.css"/>
        <title>Login</title>
    </head>
    <body>
        <h1 class="title">Registro usuarios</h1>
        <div class="regForm">
            <form action="TestServlet" method="post">
                <ul class="regForm">
                    <li class = "regForm">
                        <span>Nombre:</span>
                        <input type="text" name="name">
                    </li>
                    <li>
                        <span>Apellidos:</span>
                        <input type="text" name="surname">
                    </li>
                    <li>
                        <span>Correo electrónico:</span>
                        <input type="email" name="email">
                    </li>
                    <li>
                        <span>Nombre usuario:</span>
                        <input type="text" name="userName">
                    </li>
                    <li>
                        <span>Contraseña:</span>
                        <input type="password" name="password1">
                    </li>
                    <li>
                        <span>Repetir contraseña:</span>
                        <input type="password" name="password2">
                    </li>
                </ul> 
                <input type="submit" value="Registrar usuario">
            </form>
        </div>
        <p>Ya estas registrado? <a href="login.jsp">Identificate</a></p>
    </body>
</html>
