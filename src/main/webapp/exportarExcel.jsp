<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    String tabla = request.getParameter("tabla");
%>
<!DOCTYPE htm>
<html>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css">
        <link href="css/exportarExcelCSS.css" rel="stylesheet" type="text/css"/>
        <title>Exportar Excel Completado</title>
    </head>
    <body>
        <div class="container py-4">
            <div class="modal fade" id="mi-modal" data-bs-backdrop="static">
                <div class="modal-dialog modal-dialog-centered">
                    <div class="modal-content">
                        <div class="modal-header d-flex justify-content-end align-items-center">
                            <a href="srvProducto?accion=Listar" class="containerX">
                                <button class="btn-close" data-bs-dismiss="modal" style="margin: 0;"></button>
                            </a>
                        </div>
                        <div class="d-flex justify-content-center align-items-center">
                            <i class="fa-solid fa-circle-check" id="iconoCompletado" style="color: #1bc073;"></i>
                        </div>
                        <div class="modal-body">
                            <p>¡Exportación a excel de los <%=tabla %> completado!</p>
                        </div>
                        <div class="modal-footer d-flex justify-content-center">
                            <a href="srvProducto?accion=Listar">
                                <button class="btn btn-dark btn-spacing">Volver</button>
                            </a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
        
        <script>
            // script para mostar el modal ni bien la pagina se carga
            document.addEventListener("DOMContentLoaded", function () {
                var myModal = new bootstrap.Modal(document.getElementById('mi-modal'), {});
                myModal.show();
            });
        </script>
    </body>
</html>
