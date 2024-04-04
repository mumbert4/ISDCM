<%-- 
    Document   : listadoVideos
    Created on : 7 mar 2024, 14:53:59
    Author     : alumne
--%>
<%@page import="model.Video"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <button id="logoutButton">Logout</button>
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
        <a href="subirVideo.jsp" class="add-button">Añadir nuevo video</a>

        <h2>Listado de Videos</h2>
        <a href="busqueda.jsp"> Buscar Videos </a>
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
                <%
                    ArrayList videosArray = (ArrayList) session.getAttribute("userVideos");

                    for (int i = 0; i < videosArray.size(); ++i){
                        Video video = (Video) videosArray.get(i);
                        out.println("<tr>");
                        out.println("<td>" + video.getTitulo() + "</td>"); 
                        out.println("<td>" + video.getAutor()+ "</td>"); 
                        out.println("<td>" + video.getFecha()+ "</td>"); 
                        out.println("<td>" + video.getDuracion()+ "</td>"); 
                        out.println("<td>" + video.getReproducciones()+ "</td>"); 
                        out.println("<td>" + video.getDescripcion()+ "</td>"); 
                        out.println("</tr>");
                    }                                    
                %>
            </tbody>
         </table>
    <script>
        document.getElementById("logoutButton").addEventListener("click", function(){
            var xhr = new XMLHttpRequest();
            var url = 'UserServlet?param1=' + encodeURIComponent("logout")
            xhr.open("GET",url, true);
            xhr.send();
            console.log();
            xhr.onload =  function() {if (xhr.status === 200){
                window.location.href = "login.jsp";
        }};
        });
    
    </script>
    </body>
</html>
