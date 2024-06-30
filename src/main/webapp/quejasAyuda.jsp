<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="Modelo.Usuario"%>
<%@page import="Modelo.Cliente"%>
<%@page import="DAO.*" %>
<%@page import="java.util.*" %>
<%
    // Obtener el valor del rol desde el alcance de sesión
    Usuario usuario = (Usuario) session.getAttribute("usuario");
    String rol = usuario.getRol();

%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <link href="css/navegadorCSS.css" rel="stylesheet" type="text/css"/>
        <link href="css/informeCSS.css" rel="stylesheet" type="text/css"/>
        <title>Futbol Retro - informes</title>


    </head>
    <body>
        <div class="container-fuera">
            <div class="container-dentro">

                <!-- Esto es el encabezado (navegador y el boton salir) -->
                <div class="navegador">
                    <%                        if (rol.equals("administrador")) {
                    %>
                    <!-- Esto es el menu de administrador -->
                    <%@ include file="navegador/menuAdmin.jsp" %>
                    <!-- -->
                    <%
                    } else {
                    %>
                    <!-- Esto es el menu de empleado -->
                    <%@ include file="navegador/menuEmpleado.jsp" %>
                    <!-- -->
                    <%
                        }
                    %>

                    <div class="exit">
                        <a href="login.jsp">
                            <i class="fa-solid fa-arrow-right-from-bracket fa-flip-horizontal"></i>
                            <p>SALIR</p>
                        </a>
                    </div>
                </div>
                <!-- -->


                <!-- Aqui irán las diferentes ventanas (solo es copiar el mismo formato, crear un jsp con nombre "Productos" y aqui empezar a programar-->
                <!-- Aca puedes cambiar el nombre del class y hacer un css nuevo para este div que sera la ventana productos -->
                <div class="info">





                    <style>
                        body {
                            background-color: #222;
                            color: #ccc;
                            font-family: 'Arial', sans-serif;
                            margin: 0;
                            padding: 0;
                        }
                        .container {
                            width: 80%;
                            max-width: 800px;
                            margin: 50px auto;
                            padding: 20px;
                            background-color: #333;
                            border-radius: 10px;
                            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.4);
                        }
                        h1 {
                            font-size: 28px;
                            margin-bottom: 20px;
                            color: #e74c3c;
                        }
                        p {
                            font-size: 16px;
                            margin-bottom: 10px;
                        }
                        textarea {
                            width: 100%;
                            height: 150px;
                            padding: 10px;
                            margin-bottom: 20px;
                            border: 1px solid #555;
                            border-radius: 8px;
                            resize: vertical;
                            font-size: 14px;
                            background-color: #444;
                            color: #ccc;
                        }
                        button {
                            padding: 12px 24px;
                            border: none;
                            border-radius: 8px;
                            background-color: #2980b9;
                            color: #fff;
                            font-size: 16px;
                            cursor: pointer;
                            transition: background-color 0.3s ease;
                        }
                        button:hover {
                            background-color: #2471a3;
                        }
                        .support {
                            margin-top: 30px;
                            padding: 20px;
                            background-color: #555;
                            border-radius: 10px;
                            text-align: center;
                            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.3);
                        }
                        .support h2 {
                            color: #27ae60;
                        }
                        .support a {
                            color: #e74c3c;
                            text-decoration: none;
                            font-weight: bold;
                        }
                        .support a:hover {
                            text-decoration: underline;
                        }
                    </style>


                    <body>
                        <div class="container">
                            <h1>Quejas y Ayuda</h1>
                            <p>Escribe tu queja o solicitud de ayuda:</p>
                            <form action="srvInforme" method="post">
                                <input type="hidden" name="accion" value="agregar">
                                <textarea name="descripcion" placeholder="Escribe aquí..."></textarea>
                                <button type="submit">Enviar</button>
                            </form>
                        </div>
                        <div class="support container">
                            <h2>Soporte Técnico</h2>
                            <p>Si encuentras algún problema o tienes alguna duda, por favor contacta al soporte técnico enviando un correo a <a href="mailto:soporte@futbolretro.com">soporte@futbolretro.com</a>.</p>
                        </div>
                    </body>



                </div>
            </div>
        </div>
    </body>
</html>