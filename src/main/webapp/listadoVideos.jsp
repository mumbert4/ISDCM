<%-- 
    Document   : listadoVideos
    Created on : 7 mar 2024, 14:53:59
    Author     : alumne
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Home</title>
        <link rel="stylesheet" href="listadoVideos.css">
    </head>
    <body>

        <div class="welcome-message">
            <h2>Bienvenido, <%= session.getAttribute("username") %>!</h2>
            <p>¡Has iniciado sesión con éxito!</p>

        </div>
        <button id="btnAddVideo" class="add-button">Añadir nuevo video</button>

        <h2>Listado de Videos</h2>
        <table>
            <thead>
                <tr>
                    <th>Título</th>
                    <th>Autor</th>
                    <th>Fecha</th>
                    <th>Duración</th>
                    <th>Reproducciones</th>
                    <th>Descripción</th>
                </tr>
            </thead>
            <tbody>

            </tbody>
         </table>
    </body>
</html>
