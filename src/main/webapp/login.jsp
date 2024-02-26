<%-- 
    Document   : login
    Created on : 26 feb 2024, 14:18:34
    Author     : alumne
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Login</h1>
        
        <div>
            <li>
                <span>Nombre de usuario:</span>
                <input type="text">
            </li>
            <li>
                <span>Contraseña:</span>
                <input type="password">
            </li>
            
            <input type="submit" value="Acceder">
        </div>
        <p>Aun no tienes cuenta? <a href="registroUsuario.jsp">Registrarse ahora</a></p>
    </body>
</html>
