<%-- 
    Document   : reproduccion
    Created on : 4 abr 2024, 10:55:02
    Author     : alumne
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Search Videos</title>
        <link rel="stylesheet" href="reproduccion.css">
        <link href="https://vjs.zencdn.net/8.10.0/video-js.css" rel="stylesheet" />
    </head>
<body>

    <h1>Reproducción de Video</h1>
    <%-- Obtener el ID del video de los parámetros de la URL --%>
    <% Video video = (Video)request.getParameter("video"); 
    %>
    <video id="my-video" class="video-js" controls preload="auto" width="640" height="360">
        <source src="<%= video.getUrl() %>" type="video/mp4">
        <!-- Otros formatos de video aquí -->
    </video>
    <script>
        // Inicializar el reproductor de video
        var player = videojs('my-video', {
            fluid: true // Hacer que el reproductor sea responsive
        });
    </script>

    <script src="https://vjs.zencdn.net/8.10.0/video.min.js"></script>
</body>