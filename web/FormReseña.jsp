<%-- 
    Document   : FormReseña
    Created on : 19 sept 2024, 11:07:10 a.m.
    Author     : user
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" type="text/css" href="css/styles.css">
    </head>
    <body>
        <header>    
            <div class="menu">
                <div class="imagen">
                    <img src="ruta-del-logo.png" alt="Logo">
                </div>
                <div class="itemmenu">
                    <a href="Inicio.jsp">Inicio</a>
                    <a href="#">Sobre nosotros</a>
                    <a href="FormCliente.jsp">Agregar Cliente</a>
                    <a href="FormReseña.jsp">Realizar reseña</a>
                </div>
            </div>
        </header>
        <main>
            <div class="container">
                <section class="formcliente">
                    <div>
                        <form action="Demo" method="POST">
                            <input type="hidden" name="formulario" value="reseña">
                            <h2>Ingresar Reseña</h2>
                            <p> Llenar formulario</p>
                            <label>codigo cliente:</label>
                            <input type="text" name="codigocliente" placeholder="Ingrese codigo " required> <br>
                            <label>Descripcion: </label>
                            <textarea  name="descripcion" rows="10" cols="50"></textarea> <br>
                            <label>codigo Servicio:</label>
                            <input type="text" name="codigoservicio" placeholder="Ingrese codigo el servicio " required> <br>
                            <input type="submit" value="Guardar"> 
                        </form>
                    </div>
                </section>
            </div>
        </main>
    </body>
</html>
